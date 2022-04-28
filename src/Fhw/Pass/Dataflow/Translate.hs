{-  
Module : Fhw.Pass.Dataflow.Translate
Description : Translate a restricted form of Core into a Dataflow network.

This pass translates our IR into a Dataflow representation. The result
can either be simulated for design space exploration or translated
to SystemVerilog for prototyping.

We assume that the input program satisfies the following properties:
  --Only tail-recursive functions
  --Memory operations are explicit in the code
  --No higher-order functions
  --All constants have been abstracted to Go-triggered functions
  --All global definitions are functions i.e. global variables have
    been pushed into let definitions within the function where they're used
  --All function arguments, data constructor arguments, and case scrutinees
    are simple variable expressions i.e. complex subexpressions have been
    lifted and named with local let declarations.
  --Case expressions only pattern match on data constructors

-}

module Fhw.Pass.Dataflow.Translate ( toDataflow ) where

import Fhw.Core.Core
import Fhw.Pass.Dataflow.NodeTypes
import Fhw.Pass.Dataflow.Preprocess
--import Fhw.Pass.Dataflow.Heuristic (showThem)
import Fhw.Pass.RemoveRecursion.Utils
import Data.List
import Data.Char (isSpace)
import Data.Maybe
import qualified Data.Text as T (pack,unpack,splitOn)
import Data.Graph (flattenSCC,stronglyConnComp)
import Text.Read (readMaybe)
import qualified Data.Map.Lazy as Map
import Control.Monad.State
import Control.Applicative

import Debug.Trace
import Data.Foldable (foldrM)

data NodeEnv = NodeEnv { toTrans     :: [Vdef]
                       , nodeEnv     :: Map.Map Var Node
                       , curFunc     :: Var
                       , strictPref  :: String
                       , internalStrict :: Bool
                       , bufferFuncs :: Bool
                       , inLet       :: Bool
                       , mutRecFuncs :: [[Var]]
                       , paramsMap   :: Map.Map Var [Var]
                       , compilerInfo :: Analysis }
type NodeState = State NodeEnv
type Channel = Maybe String

-- | Insert a node into our environment, 
-- keyed with a variable name.
putNode :: Var -> Node -> NodeState ()
putNode dOut node = do
  s <- get
  let newMap = Map.insert dOut node $ nodeEnv s
  put $ s {nodeEnv = newMap}

-- | Map a function name to its lambda bindings, as these are 
-- the names used for the function's MergeChoice and Mux nodes
addParams :: Var -> [Var] -> NodeState ()
addParams name params = do
  s <- get
  let newMap = Map.insert name params $ paramsMap s
  put $ s {paramsMap = newMap}

findNode :: Var -> NodeState (Maybe Node)
findNode func = gets (Map.lookup func . nodeEnv)

removeDef :: Vdef -> NodeEnv -> NodeEnv
removeDef vdef env = env {toTrans = filter (/=vdef) $ toTrans env}

setScope :: Var -> NodeEnv -> NodeEnv
setScope funcName env = env { curFunc = funcName }

toDataflow :: String -> Bool -> Analysis -> Module -> (Dataflow, Analysis)
toDataflow strictStr bufferFuncsOption analysis (Module _ tdefs vdefs) =
  
  -- check fails atm if the scrutinee is unused
  
  case verify dataflow of
    Left err -> error $ preoptError err
    Right _ -> 
      case verify optDataflow of
                Left err -> error $ postoptError err
                Right _ -> 
                  (optDataflow, verifyA finalAnalysis optDataflow)
  where
    vds = preprocess vdefs tdefs --remove default alternatives and cases scrutinizing integers
    preoptError e = "Pre-optimization error: " ++ e ++ show mainNodes
    postoptError e = "Post-optimization error: " ++ e ++ show optDataflow
    dataflow    = Dataflow newTdefs mainNodes
    optDataflow = Dataflow newOptTdefs $
                           sort   --Purely for human-readability
                           optNodes

    (optNodes, finalAnalysis) = optimize mainNodes modifiedAnalysis

    newOptTdefs = choiceDefs optNodes ++ baseTdefs --choice Tydefs after optimization
    newTdefs    = choiceDefs mainNodes ++ baseTdefs --original choice Tydefs
    baseTdefs = baseTdefs'' ++ map actualPntr pntrDefs
    (pntrDefs,baseTdefs'') = partition ((`elem` pntrTys) . getTyCon) baseTdefs'
    baseTdefs' = tupDefs ++ map tTdefs tdefs
    pntrTys = findMemTys mainNodes

    -- TODO: Assuming a pointer size of 32 bits for all types. 
    ptrTy :: Type
    ptrTy = Int' ptrSize
    ptrSize :: Int
    ptrSize = 32
    -- Convert an abstract pointer type to a numeric representation.
    actualPntr (Tydef tc [Codef dc _]) = Tydef tc [Codef dc [ptrTy]]
    actualPntr _ = error "Unexpected form for a pointer type"

    -- | Collect all abstract pointer types
    findMemTys :: [Node] -> [Tcon]
    findMemTys = nub . mapMaybe getTys
      where
        --All memory-related types should be captured by Read and Write
        --nodes.
        getTys (Node _ (Func (Read (Tycon ptr) _))  _) = Just ptr
        getTys (Node _ (Func (Write _ (Tycon ptr))) _) = Just ptr
        getTys _                                       = Nothing

    -- Map each function to its callers and note how many times it's
    -- called by each
    countedCalls = Map.map countCalls callG
    callG = foldr makeCallGraph (Map.singleton "main" []) vds

    countCalls [] = []
    countCalls calls = let sorted = sort calls
                       in count (head sorted,1::Int) (tail sorted)
      where
        count el [] = [el]
        count (val,num) (next:rest) = if val == next
                                        then count (val,num+1) rest
                                        else (val,num) : count (next,1) rest

    -- The choice types used to pass choices made from MergeChoice nodes
    -- to Muxes and Demuxes
    choiceDefs = map mkChoiceDef . getChoices
      where
        mkChoiceDef chTy = let mbchNum = (readMaybe $ tail chTy) :: Maybe Int
                               chNum = fromMaybe chErr mbchNum
                               chErr = error "Problem in choiceDefs"
                           in Tydef chTy $
                              map (flip Codef []) $
                              mkNameSet chNum ((++('_':show chNum)) . ('C':))
    --choice types known to MergeChoices
    getChoices = nub . mapMaybe getChoiceType
      where
        getChoiceType (Node _ (MergeChoice (Tycon chTy) _) _) = Just chTy
        getChoiceType _ = Nothing

    -- The Tup* types used for imposing strictness on function calls
    tupDefs = foldr getTupDefs [] mainNodes
    getTupDefs :: Node -> [Tydef] -> [Tydef]
    getTupDefs (Node _ (Func (Dcons dcon)) _) defs
      | strictPrefix `isPrefixOf` dcon &&
        not (hasTupDef dcon defs) = Tydef dcon [Codef dcon tys] : defs
      | otherwise = defs
      where
        hasTupDef dc = any ((==dc) . getTydefName)
        getTydefName (Tydef n _) = n
        tys = map (Tycon . T.unpack) $ T.splitOn (T.pack "___")
              $ T.pack $ drop (length strictPrefix) dcon
    getTupDefs _ defs = defs

    --Convert type definitions from Core style to Dataflow style
    tTdefs (Data (_,tc) _ cdefs) = Tydef tc (map tCdefs cdefs)
    tCdefs (Constr (_,dc) _ tys) = Codef dc (map tTy tys)

    mainNodes   = map snd $ Map.toList $ nodeEnv mainNodeMap
    modifiedAnalysis = compilerInfo mainNodeMap
    mainNodeMap = execState (genMain mainFunc) initEnv
    initEnv     = NodeEnv { toTrans = filter ((/="main") . vdefName) vds
                          , nodeEnv = Map.empty
                          , curFunc = "main"
                          , strictPref  = strictPrefix
                          , internalStrict = "strict" `isPrefixOf` strictStr
                          , bufferFuncs = bufferFuncsOption
                          , inLet = False
                          , mutRecFuncs = makeClusters
                          , paramsMap = Map.empty
                          , compilerInfo = analysis }
    mainFunc    = fromMaybe mainError $
                  find ((=="main") . vdefName) vds
    mainError   = error "No main function defined"

    -- If strictness is requested, generated an unused prefix for the Tuple
    -- types we'll use to collect functiona arguments
    strictPrefix = makeStrictName "Tup"
    makeStrictName prefix = if any ((prefix `isPrefixOf`) . tdefName) tdefs
                              then makeStrictName (prefix ++ "_")
                              else prefix

    -- | Collect mutually recursive clusters (tail-recursive functions
    -- are clusters of size 1)
    makeClusters =
      let assocList = map makeInput $ Map.toList countedCalls
          makeInput (var,varcounts) = (var,var,map fst varcounts)
          allClusts = map flattenSCC $ stronglyConnComp assocList
          (singles,multi) = partition ((==1) . length) allClusts
          recFuncs = filter (isRec vds) singles
      in multi ++ recFuncs

    -- Check if a function is tail-recursive
    isRec vdes [name]
      | '#' == last name = False --Prim functions aren't defined
      | otherwise = (==TailRecursive) $ exprRecursiveness name $ getExp
                    $ fromMaybe (funcErr name)
                    $ find ((==name) . vdefName) vdes
    isRec _ _ = error "isRec"
    funcErr n = error $ "No top-level function found with name " ++ n
    getExp (Vdef _ _ ex) = ex


