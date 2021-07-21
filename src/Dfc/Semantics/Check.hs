{-
Module : Dfc.Check
Description : Semantic checker for a Dfc AST. This produces a
              semantically consistent SAST.

-}
module Dfc.Semantics.Check where

import Dfc.Semantics.Errors
import Control.Exception
import Dfc.AST 
import Dfc.SAST 

import qualified Data.Graph as Graph
import Data.List
import Data.Maybe
import Control.Monad.Reader
import Control.Monad ( when )
import Control.Applicative ((<$>))

-- import Debug.Trace 

-- | Environment to help with checks
data Env = Env { types :: [Tdef]
               , sigs  :: [Nsig]
               , curBinds :: [(Param,SArg)]
               , curSig :: Nsig
               }

-- | Monadic environment
type EnvM = ReaderT Env (Either String)

-- | Convert a parsed AST into a semantically consistent SAST.
semCheck :: Dataflow -> SDataflow
semCheck (Dataflow tdefs signatures instances) = sFlow
  where
    sFlow = case runReaderT (checkNetwork instances) env of
                Left err -> throw $ SemantError err
                Right result -> result
    env = Env { types = tdefs
              , sigs = signatures 
              , curBinds = [] 
              , curSig = Nsig{}}

-- | Semantically check a dataflow network
checkNetwork :: [Ninst] -> EnvM SDataflow
checkNetwork instances = do
  checkTdefs
  checkSignatures
  sNodes <- mapM toSast instances
  checkPorts sNodes
  tdefs <- asks types
  signatures <- asks sigs
  return $ SDataflow tdefs signatures sNodes

-- | Check type definitions for correctness
checkTdefs :: EnvM ()
checkTdefs = do tdefs <- asks types
                nonMutRecursive
                mapM_ nonRecursive tdefs
                mapM_ fieldsDefined tdefs
                mapM_ uniqueTcons tdefs
                mapM_ uniqueDcons tdefs
  where
    -- no mutually recursive types
    nonMutRecursive = do
      graph <- asks (map constructGraph . filter noPointers . types)
      let sccLists = map Graph.flattenSCC $ Graph.stronglyConnComp graph
          scc = find ((> 1) . length) sccLists
      check (isJust scc) (mutRecErr (fromJust scc))
    constructGraph (Tdef tc vars) = (tc, tc, concatMap allFields vars)
    constructGraph (Unsigned tc _) = (tc, tc, [])
    constructGraph (Signed tc _) = (tc, tc, [])
    allFields (Variant _ tys) = tys
    -- TODO: Abstract pointer types break the mutual recursion rule
    noPointers (Tdef tc _) = not ("Pointer_" `isPrefixOf` tc)
    noPointers (Unsigned _ _) = True
    noPointers (Signed _ _) = True
     -- no recursive types
    nonRecursive (Tdef tc vars) = 
      check (any (\(Variant _ tys) -> tc `elem` tys) vars)
            (recErr tc)
    nonRecursive (Unsigned _ _) = return ()
    nonRecursive (Signed _ _) = return ()
    -- All types used as fields have been defined 
    fieldsDefined (Tdef _ vars) = mapM_ checkFields vars
    fieldsDefined (Unsigned _ _) = return ()
    fieldsDefined (Signed _ _) = return ()                                  
    checkFields (Variant _ tys) = mapM_ checkTy tys
    -- All type constructors are unique
    -- TODO: This is really inefficient: type names should be collected,
    -- sorted, and then compared nearby
    uniqueTcons tdef@(Tdef tc _) = 
      do tdefs <- asks (delete tdef . types)
         check (any ((== tc) . getTyName) tdefs) (uniqueTyErr tc)
    uniqueTcons tdef@(Unsigned tc _) = 
      do tdefs <- asks (delete tdef . types)
         check (any ((== tc) . getTyName) tdefs) (uniqueTyErr tc)
    uniqueTcons tdef@(Signed tc _) = 
      do tdefs <- asks (delete tdef . types)
         check (any ((== tc) . getTyName) tdefs) (uniqueTyErr tc)               
    -- All data constructors are unique 
    uniqueDcons tdef@(Tdef _ vars) = 
      let dcons = map (\(Variant dc _) -> dc) vars
      in do tdefs <- asks (delete tdef . types)
            check (nub dcons /= dcons || 
                   any (`elem` dcons) (concatMap getDcons tdefs))
                  (uniqueDcErr dcons)
    uniqueDcons (Unsigned _ _) = return ()
    uniqueDcons (Signed _ _) = return ()
                                 

    check bool err = when bool (left err)

    mutRecErr scc = "The type definitions for " ++ show scc ++ 
                    " are mutually recursive"
    recErr tc = "The type definition for " ++ tc ++ " is recursive." 
    uniqueTyErr tc = "Multiple types named " ++ tc 
    uniqueDcErr dcs = "Some data constructor in this list is defined " ++
                     "multiple times: " ++ show dcs
    
