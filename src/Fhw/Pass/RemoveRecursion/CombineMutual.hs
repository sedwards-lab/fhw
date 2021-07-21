{-# LANGUAGE DeriveDataTypeable #-}

{- |
Module : Fhw.Pass.RemoveRecursion.CombineMutual 
Description : Combine the mutually recursive functions into single recursive
function
-}
module Fhw.Pass.RemoveRecursion.CombineMutual where

import Fhw.Core.Core
import Fhw.Pass.RemoveRecursion.Utils

import Control.Exception
import Data.Graph
import Data.List
import Data.Maybe
import Data.Typeable
import Data.Char (isUpper)
--import Debug.Trace 

data Exceptional = CombineErr String
  deriving (Show, Typeable)

instance Exception Exceptional

-- | Given a list of vdefs, find and combine the mutually dependent vdefs.
combineMutualVdefs :: [Vdef] -> ([Tdef], [Vdef])
combineMutualVdefs vdefs = (concat tdefss_out, concat vdefss_out)
  where
  vdefss :: [[Vdef]]
  vdefss = map (map f) $ getSccNames vdefs
    where
    f :: String -> Vdef
    f name = fromJust $ find (\(Vdef (_, v) _ _) -> v == name) vdefs

  combinedFunNames = map (\n -> "cfn__" ++ show (n :: Int)) [1..]

  zipped :: [([Vdef], Var)]
  zipped = zip vdefss combinedFunNames

  trans :: ([Vdef], Var) -> ([Tdef], [Vdef])
  trans = uncurry combineOneGroup

  (tdefss_out, vdefss_out) = unzip $ map trans zipped

-- | Combine one group of mutually recursive functions.
combineOneGroup :: [Vdef]            -- ^ One scc group.
                -> Var               -- ^ Combined function name.
                -> ([Tdef], [Vdef])  -- ^ Combined vdefs with sum type.
combineOneGroup vdefs cfname = if length deps > 1
                               then (tdefs3, vdefs3)
                               else ([], vdefs)
  where
  deps = map (\(Vdef (_, vn) _ _) -> vn) vdefs
  touchedVdefs = vdefs

  -- If there are different return types, the group need to be combined.
  needCombineRt =
    let rts = map (\(Vdef _ ty _) -> last $ uncurryTapp ty) touchedVdefs
    in (length . nub) rts > 1

  -- Now the mutually recursive functions are the wrappers. There should be
  -- exactly one group of mutually recursive functions.
  mut_groups' = filter (\vs -> length vs > 1) $ getSccNames vdefs2

  deps' = assert (length mut_groups' == 1) (head mut_groups')

  (_, tdefs1, vdefs1) = if needCombineRt
                        then combineReturn1 deps ([], [], vdefs)
                        else ([], [], vdefs)
  (tdefs2, vdefs2) = if needCombineRt
                     then inlineUnwrappersOld tdefs1 vdefs1
                     else (tdefs1, vdefs1)
  (tdefs3, vdefs3) = if needCombineRt
                     then combineInput1WithName cfname deps' (tdefs2, vdefs2)
                     else combineInput1WithName cfname deps (tdefs2, vdefs2)

  -- After combining input, should inline f_p, g_p in f and g, so that f_p
  -- and g_p won't appear in the final output.

-- | Combine the return type of mutually recursive functions.
--
-- The input includes SCC which contains the dependencies between nodes.
-- After this function, all mutually recursive functions return same type.
combineReturn :: [Tdef]            -- ^ Type definition list.
              -> [Vdef]            -- ^ Variable definition list.
              -> [[String]]        -- ^ The SCC.
              -> ([Var], [Tdef], [Vdef])  -- ^ Result after combining return
                                          -- types.
combineReturn tdefs vdefs = foldr combineReturn1 ([], tdefs,vdefs)

-- | Combine the return type of vdefs in one strongly connected component.
combineReturn1 :: [String]                 -- ^ One SCC group.
               -> ([Var], [Tdef], [Vdef])
               -> ([Var], [Tdef], [Vdef])  -- ^ New lists after combining the SCC node.
combineReturn1 deps (_, tdefs, vdefs) = case deps of
    [_] -> ([], tdefs, vdefs)
    _   -> (wrapper_fun_names, tdefs', vdefs')
  where
  wrapper_fun_names = []  -- TODO(kuangya)

  -- ---------------------------------------------------------------------------
  -- Compute tdefs'
  -- ---------------------------------------------------------------------------
  -- The new tdefs is the original tdefs adding a new SumType.
  tdefs' = sumTypeTdef : tdefs

  sumTypeTdef = Data qtycon [] cdefs

  sumType = Tcon (Nothing,sumTconName)

  -- The module name for the top-level vdefs and tdefs.
  -- mname = getMname vdefs
  mname = Nothing

  qtycon = (mname, sumTconName)

  sumTconName = combineOutputPrefix ++ intercalate "_" deps

  cdefs = map varToCdef deps
    where
    varToCdef :: Var -> Cdef
    varToCdef var =
        Constr (mname, combineOutputPrefix ++ var) [] [varType var vdefs]

    -- Get the return type of a variable from the list of the global
    -- vdefs.
    varType :: Var -> [Vdef] -> Ty
    varType var1 vdefs1 = case find (f var1) vdefs1 of
        Just (Vdef _ ty _) -> lastType ty
        Nothing -> throw $ CombineErr $ "Can't find " ++ var1 ++ " in vdefs (1)"

    f :: Var -> Vdef -> Bool
    f var1 (Vdef (_, var2) _ _) = var1 == var2

  -- ---------------------------------------------------------------------------
  -- Compute vdefs'
  -- ---------------------------------------------------------------------------
  -- Add new functions that return the SumType.
  -- Change the original function definitions to unwrapper functions.
  -- The functions to be handled are stored in deps :: [String].
  -- New vdefs include:
  -- > [f_p] ++ [f] ++ [untouched functions]
  vdefs' = mapMaybe f2fp deps ++
           unwrappers ++
           filter (\(Vdef (_, var) _ _) -> var `notElem` deps) vdefs
    where
    -- i.e., f and g.
    unwrappers :: [Vdef]
    unwrappers = map varToVdef deps

    varToVdef :: Var -> Vdef
    varToVdef var = unwrapVdef vdef
      where
      -- The original function (Vdef) to be changed.
      vdef = fromJust $ find (\(Vdef (_, var1) _ _) -> var == var1)
                             vdefs

      unwrapVdef :: Vdef -> Vdef
      unwrapVdef (Vdef (omn, var1) ty expr) =
          Vdef (omn, var1) ty (unwrapExp expr)
        where
        unwrapExp :: Exp -> Exp
        unwrapExp expr1 = case expr1 of
            Lam binds _ -> Lam binds (tExp binds)
            _ -> throw $ CombineErr "Only Lam binding is allowed"

        -- Call the newly added function, unwrap the result and return.
        tExp :: [Bind] -> Exp
        tExp binds = Case expr'' vbind rtType alts
          where
          expr'' =
            foldl appBind (Var (Nothing, var ++ wrapperPostfix) varTy) binds

          appBind :: Exp -> Bind -> Exp
          appBind ae (Vb (v, t)) = App ae $ Var (Nothing, v) t
          appBind _ (Tb _) = error "shouldn't be a type bind here"

          varTy = curryTapp $ init (uncurryTapp ty) ++ [sumType]

          -- This is the return type of the case alternatives.
          rtType = last $ uncurryTapp ty

          vbind = ("dummyVbind", rtType)

          alts =
              [Acon (Nothing, combineOutputPrefix ++ var) [] [localVbind]
                    localVarExp]
            where
            localVar = "r"
            localVbind = (localVar, rtType)
            localVarExp = Var (Nothing, localVar) rtType

  -- f to f_p transformation.
  f2fp :: Var -> Maybe Vdef
  f2fp = changeFunction . originalFunction
    where
    -- Find the Vdef with the name of Var.
    originalFunction :: Var -> Maybe Vdef
    originalFunction var = find (\(Vdef (_, var1) _ _) -> var == var1) vdefs

    -- Change the function name (var) to a new one, change the return type to
    -- the SumType, wrap the return type into the SumType in exp.
    changeFunction :: Maybe Vdef -> Maybe Vdef
    changeFunction Nothing = Nothing
    changeFunction (Just (Vdef (_, var) fty expr)) =
        Just (Vdef (Nothing, var') ty' expr')
      where
      var' = var ++ wrapperPostfix

      -- Change the return type to the SumType.
      ty' :: Ty
      ty' = changeReturnType fty
        where
        -- TODO: Need to check whether this works for all.
        -- TODO: This is not correct!
        changeReturnType :: Ty -> Ty
        changeReturnType ty0 = case ty0 of
            (Tapp (Tapp (Tcon tc) ty1) ty2) | tc == tcArrow ->
                tArrow ty1 $ changeReturnType ty2
            _  -> Tcon qtycon

      -- DconTy: OrigOutType -> NewOutType
      dconTy = tArrow (lastType fty) (lastType ty')

      -- Wrap the return type into the SumType.
      expr' :: Exp
      expr' = Lam obinds (mapReturn f oimpl)
        where
        Lam obinds oimpl = expr
        f :: Exp -> Exp
        f = App (Dcon (Nothing, combineOutputPrefix ++ var) dconTy)

-- | With the combined function name given at the calling site instead generate
-- one by adding prefix.
combineInput1WithName :: Var    -- ^ The given combined function name.
                      -> [Var]  -- ^ The names of the vdefs to be combined.
                      -> ([Tdef], [Vdef])
                      -> ([Tdef], [Vdef])
combineInput1WithName combineFunctionName deps (tdefs, vdefs) =
    if length deps == 1
    then (tdefs, vdefs)
    else (tdefs', vdefs')
  where
  vdefs' = newVdefs ++ oVdefs ++ untouchedVdefs ++ [combinedFunctionVdef]

  untouchedVdefs =
    filter (\(Vdef (_, v) _ _) -> v `notElem` (deps ++ oVars)) vdefs

  touchedVdefs = filter (\(Vdef (_, var1) _ _) -> var1 `elem` deps) vdefs

  oVars = map (\(Vdef (_, v) _ _) -> v) oVdefs

  oVdefs :: [Vdef]
  oVdefs = mapMaybe find_original touchedVdefs
    where
    find_original :: Vdef -> Maybe Vdef
    find_original (Vdef (_, var_p) _ _) =
        find (\(Vdef (_, var) _ _) -> var_p == var ++ wrapperPostfix) vdefs

  -- | The module name of the reported top level vdefs.
  mname = getMname vdefs

  newVdefs = map transVdef touchedVdefs

  commonReturnTy = getCommonOutputTy touchedVdefs

  sumTy = Tcon (Nothing,sumTypeName)

  -- The input is the sum type for all the inputs.
  -- The output is the common output of all functions.
  -- (Tapp (Tapp (Tcon ghc-prim:GHC.Prim.->) a) b)
  combineFunctionTy = tArrow sumTy commonReturnTy

  -- NOTE(kuangya): Changed from Var to Dcon.
  combinedFunctionVar = Var (mname, combineFunctionName) combineFunctionTy

  -- Call the combined function at each original function.
  -- i.e., f x1 ... xn = fg (F x1 ... xn)
  transVdef :: Vdef -> Vdef
  transVdef (Vdef (omn, var) ty expr) = case expr of
      Lam binds _ -> Vdef (omn, var) ty (Lam binds expr')
        where
        expr' = App combinedFunctionVar (constructAppExp dcon binds)
      _ -> Vdef (omn, var) ty
                (App combinedFunctionVar (constructAppExp dcon []))
      -- _ -> throw $ CombineErr $ "Should be a Lam expression. Actual: " ++
      --                           show expr
    where
    dcon = Dcon (Nothing, combineInputPrefix var) dconTy

    -- dconTy :: InputType -> sumTy
    -- dconTy = tArrow (initType ty) sumTy
    dconTy = curryTapp $ (init . uncurryTapp) ty ++ [sumTy]

  -- Construct an App expression from a list of variable bindings.
  constructAppExp :: Exp -> [Bind] -> Exp
  constructAppExp = foldl f
    where
    f :: Exp -> Bind -> Exp
    f e1 (Vb (var, ty)) = App e1 (Var (Nothing, var) ty)
    f _ _ = throw $ CombineErr "Shoule be vbinds only"

  combinedFunctionVdef =
      Vdef (mname, combineFunctionName) combineFunctionTy expr
    where
    expr = Lam [Vb ("arg", sumTy)]
         $ Case (Var (Nothing, "arg") sumTy)
                ("dummyVbind", sumTy)
                commonReturnTy
                alts

    alts = map vdefToAlt touchedVdefs

    -- Convert each original function into an alt branch in the new combined
    -- function.
    -- XXX(kuangya): the toplevel vdef can be something other than function
    -- with parameters.
    vdefToAlt (Vdef (_, var) _ e') = case e' of
        Lam binds1 e'' -> Acon (Nothing, combineInputPrefix var)
                               []
                               (map bindToVbind binds1)
                               (mapExpr wrapFG e'')
        _ -> Acon (Nothing, combineInputPrefix var)
                  []
                  []
                  (mapExpr wrapFG e')
        -- _ -> throw $ CombineErr $ "The first expr shoule be Lam. Actual: " ++
        --                           show e'
      where
      bindToVbind :: Bind -> Vbind
      bindToVbind bind = case bind of
          Vb (var1, ty) -> (var1, ty)
          Tb _ -> throw $ CombineErr "Should be Vbind only"

      wrapFG :: Exp -> Exp
      wrapFG e0 = case e0 of
        App _ _ -> if (numargs == length as) && isJust evar
                   then App combinedFunctionVar newapp
                   else e0
          where
          (e, as, ts) = collectArgs e0

          evar = case e of
            Var (_, var1) _ | var1 `elem` deps -> Just var1
            _ -> Nothing

          ety = getExprType e
          numargs = assert (null ts) $ (length . uncurryTapp) ety - 1

          newapp =
            foldl App (Dcon (Nothing, combineInputPrefix (fromJust evar)) ty1) as
          ty1 = curryTapp $ map getExprType as ++ [sumTy]
        _ -> e0

  ----------------------------
  tdefs' = sumTypeTdef : tdefs

  -- The sum type wrapping all the input types.
  sumTypeTdef :: Tdef
  -- sumTypeTdef = Data (mname, sumTypeName) [] cdefs
  sumTypeTdef = Data (Nothing, sumTypeName) [] cdefs

  sumTypeName :: String
  sumTypeName = combineInputPrefix $ 
    if not (null deps) && isUpper (head (head deps))
     then tail $ dropWhile (/= '_') $ head deps
     else intercalate "_" deps

  cdefs :: [Cdef]
  cdefs = map varToCdef deps
    where
    varToCdef :: Var -> Cdef
    varToCdef var =
        Constr (Nothing, combineInputPrefix var) [] $ init $ getInputTys var

    getInputTys :: Var -> [Ty]
    getInputTys var =
      (uncurryTapp . (\(Vdef _ ty _) -> ty) . fromJust)
      $ find (\(Vdef (_, var1) _ _) -> var1 == var) vdefs

-- TODO: This is not working properly for the following cases:
-- {MutualRecurse.hs, InterDesending.hs}
-- TODO: Should eventually use this function in combination pass.
inlineUnwrappers :: [Tdef] -> [Vdef] -> ([Tdef], [Vdef])
inlineUnwrappers tdefs vdefs = (tdefs, unwrappers ++ inlined)
  where
  (unwrappers, rests) = partition isUnwrapper vdefs
  
  isUnwrapper :: Vdef -> Bool
  isUnwrapper (Vdef (_, var) _ _) =
      any (\(Vdef (_, var1) _ _) -> var1 == var ++ wrapperPostfix) vdefs

  inlined = map (inlineFunInFun unwrappers) rests

  inlineFunInFun :: [Vdef] -> Vdef -> Vdef
  inlineFunInFun functions (Vdef (omn, var) ty expr) =
      Vdef (omn, var) ty expr'
    where
    expr' = inlineFunctionAccum functions expr

-- | Inline the unwrapper functions at their calling sites.
inlineUnwrappersOld :: [Tdef] -> [Vdef] -> ([Tdef], [Vdef])
inlineUnwrappersOld tdefs vdefs = (tdefs, vdefs')
  where
  vdefs' = map inlineVdef vdefs

  -- All the unwrappers to be inlined.
  unwrappers :: [Vdef]
  unwrappers = mapMaybe beforeWrapping vdefs

  -- Given a vdef, find whether it's generated by the previous unwrapping. If
  -- so, return 'Just' its original form before unwrapping, other wise, return
  -- 'Nothing'.
  beforeWrapping :: Vdef -> Maybe Vdef
  beforeWrapping (Vdef (_, var) _ _)
      = case stripPostfix wrapperPostfix var of
          Nothing -> Nothing
          Just restOfString ->
              find (\(Vdef (_, var1) _ _) -> var1 == restOfString) vdefs

  inlineVdef :: Vdef -> Vdef
  inlineVdef (Vdef (omn, var) ty expr) =
      Vdef (omn, var) ty (inlineExpr expr)

  -- If this var is one unwrapper, return `Just` that unwrapper, otherwise
  -- return `Nothing`.
  findUnwrapper :: Var -> Maybe Vdef
  findUnwrapper var =
      find (\(Vdef (_, var0) _ _) -> var0 == var) unwrappers

  -- Inline in 'expr' for all the unwrappers appeared.
  inlineExpr :: Exp -> Exp
  inlineExpr expr = case expr of
      Var (_, var1) _ -> case findUnwrapper var1 of
          Just (Vdef (_, _) _ expr0) -> expr0
          Nothing -> expr
      {-
      App expr1 expr2 -> case expr1 of  -- TODO(kuangya): This is not correct!
          Var (_, var1) _ -> case findUnwrapper var1 of
              Just (Vdef (_, _) _ expr0) ->
                  substituteParams expr0 $ inlineExpr expr2
              Nothing -> expr
          _ -> App (inlineExpr expr1) (inlineExpr expr2)
      -}
      App expr1 expr2 -> newExpr
        where
        appList = linearizeAppChain expr

        tailList = map inlineExpr $ tail appList

        newExpr = case head appList of
          Var (_, varHead) _ -> case findUnwrapper varHead of
            Just (Vdef (_, _) _ expr0) -> substituteMultiple expr0 tailList
            Nothing -> App (inlineExpr expr1) (inlineExpr expr2)
          _ -> App (inlineExpr expr1) (inlineExpr expr2)
      {-
      -}
      Appt expr1 ty -> case expr1 of
          Var (_, var1) _ -> case findUnwrapper var1 of
              Just (Vdef (_, _) _ _) -> throw $ CombineErr "Uncaught"
              Nothing -> expr
          _ -> Appt (inlineExpr expr1) ty
      Lam binds expr1 -> Lam binds (inlineExpr expr1)
      Let vdefs1 expr1 -> Let (map inlineVdef vdefs1) (inlineExpr expr1)
      Case expr1 vbind ty alts ->
          Case (inlineExpr expr1) vbind ty (map inlineAlt alts)
      _ -> expr

  inlineAlt ::  Alt -> Alt
  inlineAlt (Acon (omn, dcon) tbinds vbinds expr) =
      Acon (omn, dcon) tbinds vbinds (inlineExpr expr)
  inlineAlt (Alit lit expr) = Alit lit (inlineExpr expr)
  inlineAlt (Adefault expr) = Adefault (inlineExpr expr)

  substituteMultiple :: Exp -> [Exp] -> Exp
  substituteMultiple expr1 es = case expr1 of
    Lam vbs expr3 -> case expr3 of
        Case expr4 vbind ty alts ->
            let res = Case (foldl f expr4 zipped) vbind ty alts
            in res
        _ -> error "I didn't write this."
      where
      zipped = assert (length vbs == length es) $ zip vbs es
      f :: Exp -> (Bind, Exp) -> Exp
      f e (Vb (v, _), e') = replace e v e'
      f _ (Tb _, _) = error "Only Vbindings in Lam."
    _ -> error "Only substituteMultiple on a function."

-- | Replace in expr1, all the occurance of var with expr2.
replace :: Exp -> Var -> Exp -> Exp
replace expr1 var expr2 = case expr1 of
    Var (_, var1) _ | var1 == var -> expr2
    App expr3 expr4 -> App (replace expr3 var expr2) (replace expr4 var expr2)
    Appt expr3 ty -> Appt (replace expr3 var expr2) ty
    Lam binds expr3 -> Lam binds (replace expr3 var expr2)
    Let vdefs expr3 -> Let vdefs (replace expr3 var expr2)
    Case expr3 vbind ty alts -> Case (replace expr3 var expr2) vbind ty alts
    _ -> expr1

-- | Give a list of vdefs, which are supposed to have the same return type,
-- return the common return type of them all.
getCommonOutputTy :: [Vdef] -> Ty
getCommonOutputTy vdefs = if length tyList == 1
                          then head tyList
                          else throw $
                               CombineErr $ "Should have a same output type" ++
                                            ", actual: " ++ show tyList
  where
  tyList = nub (map getReturnType vdefs)

  getReturnType :: Vdef -> Ty
  getReturnType (Vdef (_, _) ty _) = lastType ty

-- | Given a list of varible definitions, return the common module name of them.
-- If they don't share a same module, an error happens.
getMname :: [Vdef] -> Maybe Mname
getMname vdefs =
    if length nameList == 1
    then head nameList
    else Nothing
    -- TODO: Should find a way to fill in the module name in this
    -- case.
    -- else throw $ CombineErr $ "Vdefs in a module have different module names"
    --                           ++ show nameList
  where
  nameList = nub . filter belongsToMainModule $ map extractMname vdefs

  belongsToMainModule :: Maybe Mname -> Bool
  belongsToMainModule (Just (M (P pname,  _,  _))) = pname == "main"

  belongsToMainModule Nothing = False

  extractMname :: Vdef -> Maybe Mname
  extractMname (Vdef (mname1, _) _ _) = mname1

combineOutputPrefix :: String
combineOutputPrefix = "COTP_"

wrapperPostfix :: String
wrapperPostfix = "_p"

-- | Only add a prefix if needed
combineInputPrefix :: Var -> String
combineInputPrefix [] = "Action_"
combineInputPrefix v@(c:_) = if isUpper c then v else "Action_" ++ v

combineFunctionPrefix :: String
combineFunctionPrefix = "cf_"

-- | This 'stripPostfix' function drops the given postfix from a list.
-- It returns 'Nothing' if the list did not end with the postfix given, or
-- 'Just' the list before the postfix, if it does.
stripPostfix :: Eq a => [a] -> [a] -> Maybe [a]
stripPostfix [] ys = Just ys
stripPostfix xs ys
    | last xs == last ys = stripPostfix (init xs) (init ys)
stripPostfix _ _ = Nothing

-- | Get the depdendency graph given the list of variable definitions.
getSccNames :: [Vdef]           -- ^ A list of variable definitions.
            -> [[String]]       -- ^ Each [String] represents a scc.
getSccNames vdefs = sccNames
  where
  -- Get all the global variables and remove duplicates.
  getGlobalVars :: [Var]
  getGlobalVars = nub $ map (\(Vdef (_, var) _ _) -> var) vdefs
  
  -- Get the dependencies list of a Vdef.
  getVdefDeps :: Vdef -> [String]
  getVdefDeps (Vdef _ _ e) =
      filter (`elem` getGlobalVars) (getExpDeps e)
  
  -- Get the name of the dependencies of an expression.
  getExpDeps :: Exp -> [String]
  getExpDeps (Var (_mname, var) _) = [var]
  getExpDeps (Dcon (_mname, dcon) _) = [dcon]
  getExpDeps (Lit _lit) = []
  getExpDeps (App exp1 exp2) = getExpDeps exp1 ++ getExpDeps exp2
  getExpDeps (Appt e _ty) = getExpDeps e
  getExpDeps (Lam _binds e) = getExpDeps e
  getExpDeps (Let vdefs1 e) =
      concatMap getVdefDeps vdefs1 ++ getExpDeps e
  getExpDeps (Case e _vbind _ty alts) =
      getExpDeps e ++ concatMap getAltDeps alts

  getAltDeps :: Alt -> [String]
  getAltDeps (Acon _qdcon _tbinds _vbinds e) = getExpDeps e
  getAltDeps (Alit _lit e) = getExpDeps e
  getAltDeps (Adefault e) = getExpDeps e
  
  -- Get the dependant Vdefs of a Vdef.
  key_and_deps :: (Vdef -> [String]) -> Vdef -> (Vdef, String, [String])
  key_and_deps getDeps vdef = (vdef, vdefName vdef, getDeps vdef)
  
  -- The dependency graph of Vdefs in the format of [(node, key, [key])]
  -- The first element is the node definition, which is Vdef.
  -- The second element is the key of this node, which is the name of the
  -- Vdef.
  -- The third element is the keys of nodes this node has edge to.
  vdefDeps :: [(Vdef, String, [String])]
  vdefDeps = map (key_and_deps getVdefDeps) vdefs
  
  -- The strongly connected component graph.
  sccGraph :: [SCC Vdef]
  sccGraph = stronglyConnComp vdefDeps
  
  -- All the name of the Vdefs in the SCC graph.
  sccNames :: [[String]]
  sccNames = map (\c -> 
      case c of
          AcyclicSCC vdef -> [vdefName vdef]
          CyclicSCC vdefs1 -> map vdefName vdefs1
   ) sccGraph

-------------------------------------------------------------------------------
-- The following are old code to be removed later.
-------------------------------------------------------------------------------
combineMutual :: Module -> Module
combineMutual (Module anmname tdefs vdefs) = uncurry (Module anmname) res
  where
  nameGroups :: [[String]]
  nameGroups = getSccNames vdefs

  vdefss :: [[Vdef]]
  vdefss = map (map f) nameGroups
  f :: String -> Vdef
  f name = fromJustMsg "[0]" $ find (\(Vdef (_, v) _ _) -> v == name) vdefs

  combinedFunNames = map (\n -> "ff__" ++ show (n :: Int)) [1..]

  zipped :: [([Vdef], Var)]
  zipped = zip vdefss combinedFunNames

  (tdefss_out, vdefss_out) = unzip $ map trans zipped

  trans :: ([Vdef], Var) -> ([Tdef], [Vdef])
  trans = uncurry combineOneGroup

  res = (concat tdefss_out ++ tdefs, concat vdefss_out)

-- | Wrap the input of mutually recursive functions.
--
-- The input of this vdefs should have been processed by 'combineReturn', so
-- that all functions return the same type. After this function, all functions
-- have the same input type.
combineInput :: [Tdef]           -- ^ Type definition list.
             -> [Vdef]           -- ^ Variable definition list.
             -> [[String]]       -- ^ The SCC.
             -> ([Tdef], [Vdef]) -- ^ Result after combining return types.
combineInput tdefs0 vdefs0 = foldr wrapperf (tdefs0, vdefs0)
  where
  wrapperf :: [Var] -> ([Tdef], [Vdef]) -> ([Tdef], [Vdef])
  wrapperf deps = combineInput1WithName combineFunctionName deps
    where
    combineFunctionName = combineFunctionPrefix ++ intercalate "_" deps