-- | Build a graph mapping each function to its call sites
makeCallGraph :: Vdef -> Map.Map Var [Var] -> Map.Map Var [Var]
makeCallGraph (Vdef (_,name) _ ex) = descend ex
  where
   descend e m = case e of
    Lam _ e1        -> descend e1 m
    Let vdefs e1    -> let newM = foldr goVdef m vdefs
                       in descend e1 newM
    Case _ _ _ alts -> foldr goAlt m alts
    _               -> case collectArgs e of
                        (Var (_,n) _, _ : _ , _) -> Map.insertWith (++) n [name] m
                        _ -> m

   goAlt alt m = case alt of
    Acon _ _ _ e -> descend e m
    Alit _ e     -> descend e m
    Adefault e   -> descend e m

   goVdef (Vdef _ _ e) = descend e


renameMain :: Exp -> Map.Map Var Var -> Exp
renameMain ex renameMap = trace ("Renamed") (case ex of
  Var (mname, name) ty -> let newName = Map.findWithDefault name name renameMap in
                          Var (mname, newName) ty
  App e1 e2 -> let newE1 = renameMain e1 renameMap
                   newE2 = renameMain e2 renameMap in
                     App newE1 newE2
  Lam binds ex' -> Lam binds (renameMain ex' renameMap)
  Let vdefs ex' -> Let (map (\x@(Vdef name ty ex'') -> Vdef name ty (renameMain ex'' renameMap)) vdefs) (renameMain ex' renameMap)
  Case ex' vbind ty alts -> let newAlts = map (\a -> case a of
                                                (Acon dcon tbinds vbinds ex'') -> Acon dcon tbinds vbinds (renameMain ex'' renameMap)
                                                (Alit lit ex'') -> Alit lit (renameMain ex'' renameMap)
                                                (Adefault ex'') -> Adefault (renameMain ex'' renameMap)) alts in
                            Case (renameMain ex' renameMap) vbind ty newAlts
  Appt ex' ty -> error "Unexpected type app"
  x -> x)