-- | Check node signatures for correctness
checkSignatures :: EnvM ()
checkSignatures = do nsigs <- asks sigs
                     uniqueSigs nsigs
                     mapM_ tyVarsDefined nsigs
                     mapM_ checkFuncs nsigs
                     mapM_ checkLastExp nsigs
  where
    -- Each signature needs a unique name
    uniqueSigs nsigs = let names = map getSigName nsigs
                           copies = filter ((> 1) . length) $ group $ sort names
                       in unless (null copies)
                                 (left $ dupSigErr $ head $ head copies)
    dupSigErr dupl = "Multiple signatures are named " ++ show dupl 

    -- Type variables appearing on the rhs of a ':' operator must be defined
    tyVarsDefined (Nsig sig prms inExps outExps) = do
      tyVars <- foldM checkTyVars [] prms
      when (nub tyVars /= tyVars) (left $ dupErr tyVars)
      mapM_ (checkExp tyVars) (inExps ++ outExps)
     where

      -- Collecting type parameters and doing some checks
      checkTyVars z (Var tyVar) = return $ tyVar : z
      checkTyVars z (Typed tyVar tExp) = do checkExp z tExp
                                            return $ tyVar : z
      --Type variables must be declared
      checkExp vars (Aexp v)             = unless (v `elem` vars)
                                                  (left $ undefTyErr v)
      checkExp vars (Func _ ex)          = checkExp vars ex 
      checkExp vars (Op ex1 (Carat ex2)) = checkExp vars ex1 >> checkExp vars ex2
      checkExp vars (Op ex _)            = checkExp vars ex
      checkExp _    _                    = return ()

      undefTyErr tv = "Unexpected type variable " ++ tv ++ 
                      " in signature " ++ sig
      dupErr tvs = "Some type variable is duplicated in the parameter list " 
                    ++ show tvs ++ " for signature " ++ sig

    -- Check type functions and operations for correctness 
    checkFuncs (Nsig sig prms inExps outExps) = do
      mapM_ checkParams prms
      mapM_ checkExps (inExps ++ outExps)
     where
      checkParams (Typed _ texp) = checkPExp texp
      checkParams _              = return ()

      -- No operators in a parameter's type expression, and only the 'dcon' 
      -- function (applied to one type argument) is permitted.
      checkPExp (Func (Aexp "dcon") (Aexp _)) = return ()
      checkPExp (Func (Aexp "dcon") _       ) = err $ funcArgErr "dcon"
      checkPExp (Func func          _       ) = err $ funcPrmErr func
      checkPExp (Op _ op)                     = err $ opErr op
      checkPExp _                             = return ()

      -- '+' and '^' can only be applied to type variables.
      -- '^' must be followed by a well-defined 'variants' application.
      checkExps (Op (Aexp _) Plus)           = return ()
      checkExps (Op (Aexp _) o@(Carat texp)) = checkVariant o texp
      checkExps (Op _        op)             = err $ opAppErr op
      checkExps (Func (Aexp func) texp)
        | func `notElem` allFuncs = err $ undefErr func   --undefined
        | func `notElem` expFuncs = err $ funcExpErr func --no meaning
        | otherwise = case texp of --a function must have a single type arg
                        Aexp arg -> when (arg `elem` allFuncs)
                                         (err $ funcArgErr func)
                        _ -> err $ funcArgErr func
      checkExps (Func f _) = err $ undefErr $ show f
      checkExps _          = return ()

      -- All semantically meaningful functions
      allFuncs = ["dcon","variants"] ++ expFuncs
      -- The only functions that can appear as lone type expressions
      expFuncs = ["fields","dcon_fields"]
      -- The 'variants' function must be applied to a single type
      -- variable.
      checkVariant _ (Func (Aexp "variants") (Aexp _)) = return ()
      checkVariant _ (Func (Aexp "variants") _) = err $ funcArgErr "variants"
      checkVariant op _ = err $ opAppErr op

      err = left . sigErr
      sigErr s = "Error in signature " ++ show sig ++ ": " ++ s
      opErr op = "Operation " ++ show op ++ " is in a parameter definition"
      opAppErr op = "Operation " ++ show op ++ " has unexpected arguments"
      undefErr func = "Undefined function " ++ func
      funcArgErr func = "Unexpected argument for function " ++ show func
      funcPrmErr func = "Function " ++ show func ++ " is in a parameter definition"
      funcExpErr func = "Function " ++ show func ++ " usage undefined"

    -- No type expressions may follow a variable
    -- applied to the '+' operator 
    checkLastExp  (Nsig sig prms inExps outExps) 
      | null prms = return ()
      | otherwise = let preExps = getInit inExps ++ getInit outExps
                    in  when (any isPlus preExps) (err plusErr)
                    
      where
        getInit l = if null l then l else init l
        isPlus (Op _ Plus) = True
        isPlus _           = False

        err = left . sigErr
        sigErr s = "Error in signature " ++ show sig ++ ": " ++ s
        plusErr = "No types may follow an expression using the '+' operator"
      


