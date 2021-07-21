
module Fhw.Pass.PartitionMem.PointerAnalysis where

import Fhw.Core.Core
import Fhw.Pass.PartitionMem.Utils
import Data.List
import Data.Graph
import Data.Maybe (fromMaybe, mapMaybe, catMaybes)
import qualified Data.Set as Set
import qualified Data.Map as Map
import Control.Applicative
import Control.Monad.State
import Control.Arrow (first, second)

-------------------------------------
-- | Types for Points-To Analysis 
-------------------------------------

-- One PInfo record exists for each pointer variable 
-- and each "pointer carrier" variable (i.e. a tuple that
-- carries a pointer field directly or indirectly)
type PointsToInfo =  [PInfo]
data PInfo = PInfo { vname :: Var         --name of this pointer variable (n)
                   , locs :: Set.Set Int  --points-to set for this varaible
                   , assignedTo :: Set.Set Var  --all m such that m = n
                   , readFields :: Set.Set Exp  --all e from case read n of e@(D ...)  
                                                -- where D has a pointer field (e = *n)
                   , writeFields :: Set.Set Exp --all e from n = write e@(D ... )
                                                -- where D has a pointer field (*n = e)
                   } deriving (Show, Eq)

-- | Information about a function that has a pointer or pointer carrier 
--   return type (here called a ptype).
--   We track any tail-position ptype variables (retVals),
--   write sites (sites), fields of written or pointer carrier structures 
--   (writeFs), and calls to other functions (calls). We only collect
--   this info for tail-position values since those are what the function
--   can actually return. I'm using sets to take advantage of union operations.
data PointerFunc = PFunc { fname :: Var 
                         , retVals :: Set.Set Var  
                         , sites :: Set.Set Int   
                         , calls :: Set.Set Var 
                         , writeFs :: Set.Set Exp
                         } deriving Show

instance Show a => Show (SCC a) where
  show (AcyclicSCC a) = show a
  show (CyclicSCC a) = show a

data StaticInfo = SInfo { allDefs :: [Vdef] --All top-level definitions in the program
                        , ptys :: [Ty]   -- Pointer_T types and containers of Pointer_T types
                        , recTys :: [Ty] -- types T such that Pointer_T exists
                        , analysis :: Analysis
                        , pfuncs :: [PointerFunc]
                        }

-- | Collect information about a function returning a Pointer type, namely
--   the other functions it calls in tail-position, any Pointer variables in
--   tail-position, any calls to a write function in tail-position, and the
--   fields of either written structures or structures containing pointers
--   (direct or indirect).
collectFuncInfo :: [Ty] -> Analysis -> Vdef -> Maybe PointerFunc
collectFuncInfo tys an (Vdef (_,n) ty ex) =
  if not (isFunctionTy ty && fst (collectArgTypes ty) `elem` tys)
    then Nothing
    else Just $ snd $ execState (go ex) ([], initInfo)
  where
    initInfo = PFunc { fname = n
                     , retVals = Set.empty
                     , sites = Set.empty
                     , calls = Set.empty
                     , writeFs = Set.empty
                     }
    go (Case _ _ _ alts) = mapM_ (altHelp go) alts
    go (Lam _ e) = go e
    go (Let vds e) = mapM_ helper vds >> go e
    go e = let (call,args,_) = collectArgs e in 
           case call of
             Var (_,var) t | t `elem` tys -> modify $ second $ modRetVals var
                           | var == n  -> return ()   --Ignore recursive calls
                           | isWrite var -> do maybe (siteErr var) addSite $
                                                lookup var (writeSites an)
                                               storeFields args
                           | otherwise -> modify $ second $ modCalls var
             Dcon _ t -> let (retTy,argTys) = collectArgTypes t in
                         when (any (`elem` tys) (retTy:argTys)) $
                           modify $ second $ modFields $ Set.singleton e
             _ -> return ()

    --new return value 
    modRetVals v s = s{retVals = Set.insert v (retVals s)}
    --new function call
    modCalls   v s = s{calls = Set.insert v (calls s)}
    --new fields
    modFields  ws s = s{writeFs = Set.union ws (writeFs s)}
    --new write site
    addSite num = modify $ second (\s -> s{sites = Set.insert num (sites s)})

    --If (let writeArg = D ...) is in this function and D carries ptys,
    --store D and its fields in this function's record.
    storeFields [Var (_,writeArg) _] = do
      vds <- gets fst --local defs in this function
      let mayDef = find ((==writeArg) . vdefName) vds 
          getExprs (Vdef _ _ e) = getAllDcon tys e
          dconExprs = maybe [] getExprs mayDef
          writeSet = foldr Set.insert Set.empty dconExprs
      modify $ second $ modFields writeSet
    storeFields args = error $ "Non-singleton arguments to write call: " 
                             ++ show args 

    -- Add a local pty variable definition to our state
    helper vd@(Vdef _ (Tcon (_,tname)) _) = 
      when (("Pointer_" ++ tname) `elem` tynames) $
      modify $ first (vd:)
    helper _ = return ()

    tynames = map getTyName tys
    getTyName (Tcon (_,tname)) = tname
    getTyName _ = ""

    siteErr v = error $ v ++ " not found in writeSites"



