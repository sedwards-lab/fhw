{- |
Module : Fhw.Pass.LiftConstants.LiftConstants
Description : Lift constants into let clauses in the body of functions, etc.

Lift definitions for all non-functions (constants) into the body
of each function. e.g.,

> c = 42
> b = c
> f a = a + b

is transformed into

> f a = let c = 42
>           b = c
>       in a + b

This is to simplify SystemVerilog generation, which wants all dependent
non-functions together with a function.

Definitions may be duplicated as a result.

-}

module Fhw.Pass.LiftConstants.LiftConstants ( liftConstants ) where

import Fhw.Core.Core
import Data.List ( partition, find )
import qualified Data.Map.Strict as Map
--import qualified Data.Set as Set

type VdefMap = Map.Map (Qual Var) Vdef

liftConstants :: Module -> Module
liftConstants (Module mname tdefs vdefs) = Module mname tdefs (main : vdefs')
    where
      -- A way to find constants by name
      constByName :: VdefMap
      constByName = Map.fromList $ map vdefToAssoc consts

      vdefToAssoc vd@(Vdef v _ _) = (v, vd)

      (funcs, consts) = partition vdefIsFunc vdefs
      vdefIsFunc (Vdef _ ty _ ) = isFunctionTy ty

      vdefs' = map extendDef funcs

      -- Locate the definition of "main" and group its local constants
      main = case find (\vd -> case vd of Vdef (_,"main") _ _ -> True
                                          _ -> False) vdefs of
             Just v -> extendDef v
             Nothing -> error "liftConstants: could not find main"

      -- extendDef: If necessary, add a "let" construct that binds all
      -- the constants it uses

      extendDef :: Vdef -> Vdef

      -- Body is a lambda term: put any new let inside it
      extendDef vd@(Vdef var typ (Lam b funcBody)) =
          if Map.null needed then vd
          else Vdef var typ $ Lam b (Let (Map.elems needed) funcBody)
        where
          needed = mapExprMonoid (gather Map.empty) funcBody

      -- Everything else (e.g., main): wrap the whole thing in a let
      extendDef vd@(Vdef var typ body) =
          if Map.null needed then vd
          else Vdef var typ $ Let (Map.elems needed) body
        where
          -- Such a definition may be recursive, but we don't want to
          -- duplicate the body, so we filter it out
          needed = Map.delete var $ gather Map.empty body

      -- gather: build a map (variable name to vdef) holding
      -- all the non-functions needed for the given expression

      gather :: VdefMap -> Exp -> VdefMap
      gather m (Var v _) =
          if Map.member v constByName && not (Map.member v m)
          then gather m' vdefe else m
              where
                m' = Map.insert vname vdef m
                vdef@(Vdef vname _ vdefe) = constByName Map.! v
      gather m _ = m
