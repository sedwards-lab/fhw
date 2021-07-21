{- |
Module : Fhw.Pass.RemoveRecursion.Utils
Description : Defines some commonly used utilities in the RemoveRecursion
module.
-}
module Fhw.Pass.RemoveRecursion.Utils where

import Fhw.Core.Core

import Data.List
import Data.Maybe
import Data.Tuple

import qualified Data.Set as Set

-- | This version contains the orig@(a, Exp) arg, since in post-order
-- traversal, the value of the original node is needed after finishing
-- traversing the child nodes.
postTraversal :: (a -> Exp -> (a, Exp)) -> a -> Exp -> (a, Exp)
postTraversal f accum (App e1 e2) = f accum'' newApp
  where
  (accum', e2')  = postTraversal f accum e2
  (accum'', e1') = postTraversal f accum' e1
  newApp = App e1' e2'

postTraversal f accum (Appt e ty) = f accum' (Appt e' ty)
  where
  (accum', e') = postTraversal f accum e

postTraversal f accum (Lam binds e) = f accum' (Lam binds e')
  where
  (accum', e') = postTraversal f accum e

postTraversal f accum (Let vdefs e) = f accum''
                                             (Let vdefs' e')
  where
  (accum', e') = postTraversal f accum e
  (accum'', vdefs') = mapAccumL f' accum' vdefs

  -- f' :: a -> Vdef -> (a, Vdef)
  f' accum1 (Vdef (mname, var) ty expr) = (accum2, Vdef (mname, var) ty expr')
    where
    (accum2, expr') = postTraversal f accum1 expr

postTraversal f accum (Case e vb ty alts) = f accum'' (Case e' vb ty alts')
  where
  (accum', e')     = postTraversal f accum e
  (accum'', alts') = mapAccumL f' accum' alts

  -- f' :: a -> Alt -> (a, Alt)
  f' accum1 alt = case alt of
      Acon (mn, dcon) tbs vbs e1 -> (accum2, Acon (mn, dcon) tbs vbs e2)
        where
        (accum2, e2) = postTraversal f accum1 e1
      Alit lit e1 -> (accum2, Alit lit e2)
        where
        (accum2, e2) = postTraversal f accum1 e1
      Adefault e1 -> (accum2, Adefault e2)
        where
        (accum2, e2) = postTraversal f accum1 e1

postTraversal f accum x = f accum x

-- | Apply a function over every sub-expression of an expression, together with
-- an accumlator.
mapAccumExpr :: (a -> Exp -> (a, Exp)) -> a -> Exp -> (a, Exp)
mapAccumExpr f accum (App e1 e2) = f accum'' (App e1' e2')
  where
  (accum', e2')  = mapAccumExpr f accum e2
  (accum'', e1') = mapAccumExpr f accum' e1

mapAccumExpr f accum (Appt e ty) = f accum' (Appt e' ty)
  where
  (accum', e') = mapAccumExpr f accum e

mapAccumExpr f accum (Lam binds e) = f accum' (Lam binds e')
  where
  (accum', e') = mapAccumExpr f accum e

mapAccumExpr f accum (Let vdefs e) = f accum'' (Let vdefs' e')
  where
  (accum', e') = mapAccumExpr f accum e
  (accum'', vdefs') = mapAccumL f' accum' vdefs

  -- f' :: a -> Vdef -> (a, Vdef)
  f' accum1 (Vdef (mname, var) ty expr) = (accum2, Vdef (mname, var) ty expr')
    where
    (accum2, expr') = mapAccumExpr f accum1 expr

mapAccumExpr f accum (Case e vb ty alts) = f accum'' (Case e' vb ty alts')
  where
  (accum', e')     = mapAccumExpr f accum e
  (accum'', alts') = mapAccumL f' accum' alts

  -- f' :: a -> Alt -> (a, Alt)
  f' accum1 alt = case alt of
      Acon (mn, dcon) tbs vbs e1 -> (accum2, Acon (mn, dcon) tbs vbs e2)
        where
        (accum2, e2) = mapAccumExpr f accum1 e1
      Alit lit e1 -> (accum2, Alit lit e2)
        where
        (accum2, e2) = mapAccumExpr f accum1 e1
      Adefault e1 -> (accum2, Adefault e2)
        where
        (accum2, e2) = mapAccumExpr f accum1 e1

mapAccumExpr f accum x = f accum x

-- | Apply function over the return value of 'Let' and 'Case' expressions.
mapReturn :: (Exp -> Exp) -> Exp -> Exp
mapReturn f (Let vdefs e) = Let vdefs (mapReturn f e)
mapReturn f (Case e vb ty alts) = Case e vb ty (map (mapReturnAlt f) alts)
mapReturn f x = f x

mapReturnAlt :: (Exp -> Exp) -> Alt -> Alt
mapReturnAlt fn alt = case alt of
    Acon (mn, dc) tbs vbs e1 -> Acon (mn, dc) tbs vbs $ mapReturn fn e1
    Alit lit e1              -> Alit lit $ mapReturn fn e1
    Adefault e1              -> Adefault $ mapReturn fn e1

-- | Get the return type of an expression. Addapted from Core.hs' 'exprType'
-- with minor modifications.
getExprType :: Exp -> Ty
getExprType = exprType

getExprTypeSafe :: Exp -> Maybe Ty
getExprTypeSafe (Var _ ty) = Just ty
getExprTypeSafe (Dcon _ ty) = Just ty
getExprTypeSafe (Lit (Literal _ ty)) = Just ty
getExprTypeSafe (App fun _) = case getExprTypeSafe fun of
    Just (Tapp _ t) -> Just t
    _ -> Nothing
getExprTypeSafe (Appt _ _) = Nothing
getExprTypeSafe (Lam binders expr) = case getExprTypeSafe expr of
    Nothing -> Nothing
    Just bt -> Just $ mkLambdaType binders bt
getExprTypeSafe (Let _ e) = getExprTypeSafe e
getExprTypeSafe (Case _ _ ty _) = Just ty

-- TODO: This might be not complete.
-- | Get the last type of a chain of type application.
lastType :: Ty -> Ty
lastType ty = fst $ collectArgTypes ty

-- | Get the initial types of a chain of type application, i.e., the input
-- types of a curried function.
initType :: Ty -> Ty
initType ty = case ty of
    Tapp (Tapp (Tcon ta) t) _ | ta == tcArrow -> t
    _ -> error "[initType] Trying to get the init type of a non-curried type."

-- | Given an 'App' expression, linearize the application chain.
--
-- For example, apply this function to the following application
-- (App (App (App e1 e2) e3) e4)
-- will yield the result of
-- [e1, e2, e3, e4]
linearizeAppChain :: Exp -> [Exp]
linearizeAppChain (App e1 e2) = linearizeAppChain e1 ++ [e2]
linearizeAppChain e = [e]

data Recursiveness = Nonrecursive | TailRecursive | Recursive
                   deriving (Show, Eq, Ord)

nontail :: Recursiveness -> Recursiveness
nontail Nonrecursive = Nonrecursive
nontail _            = Recursive

-- | Check the recursiveness property of an expression.
exprRecursiveness :: Var            -- ^ The top-level name of the function.
                  -> Exp            -- ^ The current expression to be examined.
                  -> Recursiveness  -- ^ The recursiveness property of the
                                    -- expression.
exprRecursiveness fname (Var (_, var) _) =
    if fname == var then TailRecursive else Nonrecursive

exprRecursiveness fname (Dcon (_, dcon) _) =
    if fname == dcon then TailRecursive else Nonrecursive

exprRecursiveness fname (App e1 e2) = max recursiveness1 recursiveness2
  where
  recursiveness1 = exprRecursiveness fname e1
  recursiveness2 = nontail $ exprRecursiveness fname e2

exprRecursiveness fname (Appt e _) = exprRecursiveness fname e

exprRecursiveness fname (Lam _ e) = exprRecursiveness fname e

exprRecursiveness fname (Let vdefs e) =
    maximum $ e_recursiveness : v_recursiveness
  where
  v_recursiveness = map (nontail . vdefRecursiveness fname) vdefs
  e_recursiveness = exprRecursiveness fname e

exprRecursiveness fname (Case e _vb _ty alts) =
    maximum $ e_recursiveness : a_recursiveness
  where
  e_recursiveness = nontail $ exprRecursiveness fname e
  a_recursiveness = map (altRecursiveness fname) alts

exprRecursiveness _ _ = Nonrecursive

-- | Check the recursiveness property of a vdef.
vdefRecursiveness :: Var -> Vdef -> Recursiveness
vdefRecursiveness fname (Vdef (_, _) _ expr) = exprRecursiveness fname expr

altRecursiveness :: Var -> Alt -> Recursiveness
altRecursiveness fname (Acon (_, _) _ _ e) = exprRecursiveness fname e
altRecursiveness fname (Alit _ e)          = exprRecursiveness fname e
altRecursiveness fname (Adefault e)        = exprRecursiveness fname e

-- | Replace all the occurance of 'oldVar' with 'newVar' in expr.
replaceVar :: Var -> Var -> Exp -> Exp
replaceVar ov nv = mapExpr (f ov nv)
  where
  f :: Var -> Var -> Exp -> Exp
  f oldVar newVar e = if oldVar == newVar then e
                      else case e of
      Var (mn, var) ty | var == oldVar -> Var (mn, newVar) ty
      _ -> e -- ???????? what else

-- | Capture all free variables that don't appear in function
--   application position.
cfv :: Exp -> [(Ty, Var)]
cfv expr = filter (not . isFunctionTy . fst) $ cfvAll expr

-- | Capture all free variables.
cfvAll :: Exp -> [(Ty, Var)]
cfvAll expr = case expr of
  (Var mn@(_, var) ty) -> if isPrim mn then [] else [(ty, var)]
  (Dcon _ _) -> []
  (Lit _) -> []
  (App e1 e2) -> nub $ c1 ++ c2
    where
    c1 = cfvAll e1
    c2 = cfvAll e2
  (Appt e _) -> cfvAll e
  (Lam binds e) -> nub $ expr_free \\ binds_binded
    where
    binds_binded = nub $ mapMaybe f binds
    f :: Bind -> Maybe (Ty, Var)
    f bind = case bind of
      Vb (v, t) -> Just (t, v)
      Tb _      -> Nothing

    expr_free = cfvAll e
  (Let vdefs cont) -> nub $ nub (binds_free ++ cont_free) \\ let_binded
    where
    binds_free = (nub . concat . snd . unzip) mapped
    let_binded = (nub . fst. unzip) mapped

    cont_free = cfvAll cont
    mapped = map f vdefs
    f :: Vdef -> ((Ty, Var), [(Ty, Var)])
    f (Vdef (_, v) t e) = ((t, v), cfvAll e)
  (Case casee (var, ty) _ alts) ->
      nub $ casee_free ++ (branches_free \\ vbind_binded)
    where
    casee_free = cfvAll casee
    vbind_binded = [(ty, var)]

    branches_free = nub $ concatMap f alts

    f :: Alt -> [(Ty, Var)]
    f alt = case alt of
      Acon _ _ vbs e -> e_free \\ vbs_binded
        where
        e_free = cfvAll e
        vbs_binded = nub $ map (\(v, t) -> (t, v)) vbs
      Alit _ e -> cfvAll e
      Adefault e -> cfvAll e

-- | Capture the free variables of an expression.
--
-- This function uses an array to store the captured result. It would be better
-- to use a set here, i.e., O(lg(n)) v.s. O(n) complexity, however, during to
-- unknow reason, the set implementation will get stuck and ran out stack
-- memory.
captureFreeVariables :: Exp -> [(Ty, Var)]
captureFreeVariables = Set.toList . captureFreeVariables'

captureFreeVariables' :: Exp -> Set.Set (Ty, Var)
captureFreeVariables' expr = case expr of
  (Var (_, var) ty) -> Set.singleton (ty, var)
  (Dcon (_, _) _) -> Set.empty
  (Lit _) -> Set.empty
  (App e1 e2) -> let c1 = captureFreeVariables' e1
                     c2 = captureFreeVariables' e2
                 in c1 `Set.union` c2
  (Appt e _) -> captureFreeVariables' e
  (Lam binds e) -> setRemove expr_freev binds_bindedv
    where
    binds_bindedv = Set.fromList $ mapMaybe f binds
    f :: Bind -> Maybe (Ty, Var)
    f bind = case bind of
      Vb (v, t) -> Just (t, v)
      Tb _      -> Nothing

    expr_freev = captureFreeVariables' e

  (Let vdefs cont) ->
      binds_freev `Set.union` setRemove cont_freev let_bindedv
    where
    binds_freev = (myUnions . snd . unzip . map f) vdefs
    let_bindedv = (Set.fromList . fst . unzip . map f) vdefs
    f :: Vdef -> ((Ty, Var), Set.Set (Ty, Var))
    f (Vdef (_, v) t e) = ((t, v), captureFreeVariables' e)

    cont_freev = captureFreeVariables' cont

  -- TODO(kuangya): seems this branch leads to stack overflow...
  (Case casee (var, ty) _ alts) ->
      casee_freev `Set.union` setRemove branches_freev vbind_bindedv
    where
    casee_freev = captureFreeVariables' casee
    vbind_bindedv = Set.singleton (ty, var)  -- Not free anymore.

    branches_freev = myUnions $ map f alts
    f :: Alt -> Set.Set (Ty, Var)
    f alt = case alt of
      Acon (_, _) _ vbs e -> setRemove e_freev vb_bindedv
        where
        vb_bindedv = Set.fromList $ map (\(v, t) -> (t, v)) vbs
        e_freev = captureFreeVariables' e
      Alit _ e -> captureFreeVariables' e
      Adefault e -> captureFreeVariables' e

-- | Remove the element in the second set from the first set.
--
-- Jared's code uses Set.difference directly. The problem is that if s2 is not
-- a subset of s1, the result might be problematic. e.g., In the 'Let'
-- expression:
--   Let binding cont
-- where s2 is binded variables in 'binding' and s1 is free variables in
-- 'cont'. It's possible that some variables binded in s2 is not presented in
-- s1. But it makes no sense of adding those variables as a free variables of
-- the 'Let' expression.
setRemove :: Ord a => Set.Set a -> Set.Set a -> Set.Set a
setRemove s1 s2 = let s12 = s1 `Set.union` s2
                  in s12 `Set.difference` s2

myUnions :: Ord a => [Set.Set a] -> Set.Set a
myUnions = foldl' Set.union Set.empty

-- | Given a group of function declarations and an expression, inline the
-- functions appeared in the latter expression.
inlineFunctionAccum :: [Vdef] -> Exp -> Exp
inlineFunctionAccum functions = snd . mapAccumExpr fn []
  where
  fn :: [Var] -> Exp -> ([Var], Exp)
  fn alist expr = case alist of
    [] -> case expr of
      App (Var (_, var) _) e2 ->
        case find (\(Vdef (_, v) _ _) -> v == var) functions of
          Nothing -> ([], expr)
          Just (Vdef _ _ lam) ->
              case lam of
            Lam binds impl -> (tail vars, Let [vdef] impl)
              where
              bind_to_var b = case b of
                Vb (v, _) -> v
                Tb _      -> error "Lam contains Vb only!"
              vars = map bind_to_var binds
              vdef = Vdef (Nothing, head vars) (getExprType e2) e2
            _ -> error $ "The first expression of a " ++
                         "definition should be a Lam! " ++
                         "Actual: " ++ show lam
      _ -> ([], expr)
    v : vs -> case expr of 
      App e1 e2 -> (vs, Let [Vdef (Nothing, v) (getExprType e2) e2] e1)
      _ -> error $ "[inlineFunctionAccum] A function to be inlined was not " ++
                    "applied with all the parameters!\nexpr: " ++ show expr ++
                    "\nalist: " ++ show alist

-- | Given a type, flatten it into a list of types according to the orders in
-- the curried application.
--
-- E.g., a -> b -> c => [a, b, c]
uncurryTapp :: Ty -> [Ty]
uncurryTapp (Tapp (Tapp (Tcon ta) t1) t2) | ta == tcArrow
    = t1 : uncurryTapp t2
uncurryTapp t = [t]

-- | The reverse process of 'uncurryTapp'.
curryTapp :: [Ty] -> Ty
curryTapp = foldr1 tArrow

-- | Given a list of Vdefs, return the list of names of them.
vdefsToVars :: [Vdef] -> [Var]
vdefsToVars = map (\(Vdef (_, vn) _ _) -> vn)

-- | This 'fromJustMsg' function performs similar to fromJust only except that
-- it also takes an error msg, which is quite helpful for the debugging.
fromJustMsg :: String -> Maybe a -> a
fromJustMsg s Nothing  = error $ "Maybe.fromJust: Nothing: " ++ s  -- yuck
fromJustMsg _ (Just x) = x

-- | Rename the variables in an expression so that they all have different
-- names, even they are not in the same scope.
uniqueNamings :: Exp -> Exp
uniqueNamings e = case e of
    Lam binds e1 -> Lam binds $ uniqueNamingExpr (map bind_to_var binds) e1
    _ -> error $ "[uniqueNamings] Should be a Lam expression. Actual: " ++
                 show e 
  where
  bind_to_var :: Bind -> Var
  bind_to_var bind = case bind of
    Vb (var, _) -> var
    Tb (tvar, _) -> tvar

-- | Given an expression, transform it so that no two of the variables in it
-- have the same name, even if they are not in the same namespace.
--
-- The first argument is a list of varibales that shouldn't be changed, e.g.,
-- the variables binded from upper namescopes.
uniqueNamingExpr :: [Var]  -- ^ The variable bindings, should not change them.
                           -- It's passed around as the accumlator.
                 -> Exp    -- ^ The original expression to be renamed.
                 -> Exp    -- ^ The expression where each variable has unique
                           -- names.
uniqueNamingExpr definedVars expr = snd $ mapAccumExpr fn definedVars expr
  where
  fn :: [Var] -> Exp -> ([Var], Exp)
  fn accum expr0 = case expr0 of
      -- For 'Let' bindings, rename the variables defined in the local
      -- namespace of Let binding.
      Let vdefs e1 -> (accum', Let vdefs' e1')
        where
        (accum', vdefs') = mapAccumL renameVdef accum vdefs

        e1' = foldl changeName e1 mappings

        mappings :: [(Var, Var)]
        mappings = zip (map vdefToVar vdefs) (map vdefToVar vdefs')
          where
          vdefToVar :: Vdef -> Var
          vdefToVar (Vdef (_, var) _ _) = var

      -- For 'Case' scrutinees, rename the variable name of vb.
      -- TODO(kuangya): the 'e' here doesn't need to be change?
      Case e (var1, ty1) ty alts ->
          (accum'', Case e (var1', ty1) ty alts')
        where
        (accum', var1')  = renameVar accum var1
        (accum'', alts') = mapAccumL (renameVarInAlt var1 var1') accum' alts

        renameVarInAlt :: Var -> Var -> [Var] -> Alt -> ([Var], Alt)
        renameVarInAlt oldVar newVar accum1 alt = case alt of
            Acon (mn, dc) tbs vbs e1 -> (accum1', Acon (mn, dc) tbs vbs' e1'')
              where
              (accum1', vbs') = mapAccumL renameVbind accum1 vbs

              mappings = zip (map vbindToVar vbs) (map vbindToVar vbs')
                where
                vbindToVar :: Vbind -> Var
                vbindToVar (v, _) = v

              e1'  = foldl changeName e1 mappings
              e1'' = changeName e1' (oldVar, newVar)

            -- This doesn't introduce any new vars.
            Alit lit e2 -> (accum1, Alit lit e2')
              where
              e2' = changeName e2 (oldVar, newVar)

            Adefault e2 -> (accum1, Adefault e2')
              where
              e2' = changeName e2 (oldVar, newVar)

      -- For 'Lam' binding, rename the bindings in 'Lam' binding.
      -- Lam binds e -> (accum', e')
      Lam binds e -> (accum', Lam binds' e')
        where
        (accum', binds') = mapAccumL renameBind accum binds

        e' = foldl changeName e mappings

        mappings :: [(Var, Var)]
        mappings = zip (mapMaybe bindToVar binds)
                       (mapMaybe bindToVar binds')
          where
          bindToVar :: Bind -> Maybe Var
          bindToVar bind = case bind of
              Tb (var, _) -> Just var
              Vb (_, _)    -> Nothing

        renameBind :: [Var] -> Bind -> ([Var], Bind)
        renameBind vars bind = case bind of
            Tb (var, ty) -> (vars', Tb (var', ty))
              where
              (vars', var') = renameVar vars var
            Vb (_, _)    -> (vars, bind)

      -- Other expression doesn't introduce new scopes hence don't need to do
      -- any renaming here.
      _ -> (accum, expr0)

  changeName :: Exp -> (Var, Var) -> Exp
  changeName e (ov, nv) = mapExpr (replaceVar ov nv) e

  renameVbind :: [Var] -> Vbind -> ([Var], Vbind)
  renameVbind vars (var, ty) = (vars', (var', ty))
    where
    (vars', var') = renameVar vars var

  renameVdef :: [Var] -> Vdef -> ([Var], Vdef)
  renameVdef vars (Vdef (mname, var) ty e) = (vars', Vdef (mname, var') ty e)
  -- TODO(kuangya): expr should not need to be changed, right?
    where
    (vars', var') = renameVar vars var

-- | Given a list of existing variables and an variable, return an unique
-- variable name from the existing variable names by appending number to it.
renameVar :: [Var] -> Var -> ([Var], Var) 
renameVar existVars oldVar = (oldVar' : existVars, oldVar')
  where
  oldVar' = nextUniq oldVar 1

  nextUniq :: Var -> Int -> Var
  nextUniq v i = if v `notElem` existVars
                 then v
                 else nextUniq (oldVar ++ "_" ++ show i) (i + 1)

-- | Get the variables binded by the expression itself, so that to distinguish
-- them from the primitives.
getVariables :: Exp -> [(Ty, Var)]
getVariables e0 = fst $ mapAccumExpr f [] e0
  where
  f :: [(Ty, Var)] -> Exp -> ([(Ty, Var)], Exp)
  f tvs e1 = case e1 of
    Let vdefs _ -> (ntvs ++ tvs, e1)
      where
      ntvs = foldl (\l (Vdef (_, v) t _) -> (t, v) : l) [] vdefs
    Case _ (v, t) _ alts -> ([(t, v)] ++ atvs ++ tvs, e1)
      where
      atvs = concatMap ff alts
      ff :: Alt -> [(Ty, Var)]
      ff alt = case alt of
        Acon _ _ vbs _ -> map swap vbs
        Alit _ _       -> []
        Adefault _     -> []
    Lam binds _ -> (ntvs ++ tvs, e1)
      where
      ntvs = mapMaybe ff binds
      ff :: Bind -> Maybe (Ty, Var)
      ff bd = case bd of
        Vb (v, t) -> Just (t, v)
        _         -> Nothing
    _ -> (tvs, e1)

getNextName :: Var -> [Var] -> Var
getNextName pre existed = getNextAvaliableName' 0
  where
  getNextAvaliableName' :: Int -> Var
  getNextAvaliableName' c =
    if (pre ++ "_" ++ show c) `elem` existed
    then getNextAvaliableName' (c + 1)
    else pre ++ "_" ++ show c

streamCon :: Tdef
streamCon = Data (Just fhwPrimMname, "Stream") [("a", Klifted)] [cdef]
  where
  cdef = Constr (Just fhwPrimMname, ":>")
                [("a", Klifted)]
                [Tvar "a", streamTy (Tvar "a")]

streamTy :: Ty -> Ty
streamTy = Tapp streamTcon

streamTcon :: Ty
streamTcon = Tcon (Just fhwPrimMname, "Stream")