type MyScc = SCC (PointerFunc, Var, [Var])
-- | Make a call graph between our pointer functions, and take the transitive
--   closure of their "retVal", "sites", and "writeFs" sets to update those 
--   fields in each individual PointerFunc record
tranClosFunc :: [PointerFunc] -> [PointerFunc]
tranClosFunc infoList = updatedInfoList
  where
    updatedInfoList = map getFuncInfo $ flattenSCCs newSCCs
    newSCCs = foldl takeClosure [] funcSCCs
    --list of SCCs in reverse topological order
    funcSCCs = stronglyConnCompR nodes 
    nodes = map toNode infoList
    toNode pFunc = (pFunc, fname pFunc, Set.toList (calls pFunc))
    
    -- | Perform the actual closure over the graph of SCCs
    takeClosure :: [MyScc] -> MyScc -> [MyScc]
    takeClosure sccs thisSCC = 
      let flattened = flattenSCC thisSCC 
          allOuts = concatMap getOutEdges flattened
          -- Collect one node from each SCC this one points to.
          -- They've already been processed, so all funcs in each of the "called"
          -- SCCs have the same "sites", "retVal", and "writeFs" sets.
          called = map (getFuncInfo . head . flattenSCC) $
                   fst $ partition callsSCC sccs --get SCCs called by this one
          callsSCC = any (`elem` allOuts) . map getFuncName . flattenSCC 
          --Union all the retVals, sites, and writeFs sets across this SCC and
          --any others it calls. 
          retValsU = unionFields retVals
          sitesU = unionFields sites
          writeFsU = unionFields writeFs
          unionFields f = Set.unions $ map f $ map getFuncInfo flattened ++ called
          --Store unioned sets back in each member of this SCC
          newVertices = map updateFields flattened
          updateFields (pfunc,v,vs) = (pfunc { retVals = retValsU, 
                                               sites = sitesU,
                                               writeFs = writeFsU}, v, vs)
      in if length flattened == 1
            then AcyclicSCC (head newVertices) : sccs
            else CyclicSCC newVertices : sccs 

    getOutEdges (_, _, vs) = vs 
    getFuncName (_, v, _)  = v
    getFuncInfo (i, _, _)  = i

-- | Initalize points-to graph with allocation sites, assignments, 
--   read patterns, and written data constructor expressions. 
type Env = State ([Vdef], --let n = (read p) or let n = (D ... p ...)
                  PointsToInfo)