-- | Generate the nodes that execute the program
genMain :: Vdef -> NodeState ()
genMain (Vdef _ ty ex) = trace ("GenMain") 
                        (do putNode sourceVar source
                            result <- case ex of
                              (Lam binds ex') -> do 
                                renameMap <- foldrM (\(num, x@(Vb (name, ty'))) acc -> do
                                  let newName = name ++ "_" ++ (show num)
                                  putNode (name ++ "_main") (Node [] (Source (tTy ty')) [newName])
                                  addFork newName newName (tTy ty')
                                  return $ Map.insert name newName acc

                                  ) (Map.empty) (zip [0 .. ] binds)
                                let newEx = trace ("Renaming") renameMain ex' renameMap 
                                tExpr (newEx)
                              _ -> tExpr ex
                            trace ("Done") putNode "sink" $ sink result)
  where
    --Each program has a single source generating a Go token
    source = Node [] (Source (Tycon "Go")) ["sourceGo"]
    sink r = Node [err r] (Sink (tTy resTy)) []
    types@(resTy, _) = collectArgTypes ty
    err = fromMaybe $ error "Need final result"

-- | Translate an expression into a collection of nodes,
-- returning the name of the expression's 
-- output channel.
tExpr :: Exp -> NodeState Channel
tExpr (Let vdefs ex) = do s <- get
                          let wasInLet = inLet s
                          put (s { inLet = True })
                          mapM_ tLocal vdefs
                          s' <- get
                          put (s' {inLet = wasInLet})
                          tExpr ex
tExpr ex = case call of
  Var  (_,"+#") _  -> Just <$> addPrimFunc (Add 32) args
  Var  (_,"-#") _  -> Just <$> addPrimFunc (Sub 32) args
  Var  (_,"*#") _  -> Just <$> addPrimFunc (Mul 32) args
  Var  (_,"xor#") _  -> Just <$> addPrimFunc (Xor 32) args
  Var  (_,"quotInt#") _ -> Just <$> addPrimFunc (Div 32) args
  Var  (_,"remInt#") _ -> Just <$> addPrimFunc  (Mod 32) args
  Var  (_,"==#") _ -> Just <$> addPrimFunc Eq args
  Var  (_,">#") _  -> Just <$> addPrimFunc Gt args
  Var  (_,"<#") _  -> Just <$> addPrimFunc Lt args
  Var  (_,"<=#") _ -> Just <$> addPrimFunc Lteq args
  Var  (_,">=#") _ -> Just <$> addPrimFunc Gteq args
  Var  (_,"&&#") _ -> Just <$> addPrimFunc And args
  Var  (_,"and#") _ -> Just <$> addPrimFunc And args
  Var  (_,"||#") _ -> Just <$> addPrimFunc Or args
  Var  (_,"or#") _ -> Just <$> addPrimFunc Or args
  Var  (_,"!#") _  -> Just <$> addPrimFunc Not args
  Var  (_,"int2Word#") _ -> Just <$> addPrimFunc (Cast 32 32) args
  Var  (_,"word2Int#") _ -> Just <$> addPrimFunc (Cast 32 32) args
  Var  (_,name) _  -> if not $ null args
                      then addFuncCall name args
                      else Just <$> getNextOChannel call
  Dcon (_,name) _ -> if not (null args)
                      then Just <$> addDcon name args
                      else error "No arguments for dcon"
  Case scrut _ ty alts -> translateCase scrut alts ty
  e                    -> errorM ("Unexpected expression" ++ show e)
  where
    (call,args,_) = collectArgs ex

-- | Translate a local variable definition 
tLocal :: Vdef -> NodeState ()
tLocal (Vdef (_,name) ty ex) = do
  result <- if tTy ty == Tycon "Go"
              then return "sourceGo" --special-case main's Go definition
              else err <$> tExpr ex
  addFork result name (tTy ty)
  where
    err = fromMaybe $ error "Expect output in tLocal"

-- | Translate a Core type constructor into a Dataflow one
tTy :: Ty -> Type
tTy (Tcon (_,"Int#")) = Int' 32 --Representing Int# as 32-bits
tTy (Tcon (_,tcon)) = Tycon tcon
tTy t = error $ "Unexpected type: " ++ show t ++ " in tTy"

-- | Handle a new call to a function, generating the function
-- or multi-call infrastructure if they don't exist. Return
-- the name of the channel that will carry the result token
-- for this call.
addFuncCall :: Var -> [Exp] -> NodeState Channel
addFuncCall name args = do
  funcDef <- gets (find ((==name) . vdefName) . toTrans)
  shouldBuffer <- gets bufferFuncs
  inputs <- mapM (getNextOChannelBuffered shouldBuffer) args --get input channels
  clusters <- gets mutRecFuncs
  thisFunc <- gets curFunc
  case funcDef of
    --Constant expression
    Just (Vdef _ _ (Lam _ (Lit (Literal (Lint num) _)))) ->
      fmap Just $ addIConst (head inputs) $ fromInteger num
    --First time encountering a function
    Just (Vdef _ ty (Lam (param1:params) ex)) -> do
      let (retTy,_) = collectArgTypes ty
          allParams = param1:params
      maybeMem <- addMemop shouldBuffer name ty (head inputs)
      if isJust maybeMem
        then return maybeMem
        else do
          --Remove vdef from state
          modify (removeDef (fromJust funcDef))
          --Remember if we were in a let
          wasInLet <- gets inLet
          s <- get
          put (s {inLet = False})
          --Store the lambda bindings so we can pass other calls later
          addParams name $ map getVbName allParams
          let --Are we calling a member of a cluster?
              clustCall = any (elem name) clusters
              -- check if we're externally calling a cluster
              newClustCall = any (\clust -> name `elem` clust &&
                                   thisFunc `notElem` clust) clusters
          --Generate nodes that siphon arguments from calls into
          --this function's subnetwork, returning the final input channels
          --and the selection channel that will feed into this function's
          --final demux.
          (finalInputs,mergeSel) <- handleArgs inputs allParams
          --Impose "complete" strictness if requested (i.e. make both
          --tail-recursive calls and calls to non-recursive functions
          --strict).
          needsInternal <- gets internalStrict
          () <- if needsInternal && not (null params)
                then addStrictNodeAndCase name finalInputs allParams
                else zipWithM_ makeFork finalInputs allParams
          modify (setScope name)          --diving into new function
          result <- tExpr ex              --Generate the function's body
          modify (setScope thisFunc)      --Leaving this function's scope
          s' <- get
          put (s' {inLet = wasInLet})
          --Return result, potentially after generating output and unlocking
          --subnetworks.
          if clustCall && not newClustCall
            then return result
            else do outChan <- if not newClustCall
                               then return $ err result
                               else outputAndUnlock name finalInputs retTy result
                    Just <$> addDemuxBuffered (not newClustCall) outChan
                             mergeSel name oneChoiceDcon (tTy retTy)
    --Adding calls to an existing function
    Nothing -> anotherCall shouldBuffer inputs name
    v -> error $ "Top level vdef that's not a function" ++ show v
  where
    --Given the function's name, the input channels into it, and its lambda bindings,
    --generate nodes to arbitrate between callers and siphon arguments into function. 
    --There are 3 cases to consider:
    --  (1) Calling a non-clustered function: Create a "strictness" layer of
    --  nodes.
    --  (2) Calling a clustered function in the same cluster: Create one layer
    --  of non-strict, non-locked merge/mux nodes.
    --  (3) Calling a clustered function from a different cluster: Create 3
    --  layers of nodes. The first is a "strictness" layer, the second is a
    --  "lock" layer, and the third is a layer of merge/mux nodes.
    -- TODO: Cleanup, document the new helper functions, and investigate
    -- generated networks to see why exeuction would be so much slower with
    -- these changes (maybe use a second terminal to ssh into columbia, revert
    -- to non-strict version, and compare/contrast simple network topologies and
    -- performance)
    handleArgs inputs allParams = do
      clusters <- gets mutRecFuncs
      thisFunc <- gets curFunc
      if any (\clust -> name `elem` clust && thisFunc `notElem` clust) clusters
        --Calling a different clustered function
        then do (funcIns, mergeSel) <- makeStrictLayer
                lockedIns <- makeLockLayer funcIns
                finalIns <- makePipelineLayer lockedIns
                return (finalIns, mergeSel)
        else if not (any (elem name) clusters)
             --Calling a non-clustered function 
             then makeStrictLayer
             --Calling a clustered function from within the same cluster
             else do finalIns <- makePipelineLayer inputs
                     --We already hooked up a mergeChoice's select channel to a
                     --demux, all outside of the cluster, so we don't have a new
                     --select channel to return. 
                     return (finalIns, "")
      where
        makeStrictLayer = do
          --Generate a tuple dcon to wait for all inputs
          strictPrefix <- gets strictPref
          let tupdcon = strictPrefix ++ intercalate "___" tys
              strictName = name ++ tupdcon
              tupleOut = strictName ++ "_1"
          putNode tupleOut $ Node inputs (Func (Dcons tupdcon)) [tupleOut]
          --Generate a mergeChoice to arbitrate between tupled inputs
          (dOut, mergeSel) <- addMergeChoice tupleOut (Vb (name, Tcon (Nothing,tupdcon)))
          --Generate a destruct to disassemble the selected tuple
          let mangleVb (Vb (n,_)) = strictName ++ n
              mangleVb _          = error "mangleVb"
              destructOuts = map mangleVb allParams
              destructName = strictName ++"_destruct"
          putNode destructName $ Node [dOut] (Destruct (tupdcon,fields)) destructOuts
          --Generate forks for each input to the function
          zipWithM_ makeFork destructOuts allParams
          return (destructOuts, mergeSel)
          where
            fields = [0..(length inputs - 1)]
            tys = map getParamTys allParams
            getParamTys (Vb (_,t)) = case tTy t of
                                      Int' _ -> "Int#"
                                      Tycon tt -> tt
            getParamTys _ = error "getParamTys"

        -- | Generate a layer of go-triggered muxes. 
        makeLockLayer inputChannels = addGoMuxes name argTypes inputChannels
          where
            argTypes = map getTy allParams
              where
                getTy (Vb (_,t)) = t
                getTy _ = error "Type binding in getTy"

        -- | Generate a layer of merge/muxes below that to provide the final
        -- inputs to a recursive function in a new cluster. Return the set of
        -- outputs from the last layer of merge/muxes.
        makePipelineLayer inputChannels = do
          --Generate "internal" merge and mux nodes
          if not (null $ tail allParams)
            then makeMergeAndMux inputChannels
            else (:[]) <$> addMerge (head inputChannels) (head lockBinds)
          where
           lockBinds = map addGoMuxSuf allParams
            where
             addGoMuxSuf (Vb (n,t)) = Vb (n++"_goMux",t)
             addGoMuxSuf _ = error "Type binding in addGoMuxSuf"
           -- Generate MergeChoice and Muxes that feed recursive 
           -- calls and calls from the "go-muxes" into the 
           -- function body.
           makeMergeAndMux (extDout:extMuxes)= do
             (mergeOut,mSel) <- addMergeChoice extDout (head lockBinds)
             addFork mSel mSel oneChoiceTy
             mOuts <- zipWithM (addFuncMux mSel) extMuxes (tail lockBinds)
             return $  mergeOut : mOuts
           makeMergeAndMux [] = error "No inputs for makeMergeAndMux"


    err = fromMaybe (error "Expected output from function")

    getVbName (Vb (n,_)) = n
    getVbName _ = "Lambda should not have type bindings"

    -- | Don't traverse read and write functions.
    -- Buffer added after every read and write node; absence was causing
    -- deadlocks in, e.g., the List2, EmptyList3 examples -SAE
    addMemop shouldBuffer n t arg
      | not (isWrite || isRead) = return Nothing
      | otherwise = do channel <- (if isWrite then addWrite else addRead) arg t
                       updateAccess
                       if shouldBuffer
                          then do channel' <- addBuffer channel retTy
                                  return $ Just channel'
                          else return $ Just channel
      where
        (retTy,argTys) = collectArgTypes t
        isRead  = isMemOp "read"  (getTycon $ head argTys) (getTycon retTy)
        isWrite = isMemOp "write" (getTycon retTy) (getTycon $ head argTys)
        isMemOp memop ptrTy dataTy = length argTys == 1 &&
                                     "Pointer" `isPrefixOf` ptrTy &&
                                     dataTy    `isSuffixOf` ptrTy &&
                                     memop     `isPrefixOf` n

        getTycon (Tcon (_,tcon)) = tcon
        getTycon _ = error "Unexpected type in getFuncBod"

        --Modify a name in our writeSites or readSites list for profiling 
        --(instead of the call's name, we're using the input channel name
        --to the node) 
        updateAccess = do
          s <- get
          let analysis = compilerInfo s
              calls = (if isWrite then writeSites else readSites) analysis
              newCalls = case lookup n calls of
                Nothing -> calls
                Just num -> let tempList = delete (n, num) calls
                            in (arg, num) : tempList
          put (s { compilerInfo = if isWrite
                    then analysis { writeSites = newCalls }
                    else analysis { readSites = newCalls } })

-- | Create the unlocking mechanisms for a new cluster of recursive functions.
-- The output of the cluster is forked to both a demux (to provide results to 
-- callers) and the unlocking subnetwork to allow another caller to use 
-- the cluster. This functin returns the channel that will feed into the demux.
outputAndUnlock :: Var -> [Var] -> Ty -> Channel -> NodeState String
outputAndUnlock name funcIns retTy result = do
  let addUnlockChannel (outputSrc,outTy) = do
        unlock <- getNextOChannel outputSrc
        putNode goConstName (Node [unlock] (ToGo outTy) [goConstName])
        putNode initBufiName (Node [goConstName] (RBuf $ Tycon "Go") [initBufiName])
        putNode initBufName (Node [initBufiName] (InitBuf "Go") [initBufName])
        putNode unlockForkName (Node [initBufName]
                                     (Fork (length funcIns) (Tycon "Go"))
                                     forkOuts)
        zipWithM_ addSelChan goMuxNames forkOuts
        where
          goConstName = name ++ "_goConst"
          initBufiName = name ++ "_initBufi"
          initBufName = name ++ "_initBuf"
          unlockForkName = name ++ "_unlockFork"
          forkOuts = mkNameSet (length funcIns) (unlockForkName++)
          goMuxNames = mkNameSet (length funcIns) ((name ++ "_goMux")++)

          -- Add select channel for unlocking to each Go-triggered mux
          addSelChan muxName selChan = do
            node <- findNode muxName
            case node of
              Just (Node ins op outs) ->
                putNode muxName (Node (selChan:ins) op outs)
              _ -> error "Missing an expected lock mux"
      forkIn = fromMaybe (error "Expect a result from a recursive function")
                         result
      forkOut = forkIn ++ "_fork"
  addFork forkIn forkOut (tTy retTy)           --fork for function output
  addUnlockChannel (varWrap forkOut, tTy retTy)--use output to drive lock-muxes
  getNextOChannel (varWrap forkOut)


-- | Impose a strict policy on function calls by bundling all arguments
-- in a tuple and then dispersing them with a case
addStrictNodeAndCase :: Var -> [Var] -> [Bind] -> NodeState ()
addStrictNodeAndCase name inputVars params = do
  strictPrefix <- gets strictPref
  let tupdcon = strictPrefix ++ intercalate "___" tys
      strictName = name ++ "_complete_" ++ tupdcon
      strictNode = Node inputVars (Func (Dcons tupdcon)) [strictName]
      caseNode = Node [strictName] (Destruct (tupdcon,fields)) caseOuts
      mangleVb (Vb (n,_)) = strictName ++ n
      mangleVb _             = error "mangleVb"
      caseOuts = map mangleVb params
      caseName = strictName ++"_case"
  putNode strictName strictNode
  putNode caseName caseNode
  zipWithM_ makeFork caseOuts params
  where
    fields = [0..(length inputVars - 1)]
    tys = map getParamTys params
    getParamTys (Vb (_,t)) = case tTy t of
                              Int' _ -> "Int#"
                              Tycon tt -> tt
    getParamTys _ = error "getParamTys"


-- | Pass new input channels to either a merge/mux layer (tail-recursive call)
-- or into a new tuple dcon for strictness (non-recursive call to an unclustered
-- function).  Return a new output channel for the Demux surrounding a function.
anotherCall :: Bool -> [Var] -> Var -> NodeState Channel
anotherCall shouldBuffer inputVars func = do
  clusters <- gets mutRecFuncs
  thisFunc <- gets curFunc
  -- check if we're making an internal cluster call
  let internalCall = any (\clust -> func `elem` clust &&
                          thisFunc `elem` clust) clusters
  if internalCall
    then do --No strictness for tail-recursive calls in a cluster
      (param1:params) <- gets (paramErr . Map.lookup func . paramsMap)
      argMerge <- findNode (if null params then "" else head params ++ "_data")
      let nodeNames = (param1 ++ "_goMux_data") :
                      if isNothing argMerge
                          then map (++("_goMux_mux")) params
                          else map (++("_goMux_data")) params
      zipWithM_ setNextIChannel nodeNames inputVars
      returnRes
    else do --Need to add new tuple Dcon node and feed it into existing merge
      funcArbiter <- findNode (func ++ "_data")
      case funcArbiter of
        Just (Node ins (MergeChoice _ (Tycon tupdcon)) _) -> do
          --Add new tuple node for strictness
          let strictNodeName = func ++ tupdcon ++ (show $ length ins + 1)
              strictNode = Node inputVars (Func (Dcons tupdcon)) [strictNodeName]
          putNode strictNodeName strictNode
          --Update mergeChoice node and its outputs' destinations
          setNextIChannel (func ++ "_data") strictNodeName
          returnRes
        _ -> error "Unexpected node in anotherCall"
  where
    funcVar = Var (Nothing,func) UndefinedTy
    paramErr = fromMaybe (error $ "No params" ++ show func)
    returnRes = do
      funcDemux <- findNode func
      case funcDemux of
        Nothing -> return Nothing --In a partially translated recursive function 
        Just _ -> Just <$> getNextOChannelBuffered shouldBuffer funcVar

-- | Add a data constructor node (constant or otherwise)
-- to our network, returning its output channel
addDcon :: Var -> [Exp] -> NodeState String
addDcon name args = do inputs <- mapM getNextOChannel args
                       let outName = concat inputs ++ name
                           node    = Node inputs (Func $ Dcons name) [outName]
                       putNode outName node
                       return outName

-- | Add a node for one of our primitive functions
addPrimFunc :: Func -> [Exp] -> NodeState String
addPrimFunc op args = do
  inputs <- mapM getNextOChannel args
  let outName = concat inputs ++ "_" ++ filter (not . isSpace) (show op)
      node    = Node inputs (Func op) [outName]
  putNode outName node
  return outName

addWrite :: Var -> Ty -> NodeState String
addWrite = addMemOp "write"

addRead :: Var -> Ty -> NodeState String
addRead = addMemOp "read"

-- | Add either a read or write node
addMemOp :: Var -> Var -> Ty -> NodeState String
addMemOp op input ty = do putNode outName node
                          return outName
  where
    (retTy,[argTy]) = collectArgTypes ty
    outName = op ++ getTycon argTy ++ input
    node = Node [input] (Func (func (tTy argTy) (tTy retTy))) [outName]
    func = if op == "read" then Read else Write

    getTycon (Tcon (_,tcon)) = tcon
    getTycon _ = error "Unexpected type in addMemop"

addBuffer :: Var -> Ty -> NodeState String
addBuffer input ty = do putNode outName node
                        return outName
  where
    node = Node [input] (Buffer (tTy ty)) [outName]
    outName = input ++ "_rwb"

-- | Add a single output Demux to our network; we add
-- more outputs as needed, or optimize the single-port demux
-- away.  Add a buffer to the output if requested.
addDemuxBuffered :: Bool -> -- Put buffer on output?
            Var -> Var -> --Input channels
            Var ->        --Output channel
            Dcon ->       --Initial selector
            Type ->       --Type of output
            NodeState String
addDemuxBuffered shouldBuffer dIn choice outName dcon ty =
    do
      let outName' = outName ++ "_1"
          outName'' = outName ++ "_resbuf"
          demux = Node [choice,dIn] (Demux ty [dcon]) [outName']
      putNode outName demux
      if shouldBuffer
        then do
          putNode outName'' $ Node [outName'] (Buffer ty) [outName'']
          return outName''
        else return outName'

-- | Create a literal constant node
addIConst :: Var -> Int -> NodeState String
addIConst goIn num = do putNode outName iconst
                        return  outName
  where
    outName = goIn ++ "_" ++ show num
    iconst = Node [goIn]
                  (IConst num 32)
                  [outName]

-- | Add a single output fork to our network; we add
-- more outputs as needed, or optimize the single-port fork
-- away.
addFork :: Var -> Var -> Type -> NodeState ()
addFork inName outName ty = putNode outName fork
  where fork = Node [inName]
                    (Fork 0 ty) --We haven't assigned fork's output yet
                    [outName ++ "_1"]

-- | Create a MergeChoice node for a function's first parameter. Initially,
-- we only model a single call site.
addMergeChoice :: Var -> Bind -> NodeState (String,String)
addMergeChoice inputVar (Vb (outVar,ty)) = do
  let node = Node [inputVar] (MergeChoice oneChoiceTy (tTy ty)) [sel,dOut]
      dOut = outVar ++ "_data"
      sel  = outVar ++ "_choice"
  putNode dOut node
  return (dOut,sel)
addMergeChoice _ _ = error "MergeChoice"

-- | Create a Merge node for a single-argument recursive function.
addMerge :: Var -> Bind -> NodeState String
addMerge inputVar (Vb (outVar,ty)) = do
  let node = Node [inputVar] (Merge 1 (tTy ty)) [dOut]
      dOut = outVar ++ "_data"
  putNode dOut node
  return dOut
addMerge _ _ = error "Merge"

-- | Create a mux for a function's ith parameter, where i > 1.
addFuncMux :: Var -> Var -> Bind -> NodeState String
addFuncMux choiceForkVar inputVar (Vb (outVar,ty)) = do
  choice <- getNextOChannel $ varWrap choiceForkVar
  let mux = Node [choice,inputVar]
                 (Mux (tTy ty) [oneChoiceDcon]) -- initially only one choice
                 [outName]
  putNode outName mux
  return outName
  where
    outName = outVar ++ "_mux"
addFuncMux _ _ _ = error "addFuncMux"

-- | Create a mux for the result of a case statement
addMux :: Var -> [Var] -> Var -> [Dcon] -> Type -> NodeState String
addMux choiceVar inputVars outVar choices ty =
  do putNode outName mux
     return outName
  where mux = Node (choiceVar:inputVars)
                   (Mux ty choices)
                   [outName]
        outName = outVar ++ "_mux"

addFullMerge :: [Var] -> Var -> Type -> NodeState String
addFullMerge inputVars outVar ty =
  do putNode outName merge
     return outName
  where merge = Node inputVars
                     (Merge (length inputVars)ty)
                     [outName]
        outName = outVar ++ "_merge"


-- | Add a set of Go-triggered Muxes to a recursive function. Upon creation, we
-- don't yet have the Go channels for "unlocking", as these will come from a Fork
-- node for the function's final value (which must exist). This
-- channel must be added later.
addGoMuxes :: Var -> [Ty] -> [Var] -> NodeState [Var]
addGoMuxes funcName argTypes inputs = do zipWithM_ putNode nodeNames muxes
                                         return nodeNames
  where
    nodeNames = mkNameSet (length inputs) ((funcName++"_goMux")++)
    muxes = zipWith3 makeMux inputs argTypes nodeNames
    makeMux inp ty out = Node [inp] --need to add choice input later
                              (Mux (tTy ty) ["Go"])
                              [out]


-- | Create a subnetwork that pattern matches and distributes
-- a pattern's fields via destruct nodes. Then descend into and translate 
-- alternatives, and route outputs depending on whether we're in a mutually
-- recursive cluster or not.
translateCase :: Exp -> [Alt] -> Ty -> NodeState Channel
translateCase scrut alts ty = do
  isInLet <- gets inLet
  -- Only generate demux and destructs if some data constructor
  -- being matched has non-Go type fields.
  when (any hasField alts && any usesField alts)
    (do
      demuxData   <- getNextOChannel scrut
      demuxChoice <- getNextOChannel scrut
      let fieldDcons = map getDcons $ filter usesField alts
          -- ^ Match our destruct generation invariant (only generate
          -- one if the associated constructor has fields to distribute)
          demux = Node [demuxChoice,demuxData]
                       (Demux (tTy (exprType scrut)) fieldDcons)
                       (map (demuxData++) fieldDcons)
          demuxName = demuxData ++ "_choiceDemux"
      putNode demuxName demux
      mapM_ (addDestructs demuxData) alts
    )
  let freeVarLocs = foldr getFreeVars Map.empty alts
  demuxMap <- mapM (freeVarDemux scrut) $ Map.toList freeVarLocs
  results <- mapM (translateAlt freeVarLocs demuxMap) alts
  mutRecs <- gets mutRecFuncs
  thisFunc <- gets curFunc
  let allResults = catMaybes results
      allDcons   = map getDcons alts
      valChoices = catMaybes $ zipWith moveJusts results allDcons
      uniqName   = concat allResults
  if null allResults    -- All alternatives led to recursive calls
    then return Nothing
         --We only want to use a merge to collect results if one of
         --the alternatives of this translated case performed a
         --(mutually) recursive call. This can only happen if we're
         --currently translating a cluster function (the only places
         --where recursion can occur) and if we are not inside a let
         --definition (as otherwise the recursive call wouldn't be a
         --tail-call, which is prohibited). 
    else if not isInLet && any (elem thisFunc) [concat mutRecs] --part of a cluster
            then Just <$> addFullMerge allResults uniqName (tTy ty)
            else do nextCOut <- getNextOChannel scrut
                    Just <$> addMux nextCOut allResults uniqName valChoices (tTy ty)
  where
    getDcons (Acon (_,dc) _ _ _) = dc
    getDcons _ = error "Unexpected case alternative (getDcons)"

    -- True if an alternative has a non-Go field
    hasField (Acon _ _ vbinds _) = let isGoTy (Tcon (_,"Go")) = True
                                       isGoTy _ = False
                                   in any (not . isGoTy . snd) vbinds
    hasField _ = False

    usesField (Acon _ _ vbinds ex) = let freeVars = map snd $ cfv ex
                                     in any (`elem` freeVars) (map fst vbinds)
    usesField _ = False


    -- Only need to generate destructs for patterns
    -- with non-Go fields.
    addDestructs inputPref alt
      | not (hasField alt) || not (usesField alt) = return ()
      | otherwise = case alt of
       (Acon (_,dc) _ vbinds ex) ->
        let inputName = inputPref ++ dc
            dcFieldIndices = usedFieldIndices vbinds ex
            bindNames = map fst vbinds
            outNames = map ((++ "_destruct") . (bindNames !!)) dcFieldIndices
            destruct = Node [inputName] (Destruct (dc,dcFieldIndices)) outNames
        in do putNode (inputName ++ "_destruct") destruct
              zipWithM_ createForks outNames (map (vbinds !!) dcFieldIndices)
       _ -> error "Unexpected alternative in addDestructs"

    createForks input (outName,t) = addFork input outName (tTy t)

    -- If a choice led to a result, put it in a Just
    moveJusts Nothing  _      = Nothing
    moveJusts (Just _) choice = Just choice

    --Collect all free variable bindings in an alternative and add 
    --the alternative's pattern to each variable's list
    getFreeVars :: Alt -> Map.Map (Var,Ty) [Dcon] -> Map.Map (Var,Ty) [Dcon]
    getFreeVars (Acon (_,dcon) _ vbinds ex) varMap =
      let freeVars = foldr delete (map swap $ cfv ex) vbinds
          swap (a,b) = (b,a)
          dconCollect d dcons = d ++ dcons
      in foldr (flip (Map.insertWith dconCollect) [dcon]) varMap freeVars
    getFreeVars alt _ = error $ "Unexpected case alternative (getFreeVars): " ++ show alt

    --Add demux for a free variable in a set of alternatives
    freeVarDemux (Var (_,choice) _) ((var,t),dcons) = do
      dIn <- getNextOChannel (varWrap var)
      choiceIn <- getNextOChannel (varWrap choice)
      let demux = Node [choiceIn,dIn]
                       (Demux (tTy t) dcons)
                       []
          outName = dIn ++ choice ++ "_demux"
      putNode outName demux
      return (outName, dcons)
    freeVarDemux _ _ = error "Unexpected expression in freeVarDemux"

-- | Add output channels to the demux of each free variable occuring in the
-- alternative, feed these into forks, and replace the names of the free
-- variables in the expression to match the new forks.
translateAlt :: Map.Map (Var,Ty) [Dcon] -> [(Var, [Dcon])] -> Alt -> NodeState Channel
translateAlt freeVarMap demuxMap (Acon (_,dcon) _ _ ex) = do
  demuxes <- mapM findNode demuxNames
  newVars <- zipWithM addOutAndFork demuxes demuxNames
  let newEx = foldr renameVars ex $ zip curVars newVars
  tExpr newEx
  where
    demuxNames = map fst $ filter (elem dcon . snd) demuxMap

    curMap = Map.filter (elem dcon) freeVarMap
    curVars = map fst $ Map.keys curMap

    -- Add new output to demux and fork it
    addOutAndFork :: Maybe Node -> Var -> NodeState String
    addOutAndFork (Just (Node ins op@(Demux t _) outs)) name =
      let newVar = head ins ++ dcon
          newOuts = outs ++ [newVar]
          newNode = Node ins op newOuts
      in do putNode name newNode
            addFork newVar newVar t
            return newVar
    addOutAndFork _ _ = error "No demux found"

    renameVars (oldVar,newVar) = replaceVar oldVar newVar
translateAlt _ _ alt = error $ "Unexpected case alternative (translateAlt): " ++ show alt

-- | Given the named fields of a data constructor pattern and an expression,
-- return the indices of the fields used in the expression.
usedFieldIndices :: [Vbind] -> Exp -> [Int]
usedFieldIndices vbinds ex = keepUsed vbinds [0..(length vbinds - 1)]
  where
    vpatMap = Map.fromList $ zip (map fst vbinds) (repeat False)
    newMap  = unusedPatterns ex vpatMap

    unusedPatterns e m = case e of
     App e1 e2        -> let m' = f e1 m in f e2 m'
     Appt e1 _        -> f e1 m
     Lam _ e1         -> f e1 m
     Let vdefs e1     -> let m' = foldr vdefHelp m vdefs in f e1 m'
     Case e1 _ _ alts -> let m' = f e1 m in foldr altHelp m' alts
     Var (_,name) _   -> Map.adjust (const True) name m
     _                -> m
     where
      f = unusedPatterns
      vdefHelp (Vdef _ _ e') = f e'
      altHelp  (Acon _ _ _ e') m' = f e' m'
      altHelp  (Alit _ e')     m' = f e' m'
      altHelp  (Adefault e')   m' = f e' m'

    keepUsed ((name,_):vbs) (index:indices) =
      if Map.findWithDefault (error "Vbind not in map") name newMap
        then index : recurse
        else recurse
      where
        recurse = keepUsed vbs indices
    keepUsed _ _ = []


-- | Add another input channel to a MergeChoice or a Mux for a function, 
-- indicating that we have another call site.
setNextIChannel :: Var -> Var -> NodeState ()
setNextIChannel mergeName inputVar  = do
  funcArb <- findNode mergeName
  case funcArb of
    --Need to modify both MergeChoice type and, if it forks its choice
    --output, the type of the Fork destination and the type of the Demux
    --the fork feeds
    Just (Node ins (MergeChoice (Tycon chTy) t) outs) ->
      let mboldCount = (readMaybe $ tail chTy) :: Maybe Int
          oldCount = fromMaybe countErr mboldCount
          countErr = error $ "Problem in setNextIChannel:" ++ show chTy
          newChTy = Tycon $ (: show (oldCount + 1)) $ head chTy
          [choice,_] = outs
      in do choiceDest <- findNode choice
            _ <-  case choiceDest of
                   Just (Node ins' (Fork n _) outs') ->
                    putNode choice $ Node ins' (Fork n newChTy) outs'
                   _ -> return ()
            putNode mergeName $
             Node (ins ++ [inputVar]) (MergeChoice newChTy t) outs
    Just (Node ins (Merge n t) outs) ->
      putNode mergeName $
      Node (ins ++ [inputVar]) (Merge (n+1) t) outs
    Just (Node ins (Mux ty dcons) outs) -> do
      let newCount = length dcons + 1
          newDcons = renameChoiceDcs newCount dcons
      putNode mergeName $
          Node (ins ++ [inputVar]) (Mux ty newDcons) outs
    _ -> error $ "Can't find channel" ++ show mergeName ++ " with input var " ++ show inputVar

-- | Shorthand for getNextOChannelBuffered False
getNextOChannel :: Exp -> NodeState String
getNextOChannel = getNextOChannelBuffered False

-- | Add a new output channel to a variable expression's fork node 
-- or a function's demux node; return the name of the new channel.
-- Add a buffer on the channel if requested
getNextOChannelBuffered :: Bool -> Exp -> NodeState String
getNextOChannelBuffered shouldBuffer (Var (_,name) _) = do
  node <- findNode name
  case node of
    Just (Node ins nodeOp outs) ->
      let (n,newOp, ty) = case nodeOp of
                          Fork count t  -> (count       ,Fork (count+1) t, t)
                          Demux t dcons -> (length dcons,Demux t (build dcons), t)
                          _             -> error "Unexpected op"
          build = renameChoiceDcs (n + 1)
          newOut    = init (init (head outs)) ++ "_" ++ show (n+1)
          newOuts   = if n == 0 then outs else outs ++ [newOut]
          modNode   = Node ins newOp newOuts
      in do putNode name modNode
            if shouldBuffer
              then do
                let newOut' = newOut ++ "_argbuf"
                putNode newOut' $ Node [newOut] (Buffer ty) [newOut']
                return newOut'
              else return newOut
    Nothing -> errorM $ "Node " ++ show name ++ " couldn't be found"
getNextOChannelBuffered _ e = error $ "Non-variable sub-expression as argument "
                              ++ show e

-- | Given a new maximum choice count and the current set of choice dcons,
-- generate a new, renamed set.
renameChoiceDcs :: Int -> [Dcon] -> [Dcon]
renameChoiceDcs newCount dcons = newDcons ++ [newDc]
  where
    countStr = show newCount
    newDcons = map (++('_':countStr)) dcPrefixes
    dcPrefixes = map (takeWhile (/='_')) dcons
    newDc = 'C' : (countStr ++ "_" ++ countStr)

-- | Generate a fork node for a lambda binding
makeFork :: Var -> Bind -> NodeState ()
makeFork out (Vb (n,t)) = addFork out n (tTy t)
makeFork _ _ = error "Type binding in lambda"

-- | Wrap a name in a dummy variable expression so we can pass it to
-- getNextOChannel, which we often call on actual expressions.
varWrap :: Var -> Exp
varWrap name = Var (Nothing,name) UndefinedTy

sourceVar :: Var
sourceVar = "sourceNode"

-- | When assigning an initial choice type, we'll only have one choice option.
-- This type is thus encoded as "C1".
oneChoiceTy :: Type
oneChoiceTy = Tycon "C1"

-- | When assigning an initial choice dcon, we'll only have one choice option.
-- This type is thus encoded as "C1_1" (the first '1' counts the first variant,
-- while the second '1' indicates that there's a total of one variant).
oneChoiceDcon :: Dcon
oneChoiceDcon = "C1_1"

--Used to check which aspect of translator hasn't been implemented yet,
--printing out state for debugging purposes.
errorM :: String -> NodeState a
errorM str = do s <- get
                error $ str ++ "\nState: " ++
                        intercalate "\n" (map show $ sort
                        $ map snd $ Map.toList $ nodeEnv s)
-- | Optimizing away unnecessary nodes, and maintaining the name of each
--   write node's input in our Analysis structure
optimize :: [Node] -> Analysis -> ([Node], Analysis)
optimize nodes analysis = let (finalNodes, newSites) = runState (opt nodes) (writeSites analysis)
                          in (finalNodes, analysis { writeSites = newSites })
  where
  toRemove (Node [_] (Fork _ _       ) [_]) = True
  toRemove (Node [_] (Merge _ _      ) _  ) = True
  toRemove (Node _   (Demux _ [dc]) _  )    = dc == oneChoiceDcon
  toRemove (Node [_] (MergeChoice _ _) _  ) = True

  -- remove buffers that come for additional arguments
  toRemove (Node [input] (Buffer (Tycon "Go")) _) = False
  toRemove (Node [input] (Buffer _) _) = case getSource input nodes of
                                                (Node _ (Source _) _) -> True
                                                _ -> False

  toRemove _ = False

  --Find the destination or source for a channel
  getDest   = getIt getInputs
  getSource = getIt getOutputs
  getIt :: (Node -> [String]) -> String -> [Node] -> Node
  getIt f name ns = fromMaybe (error ("Couldn't find node with channel " ++
                                      name ++ " in nodelist " ++ showNodes ns))
                              (find (elem name . f) ns)

  getItMaybe :: (Node -> [String]) -> String -> [Node] -> Maybe Node
  getItMaybe f name ns = (find (elem name . f) ns)

  --For debugging and error messages
  showNodes = intercalate "\n" . map show

  --Optimization driver: find a node to remove, remove it, call a helper 
  --function to update the resulting dangling channels 
  opt nList = case filter toRemove nList of
               [] -> return nList
               (n:_) -> let newList = delete n nList in case n of
                  Node [input] (MergeChoice _ _) [choiceOut,dOut] ->
                    let dest = getDest dOut newList
                        choiceDest = getDest choiceOut newList
                    in do newDestList1 <- channelMod input dOut dest (delete n newList)
                          newDestList2 <- deleteChoiceDest newDestList1 choiceDest
                          opt newDestList2
                  Node [choiceIn,dIn] (Demux _ _) [output] ->
                    let dest = getDest output newList
                    in do newList' <- deleteChoiceSource choiceIn (delete n newList)
                          newList'' <-channelMod dIn output dest newList'
                          opt newList''
                  Node [input] _ [output] ->
                    let dest = getDest output newList in
                    do 
                      newList' <- channelMod input output dest (delete n newList)
                      opt newList'
                                   
                  _ -> error "Unexpected node to remove"

  -- | Remove muxes/forks/demuxs that dealt with a choice signal from a 
  -- single-input mergeChoice node
  deleteChoiceDest :: [Node] -> Node -> State [(Var, Int)] [Node]
  deleteChoiceDest nMap n = let newMap = delete n nMap
                                go dIn dOut = channelMod dIn dOut
                                                (getDest dOut newMap) newMap
                            in case n of
    Node _ (Fork _ _) outs -> let forkDests = map (`getDest` nMap) outs
                              in foldM deleteChoiceDest newMap forkDests
    Node [_,dIn] (Mux _ _)   [dOut] -> go dIn dOut
    Node [_,dIn] (Demux _ _) [dOut] -> go dIn dOut
    _ -> error $ "Unexpected destination in choiceDel: " ++ show n

  -- | Given the single data input (dIn) and output (dOut) of a deleted node, 
  --   and the node n that takes dOut as an input, replace dOut with dIn in n's
  --   input channel list. Replace the old version of n in our list with this 
  --   modified version.
  channelMod dIn dOut n@(Node ins op outs) nList =
    let (pre,_:post) = span (/=dOut) ins
        newIns = pre ++ [dIn] ++ post
        newDest = Node newIns op outs
    in do calls <- get
          --Update writeSites for Analysis data structure
          let newCalls = case lookup dOut calls of
                          Just num -> (dIn,num) : delete (dOut,num) calls
                          Nothing -> calls
          put newCalls
          return $ newDest : delete n nList

  -- | Given the choice input to a deleted demux, update the producer of that
  --   choice to maintain a valid network.
  deleteChoiceSource choiceIn newMap =
   let choiceSource = getSource choiceIn newMap
   in case choiceSource of
       -- A single-output fork; delete the fork and recurse on its input
       Node [inp] (Fork _ _) [_] -> deleteChoiceSource inp (delete choiceSource newMap)
       -- A multi-output fork; remove the output corresponding to choiceIn
       Node is (Fork num t) forkOuts ->
         let newForkOuts = filter (/= choiceIn) forkOuts
             newFork = Node is (Fork (num-1) t) newForkOuts
         in return $ newFork : delete choiceSource newMap
       -- A single-input mergeChoice; delete it as we would in opt, but no need to
       -- delete its choiceOutput destination (as that's the demux that was already
       -- deleted)
       Node [dIn] (MergeChoice _ _) [_,dOut] ->
         let dest = getDest dOut newMap
         in  channelMod dIn dOut dest (delete choiceSource newMap)
       _ -> error $ show choiceSource ++ "Unexpected choice source in fullDeDeleter"


-- | Check that all analysis information has been properly maintained:
--
--   1. Ensure that a write channel has input "n" iff "n" is a unique member of
--      the writeSites field
verifyA :: Analysis -> Dataflow -> Analysis
verifyA a (Dataflow _ nodes) = a
  -- if checkWrites
  --                               then a
  --                               else error "Issue with writeSites after dataflow translation"
  where
    isWrite (Node _ (Func (Write _ _)) _) = True
    isWrite _ = False
    checkWrites = sort (concatMap getInputs (filter isWrite nodes)) ==
                  sort (map fst $ writeSites a)