-- | Convert a node instance into a semantically checked node
toSast :: Ninst -> EnvM SNode
toSast (Node outputs name args inputs) = do
  thisSig <- findSig name 
  bindings <- bindArgs thisSig args
  (sInputs,sOutputs) <-  (addInfo bindings thisSig . semChannel) (inputs, outputs)
  return $ SNode name (map snd bindings) sInputs sOutputs
  where
    addInfo :: [(Param, SArg)] -> Nsig -> EnvM ([Chan], [Chan]) -> EnvM ([Chan], [Chan])
    addInfo bs sig = local (\r -> r { curBinds = bs, curSig = sig }) 

    semChannel (ins, outs) = do (Nsig _ _ inExps outExps) <- asks curSig
                                newIns  <- unifyChan ins inExps
                                newOuts <- unifyChan outs outExps
                                return (newIns,newOuts)

    err = left . sigErr
    sigErr s = "Error when checking a " ++ show name ++ " instance: " ++ s

    -- Unify each channel name with the appropriate type expression
    unifyChan []    [] = return []
    unifyChan _     [] = err chanSizeErr
    unifyChan chans (texp:rest) 
      | null chans = err chanSizeErr
      | otherwise  = let (chan:restC) = chans in
         case texp of
          SigType tc -> fmap (Bind chan tc:) (unifyChan restC rest)
          Aexp tyVar -> do sArg <- findBindArg tyVar
                           case sArg of
                            STyArg tc -> do result <- unifyChan restC rest
                                            return $ Bind chan tc : result
                            _ -> err $ chanBindErr chan
          Op (Aexp tyVar) Plus -> do tc <- findBoundTy tyVar
                                     return [Group $ map (flip Bind tc) chans]
          Op (Aexp tyVar) (Carat (Func _ (Aexp tyArg))) -> do
            baseTy   <- findBoundTy tyVar
            caratTy  <- findBoundTy tyArg
            totalTys <- countVariants caratTy
            when (length chans < totalTys) (err chanSizeErr)
            let (toBind,others) = splitAt totalTys chans
                chanBinds = Group $ map (flip Bind baseTy) toBind
            fmap (chanBinds:) (unifyChan others rest)
          Func (Aexp "dcon_fields") (Aexp dcVar) -> do
            sArg <- findBindArg dcVar
            case sArg of
              SDconArg dcon -> do 
                dconFields <- findFields dcon
                when (length chans < length dconFields) (err chanSizeErr)
                let (toBind,others) = splitAt (length dconFields) chans
                    chanBinds = Group $ zipWith Bind toBind dconFields
                fmap (chanBinds:) (unifyChan others rest)
              _ -> err $ dcErr dcVar
          _ -> err $ "Couldn't unify " ++ show chans ++ " with " ++ show (texp:rest)

    findFields dc = do tdef <- asks (find (elem dc . getDcons) . types)
                       case tdef of
                        Just (Tdef _ vars) ->
                          case find (\(Variant v _) -> v == dc) vars of
                            Just (Variant _ fields) -> return fields
                            _ -> tyCheckErr "findFields"
                        _ -> tyCheckErr "findFields"

    countVariants ty = do tdef <- asks (find ((==ty) . getTyName) . types)
                          case tdef of
                            Just (Tdef _ vars) -> return $ length vars
                            _                  -> tyCheckErr "countVariants"
    findBoundTy tv = do mbArg <- asks (lookup (Var tv) . curBinds)
                        case mbArg of
                          Just (STyArg tc) -> return tc
                          _                -> tyCheckErr "fundBoundTy"
    findBindArg tv = do mbArg <- asks (lookup (Var tv) . curBinds)
                        case mbArg of
                         Just sArg -> return sArg
                         _         -> tyCheckErr "findBindArg"
    chanSizeErr = "Incorrect number of channels"
    chanBindErr chan = "Channel " ++ show chan ++ " must be bound to a type"
    tyCheckErr func = left $ "TYPE CHECK ERROR: see " ++ func ++ " function"
    dcErr dc = "Function 'dcon_fields' applied to non-dcon argument " ++ show dc