initialSets :: StaticInfo -> Vdef -> Env ()
initialSets sinfo thisDef@(Vdef (_,name) ty ex) = mkSets ex
  where
    mkSets :: Exp -> Env ()
    mkSets (Lam _ e)         = mkSets e
    mkSets (Case e _ _ alts) = do 
      mapM_ (altHelp mkSets) alts
      s <- gets fst
      let getE (Vdef _ _ e') = e'
          myHead (Let _ e') = myHead e'
          myHead e' = case collectArgs e' of
                        (call,[e''],_) | "read" `isPrefixOf` getVarName call -> e''
                        _ -> error "Expecting a read call with one argument"
          mayReadDef = find ((==getVarName e) . vdefName) s
          newNode = maybe e (myHead . getE) mayReadDef
      when (exprType newNode `elem` ptys sinfo) $ 
        updateReadSet alts newNode (exprType e)
    mkSets (Let vds e)       = do mapM_ (initialSets sinfo) vds
                                  mkSets e
    mkSets e                 = let (call, args, _) = collectArgs e
                               in case call of
     Var qual@(_,n) t ->  let site = lookup n (writeSites $ analysis sinfo)
                              defErr = "Unable to find top-level vdef " ++ n
                              vd = fromMaybe (error defErr ) $ 
                                   find ((==n) . vdefName) $ allDefs sinfo
                          in do
       when (not (isPrim qual) && isFunctionTy t && notMemFunc n) $
         bindParams args vd  --pointer args bound to formal parameters
       when (ty `elem` ptys sinfo) $ case site of
                   --a pointer variable bound to another
         Nothing | t `elem` ptys sinfo -> updateArgsSet n (Set.singleton name)
                   --a function returning a pointer
                 | n `elem` map fname (pfuncs sinfo) -> 
                    let pfunc = fromMaybe (error $ "Cannot find function " ++ n) $ 
                                           find ((==n) . fname) (pfuncs sinfo)
                        retPtrs = Set.toList $ retVals pfunc
                        f v = updateArgsSet v (Set.singleton name)
                        g p = p{writeFields = Set.union (writeFs pfunc) (writeFields p)}
                          -- For each pointer v returned by the function, 
                          -- add the current variable to v's points-to set
                    in do mapM_ f retPtrs
                          --Add each of the function's call sites to 
                          --this variable's
                          updateSiteSet name (sites pfunc)
                          updatePtrSet name g
                 | otherwise -> return ()
         --The current vdef is bound to the result of a write,
         --so add new points-to info for this vdef
         Just num -> updateWriteSet name num args 
       --collect a local vdef bound to a read expression
       when ("read" `isPrefixOf` n) $ modify $ first (thisDef:)
     --collect a local vdef bound to a pointer-based dcon expression
     Dcon _ _ -> do when (any ((`elem` ptys sinfo) . exprType) args) $
                       modify $ first (thisDef:)
                    --collect fields of a ptype that isn't stored on the heap
                    when (ty `elem` ptys sinfo && ty `notElem` recTys sinfo) $
                     let f p = p{writeFields = Set.insert e (writeFields p)}
                         ptrArgs = collectPtrs e
                     in do updatePtrSet name f
                           mapM_ (`updatePtrSet` id) ptrArgs
     _ -> return ()

    --Given a call (f a1 ... an) to function (f = \ b1 ... bn -> ...),
    --bind each pointer argument a_i to parameter b_i in our graph
    bindParams :: [Exp] -> Vdef -> Env ()
    bindParams args (Vdef _ _ (Lam bs _)) = do
      let ptrArgs = mapMaybe getPtrArg args
          ptrBinds = mapMaybe getPtrVb bs
          getPtrVb (Vb (v,t)) = help v t 
          getPtrVb _ = Nothing
          getPtrArg (Var (_,v) t) = help v t
          getPtrArg _ = Nothing
          help v t = if t `elem` ptys sinfo then Just v else Nothing
      zipWithM_ updateArgsSet ptrArgs $ map Set.singleton ptrBinds 
    bindParams _ _ = error "Function vdef must start with a Lam"
    
    --Add a set of allocation sites s to pointer variable n's record
    updateSiteSet n s = updatePtrSet n (\p -> p{locs = Set.union s (locs p)})
    --Given a set of variables s assigned to a pointer variable n,
    --add s to n's record and insert each element of s into our pointer graph
    updateArgsSet n s = let f p = p{assignedTo = Set.union s (assignedTo p)} in
                        do updatePtrSet n f
                           mapM_ (`updatePtrSet` id) (Set.toList s)
    --Given (n = write_num writeArg) where (writeArg = D ... p ...) and
    --p is a pointer, add (D ... p ...) and num to n's record, and create 
    --new nodes for all p.
    updateWriteSet n num arg = do 
      s <- gets fst
      case arg of
        [Var (_,writeArg) _] -> 
          let mayDef = find ((==writeArg) . vdefName) s
              getExprs (Vdef _ _ e) = getAllDcon (ptys sinfo) e
              dconExprs = maybe [] getExprs mayDef
              ptrArgs = concatMap collectPtrs dconExprs
              writeSet = foldr Set.insert emp dconExprs
              f p = p{writeFields = Set.union writeSet (writeFields p)}
          in do updateSiteSet n (Set.singleton num)
                mapM_ (`updatePtrSet` id) ptrArgs
                updatePtrSet n f
        _ -> error $ "Non-singleton arguments to write call: " ++ show arg 
    --Given (case vd of alts), where either (vd = read p) or vd is a type containing
    --pointers, add any patterns matched against vd that have pointer fields to p's record
    --(or, in the second case, to vd's record).
    updateReadSet alts e t = 
      let dconExprs = foldl getPtrDcons [] alts
          ptrArgs = concatMap collectPtrs dconExprs
          f p = p{readFields = Set.union (Set.fromList dconExprs) (readFields p)}
      in case e of
          Var (_, readArg) _ -> do updatePtrSet readArg f
                                   mapM_ (`updatePtrSet` id) ptrArgs
          _ -> error $ "Expecting name bound to read call: " ++ show e
      where
        --Convert any patterns containing pointer fields into 
        --data constructor expressions
        getPtrDcons l (Adefault _) = l
        getPtrDcons l (Alit _ _)   = l
        getPtrDcons l (Acon dc _ vbs _) = 
          let newTy = mkLambdaType (map Vb vbs) t
          in if any ((`elem` ptys sinfo) . snd) vbs
            then mkFuncApp (Dcon dc newTy) [] (map vbToVar vbs) : l
            else l
        vbToVar (v',t') = Var (Nothing, v') t'

    --Modify the information associated with a given variable
    updatePtrSet :: Var -> (PInfo -> PInfo) -> Env ()
    updatePtrSet toUpdate modFunc = do
      (s',s) <- get
      let prevInfo = find ((== toUpdate) . vname) s
          freshInfo = (\p -> p{vname = toUpdate}) $ modFunc emptyInfo
      --Insert this var with new site and points-to info
      put (s', maybe (freshInfo : s) 
                     (\oldTup -> modFunc oldTup : delete oldTup s)
                     prevInfo)

    --------helper defiitions---------
    
    collectPtrs e = let (_, args, _) = collectArgs e
                    in map getVarName $ 
                       filter ((`elem` ptys sinfo) . exprType) args

    emp = Set.empty
    emptyInfo = PInfo { vname = ""
                      , locs = emp
                      , assignedTo = emp
                      , readFields = emp
                      , writeFields = emp
                      }

-- | Perform Andersen-style points-to analysis. Given initial info about
-- each ptype variable in the program, create a map from each of these 
-- variables to their possible allocation sites.
andersen :: [Ty] -> PointsToInfo -> Map.Map Var (Set.Set Int)
andersen ptys' pinfoList = go initMap initWorkSet
  where
    --Start with those variables with at least one non-empty set
    --of information to propagate
    initWorkSet = Set.fromList $ Map.keys $ 
                  Map.filter requiresClosure initMap
    requiresClosure p = not $ Set.null (locs p) && 
                              Set.null (readFields p) && 
                              Set.null (writeFields p)

    --Create initial mapping for algorithm (this encodes our points-to
    --graph, along with the information for each node)
    initMap = foldl mkMap Map.empty pinfoList
    mkMap m pinfo = Map.insert (vname pinfo) pinfo m

    --Given the current mapping capturing the whole graph and a set of nodes
    --to inspect, perform an iteration of the Andersen workqueue algorithm
    --or return the final mapping of vars to sites
    go m workSet = if Set.null workSet
                     then Map.map locs m 
                     else uncurry go nextIter 
      where 
        --next node to process
        var = Set.findMin workSet
        pinfo' = fromMaybe (findErr var) $ Map.lookup var m
        --map and workSet after processing current node
        nextIter = updateRefs pinfo' $          --add edges for read/write fields
                   Set.foldl (updatePts pinfo') --propagate allocation sites
                   (m,Set.delete var workSet)   --remove current node 
                   (assignedTo pinfo')

    --Propagate information from n to n', where n->n' is an edge in our graph.
    --Add n' to the workSet if it has been modified.
    updatePts pinfo (m',workSet') nodeToUpdate = 
      if newInfo /= Map.lookup nodeToUpdate m'
         then (newM, Set.insert nodeToUpdate workSet')
         else (newM, workSet')
      where
        (newInfo, newM) = Map.updateLookupWithKey f nodeToUpdate m'
        f _ p = Just (p{locs        = mkUnion locs p
                       ,writeFields = mkUnion writeFields p
                       ,readFields  = mkUnion readFields p})
        mkUnion g p = Set.union (g p) (g pinfo)

    -- If the current node has non-empty readFields or writeFields sets
    -- create edges p -> p' for all p,p' such that (D ... p ...)
    -- is in the writeFields set and (D ... p' ...) is in the readFields set
    -- (where p and p' are at the same field index)
    updateRefs pinfo tup 
      | null rs && null ws = tup
      | otherwise = foldr addEdges tup varBinds
      where
        --each pointer-based field of a pattern bound to corresponding
        --field of a written expr
        varBinds = concatMap mkBinds matchings
        mkBinds (rExp,wExp) = let (_, rArgs, _) = collectArgs rExp
                                  (_, wArgs, _) = collectArgs wExp
                                  f = map getVarName . 
                                      filter ((`elem` ptys') . exprType)
                              in zip (f rArgs) (f wArgs)
        --create pairs (r,w) for each read pattern r that could be
        --associated with a written expression w
        matchings = catMaybes (compareConstrs <$> rs <*> ws)
        compareConstrs x y = let (constrX,_,_) = collectArgs x
                                 (constrY,_,_) = collectArgs y
                             in do nameX <- getDconName constrX 
                                   nameY <- getDconName constrY 
                                   guard (nameX == nameY)
                                   return (x,y)
        rs = Set.toList $ readFields pinfo
        ws = Set.toList $ writeFields pinfo

        getDconName (Dcon (_,name) _) = Just name
        getDconName _ = Nothing

    -- If it doesn't already exist, add edge src->dest to our graph and
    -- propagate src's info to dest.
    addEdges (dest,src) (m', workSet') = 
      let f _ p = Just p{assignedTo = Set.insert dest (assignedTo p)}
          (srcInfo,newM) = Map.updateLookupWithKey f src m'
          findDest = Set.member dest . assignedTo
      in if maybe (findErr src) findDest $ Map.lookup src m'
          then (m', workSet') 
          else updatePts (fromMaybe (error "Issue with srcInfo") srcInfo) 
                         (newM, workSet') dest

    findErr var = error $ var ++ " not in map "

