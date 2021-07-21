{-# LANGUAGE DeriveDataTypeable #-}

{- |
Module : Fhw.Pass.RemoveRecursion.Linearize
Description : Linearize self-recursive functions.

After this step, recursive calls only happen in a let with a single binding to
the result of a recursive call, i.e., a recursive-let.

-}
module Fhw.Pass.RemoveRecursion.Linearize where

import Fhw.Core.Core
import Fhw.Pass.RemoveRecursion.Utils

import Control.Exception
import Data.List
import Data.Maybe ()
import Data.Typeable
--import Debug.Trace ()

data Exceptional = LinearizeErr String
  deriving (Show, Typeable)

instance Exception Exceptional

-- | Lift out the scrutinees of any case, and the arguments of any call that
-- recurses, binding the subexpression to a new temporary.
linearizeVdefs :: [Vdef] -> [Vdef]
linearizeVdefs = map liftFuncDef

liftFuncDef :: Vdef -> Vdef
liftFuncDef vdef0@(Vdef (mname, var0) ty0 expr0) =
    if isFunctionTy ty0 && isLamExp expr0
    then Vdef (mname, var0) ty0 (liftExpr var0 expr0)
    else vdef0
  where
  isLamExp oe = case oe of
    Lam _ _ -> True
    _       -> False
  -- Lift out the scrutinees of any case, and the argument of any call that
  -- recurse, in an expression (i.e., function implementation).
  liftExpr :: Var -> Exp -> Exp
  liftExpr var = transform
    where
    transform =  isolateRecursions var
               . flattenLets
               . extractSubexprsTopdown
               . uniqueNamings
  
  -- For example:
  -- Let [a = 1, b = 2, c = 3] in a + b
  -- will be transformed into
  -- Let a = 1 in
  -- Let b = 2 in
  -- Let c = 3 in a + b
  -- Note that only recurse bindings are isolated. Other nonrecurse binding
  -- are allowed to be put in a same Let bindings.
  isolateRecursions :: String -> Exp -> Exp
  isolateRecursions fname = mapExpr fn
    where
    fn :: Exp -> Exp
    fn x = case x of
        Let bindings cont -> res
          where
          (recursives, nonrecursives) = partition isRecursive bindings
          cont' = Let nonrecursives cont

          lets :: [Exp -> Exp]
          lets = map (\b -> Let [b]) recursives

          res
            | null recursives = cont'
            | null nonrecursives = foldl (.) id lets cont
            | otherwise = foldl (.) id lets cont'
        _ -> x

    isRecursive :: Vdef -> Bool
    isRecursive vdef = vdefRecursiveness fname vdef /= Nonrecursive

  -- For example:
  -- Let [a = Let b = 1
  --          in b
  --     c = 2
  --     d = 4]
  -- in a + c
  -- will be transformed to
  -- Let [c = 2, d = 4] in
  -- Let b = 1 in
  -- Let a = b in
  -- a + c
  flattenLets :: Exp -> Exp
  flattenLets = mapExpr fn
    where
    fn :: Exp -> Exp
    fn expr = case expr of
        Let vdefs cont1 -> if null $ fst letchain
                           then snd letchain
                           else uncurry Let letchain
          where
          letchain :: ([Vdef], Exp)
          letchain = foldl ff ([], cont1) vdefs
        _ -> expr
  
    ff :: ([Vdef], Exp) -> Vdef -> ([Vdef], Exp)
    ff (newbinds, newcont) vdef@(Vdef (_, var) ty e) = case e of
        innerlet@(Let _ _) -> (newbinds, let_chain)
          where
          let_chain = append_to_let_chain var ty innerlet newcont 
        _ -> (vdef : newbinds, newcont)

    -- crn : chain_result_name
    append_to_let_chain :: Var -> Ty -> Exp -> Exp -> Exp
    append_to_let_chain crn crt innerlet ocont = case innerlet of
        Let vdefs cont -> Let vdefs $ append_to_let_chain crn crt cont ocont
        _ -> Let [Vdef (Nothing, crn) crt innerlet] ocont

  -- This is the top-down version of subexpression extraction procedure,
  -- so that there is no need to know the type of a function, i.e., the number
  -- of parameters it needs, to extract the subexpressions.
  extractSubexprsTopdown :: Exp -> Exp
  extractSubexprsTopdown expr = snd $ fn 0 expr
    where
    existed_variables :: [Var]
    existed_variables = map snd $ getVariables expr

    fn :: Int -> Exp -> (Int, Exp)
    fn count e0 = case e0 of
      App _ _ -> if all isPrimEx as
                  then (count,e0)
                  else (count'', Let extracted_vdefs newapp)
        where
        isPrimEx (Var _ _) = True
        isPrimEx (Lit _  ) = True
        isPrimEx _         = False

        (fe, as, ts) = collectArgs e0
        (count', names) = get_next_n_names count (length as)

        (count'', as') = assert (null ts) $ mapAccumL fn count' as

        exp_and_names = zip as' names

        extracted_vars = map (\(Vdef (omn, v) t _) -> Var (omn, v) t)
                             extracted_vdefs
        newapp = foldl App fe extracted_vars

        feTy = getExprTypeSafe fe
        argTys = case feTy of
          Nothing -> Nothing
          Just feTy' -> Just $ init $ uncurryTapp feTy'

        exp_name_and_index = zip exp_and_names [0..]

        extracted_vdefs = map (\x@((e, v), _) -> Vdef (Nothing, v) (f x) e)
                              exp_name_and_index
          where
          f :: ((Exp, Var), Int) -> Ty
          f ((e, _), c) = case argTys of
            Just tys | length tys > c -> tys !! c
            _ -> getExprType e

      Case v@(Var _ _) vb ty alts -> (count',Case v vb ty alts')
        where
        (count', alts') = mapAccumL altHelper count alts
      Case e vb rty alts -> (count''', Let vdefs newcase)
        where
        (_, vb_t) = vb
        (count', e') = fn count e

        vdefs = [Vdef (Nothing, newname) vb_t e']

        (count'', [newname]) = get_next_n_names count' 1

        newcase = Case (Var (Nothing, newname) vb_t) vb rty alts'

        (count''', alts') = mapAccumL altHelper count'' alts
      Appt e1 ty -> (count', Appt e1' ty)
        where
        (count', e1') = fn count e1
      Lam binds e1 -> (count', Lam binds e1')
        where
        (count', e1') = fn count e1
      Let vdefs e1 -> (count'', Let vdefs' e1')
        where
        (count', vdefs') = mapAccumL fn' count vdefs
        (count'', e1') = fn count' e1
        fn' :: Int -> Vdef -> (Int, Vdef)
        fn' c (Vdef (omn, var) ty e) = (c', Vdef (omn, var) ty e')
          where
          (c', e') = fn c e
      _ -> (count, e0) 

    altHelper :: Int -> Alt -> (Int, Alt)
    altHelper c alt = case alt of
      Acon (omn, dcon) tbs vbs olde -> (c', Acon (omn, dcon) tbs vbs newe)
        where
        (c', newe) = fn c olde
      Alit lit olde -> (c', Alit lit newe)
        where
        (c', newe) = fn c olde
      Adefault olde -> (c', Adefault newe)
        where
        (c', newe) = fn c olde


    get_next_n_names :: Int -> Int -> (Int, [String])
    get_next_n_names count n
        | n <= 0 = (count, [])
        | ("es_" ++ show count) `elem` existed_variables =
            get_next_n_names (count + 1) n
        | otherwise = let rest = get_next_n_names (count + 1) (n - 1)
                      in (fst rest, ("es_" ++ show count) : snd rest)