-- | Find a node's signature
findSig :: String -> EnvM Nsig
findSig name = do nsigs <- asks sigs
                  let thisSig = find ((== name) . getSigName) nsigs
                  maybe (left errMsg) return thisSig
  where
    errMsg = "Node " ++ name ++ " does not have a signature"

-- | Check instance arguments against signature, and bind any concrete
-- values to a signature's parameters.
bindArgs :: Nsig -> [Arg] -> EnvM [(Param,SArg)]
bindArgs (Nsig sig params _ _) args = do
  toBind <- myZip params args
  revBinds <- collect toBind
  return $ reverse revBinds
  where
    sizeErr = "Size mismatch between instances arguments (" ++ show args ++ 
              ") and signature parameters (" ++ show params ++")"
    wrongTyErr = "A value argument has a mismatched type in signature \'" ++
                 sig ++ "\'"

    -- | Bind each argument to a parameter. Return an error if the number 
    -- of args doesn't match the number of params.
    myZip []        []             = return [] 
    myZip _         []             = left sizeErr
    myZip []        _              = left sizeErr
    myZip (p:restP) (arg:restArgs) = ((p, arg) :) <$> myZip restP restArgs

    addBind bind rest = local update (collect rest)
      where
        update env = env { curBinds = bind : curBinds env }

    -- | Bind each signature parameter to a node instance argument,
    -- making various semantic checks as we go
    collect :: [(Param,Arg)] -> EnvM [(Param,SArg)]
    collect [] = asks curBinds -- return collected bindings
    collect ((Var v, UserArg ty) : rest) =             --type argument
      checkTy ty >> addBind (Var v, STyArg ty) rest
    collect ((Typed v (Func (Aexp "dcon") (Aexp tyVar)), --dcon argument
             UserArg dc) : rest) =
      do binds    <- asks curBinds
         boundTy  <- findBind tyVar binds
         expected <- checkDcon dc
         if expected == boundTy
            then addBind (Var v, SDconArg dc) rest
            else left wrongTyErr
    collect ((Typed v (Aexp tyvar), arg) : rest) =     --constant argument
      do binds   <- asks curBinds
         boundTy <- findBind tyvar binds
         sArg    <- convertArg boundTy arg
         addBind (Var v, sArg) rest
    collect ((sigArg,arg):_) = left $ "Failed to match signature parameter "
                               ++ show sigArg ++ " against instance argument "
                               ++ show arg

    -- Either a numeric or data constructor constant
    convertArg concTy (LitArg num) = if isNumTy concTy 
                                      then return (SLitArg num) 
                                      else left wrongTyErr
    convertArg concTy (UserArg dc) = do expected <- checkDcon dc
                                        if expected == concTy 
                                          then return (SDconArg dc) 
                                          else left wrongTyErr

    -- | Check that a type variable (specifying the type of a value
    -- argument), was previously bound. Return the bound concrete
    -- type.
    findBind tv binds = case lookup (Var tv) binds of
                         Just (STyArg ty) -> return ty
                         _ -> left "TYPE CHECK ERROR: see findBind function"

-- | Check if a data constructor exists and return its associated
-- type constructor.
checkDcon :: Dcon -> EnvM Tcon
checkDcon dc = do tys <- asks types
                  let ty = find hasDcon tys
                  maybe (left errMsg) (return . getTyName) ty
  where
    hasDcon (Tdef _ vars) = any hasIt vars
    hasDcon (Unsigned _ _ ) = False
    hasDcon (Signed _ _ ) = False
    hasIt (Variant dcon _) = dcon == dc
    errMsg = "Dcon " ++ dc ++ " is not defined"

-- | Check if a concrete type has been defined
checkTy :: Tcon -> EnvM ()
checkTy t = do tys <- asks types
               unless (tyExists t tys) (left errMsg)
-- || isPrimTy t

  where
  errMsg = "Type " ++ t ++ " is undefined"
  tyExists ty = isJust . find ((== ty) . getTyName)

-- | Check that all port names occur as exactly one input and one output,
-- and that both instances are bound to the same type.
checkPorts :: [SNode] -> EnvM ()
checkPorts nodes = let (inBinds,outBinds) = unzip $ map getPorts $ 
                                                    filter notTap nodes
                       allins = sort $ concat inBinds
                       allouts = sort $ concat outBinds
                   in do uniq allins
                         uniq allouts
                         walk allins allouts
  where
    notTap (SNode "tap" _ _ _) = False
    notTap _ = True
    getPorts (SNode _ _ ins outs) = (flatten ins, flatten outs) 
    flatten = concatMap extract
    extract (Group channels) = flatten channels
    extract (Bind "_" _) = []
    extract chan = [chan]

    uniq chans = let toMany = find ((> 1) . length) $ group $ 
                              concatMap getChanNames chans
                 in Control.Monad.when (isJust toMany) $ left $ portErr (head $ fromJust toMany)
--                   if isJust toMany
--                      then left $ portErr (head $ fromJust toMany)
--                      else return ()

    walk []           []          = return ()
    walk (Bind p _:_) []          = left $ portErr p
    walk []           (Bind p _:_) = left $ portErr p
    walk (Bind inP inTy:ins)  (Bind outP outTy:outs)  
      | inP /= outP  && Bind inP inTy `notElem` outs = left $ portErr inP
      | inP /= outP  && Bind outP outTy `notElem` ins = left $ portErr outP
      | inTy /= outTy = left $ tyErr inP inTy outTy
      | otherwise = walk ins outs
    walk _ _ = left "Channel groups leftover in 'walk' function"

    portErr p = "Port " ++ p ++ " must appear exactly twice"
    tyErr p t1 t2 = "Port " ++ p ++ " has type " ++ show t1
                    ++ " as an input and type " ++ show t2
                    ++ " as an output"


-- | Lift a Left instance into the Reader monad 
left :: String -> EnvM a
left = lift . Left

getSigName :: Nsig -> String
getSigName (Nsig name _ _ _) = name

getDcons :: Tdef -> [Dcon]
getDcons (Tdef _ vars) = map (\(Variant dcon _) -> dcon) vars
getDcons (Unsigned _ _) = [] --error "getDcons called on unsigned"
getDcons (Signed _ _) = [] --error "getDcons called on signed"

getTyName :: Tdef -> Tcon
getTyName (Tdef name _) = name
getTyName (Unsigned name _) = name
getTyName (Signed name _) = name

-- TODO: should be removed
-- | Check if a given type is one of our numeric primitives
isNumTy :: Tcon -> Bool
isNumTy = (`elem` ["Int#","Word#", "Int4#", "Word4#", "Int8#", "Word8#", "Int16#", "Word16#"])
