{- |

Module : Fhw.Pass.RemoveLitPat.RemoveLitPat
Description : Convert all literal pattern matches into cascades
              of equality checks.

This pass removes any case expressions pattern matching on literals,
replacing them with equality checks and matchings on booleans. This is
done to avoid violating the "no literal pattern matching" invariant
in Fhw.Pass.Dataflow.Translate. For example:

> case val of
>   0 -> e1
>   1 -> e2
>   _ -> e3

is transformed into

> case val == 0 of
>   True  -> e1
>   False -> case val == 1 of 
>     True  -> e2
>     False -> e3

-}

module Fhw.Pass.RemoveLitPat.RemoveLitPat ( removeLitPat ) where

import Fhw.Core.Core

removeLitPat :: Module -> Module
removeLitPat (Module name tdefs vdefs) = Module name newTdefs newVdefs
  where
    newTdefs = if newVdefs /= vdefs && boolDef `notElem` tdefs
                then boolDef : tdefs
                else tdefs
    newVdefs = map (mapVdef convertCase) vdefs

    boolDef = Data (boolMname,"Bool") []
              [Constr (boolMname, "False") [] []
              ,Constr (boolMname, "True" ) [] []]

-- | Convert a case expression matching on literals into a cascade of
-- equality checks.
convertCase :: Exp -> Exp
convertCase ex@(Case scrut vbind ty alts)
  | any isLitAlt alts = let patBinds = map destruct alts
                            destruct (Alit lit e) = (Just lit,e)
                            destruct (Adefault e) = (Nothing, e)
                            destruct _ = error "Alternative problem in removeLitPat"
                            newDef = makeLocal scrut vbind
                        in Let [newDef] $ cascade (fst vbind) ty patBinds 
  | otherwise = ex 
convertCase ex = ex

-- | Generate equality checks and case expressions for a list of
-- literal patterns.
cascade :: Var -> Ty -> [(Maybe Lit, Exp)] -> Exp
--Default pattern must end the list (since all literal pattern matches
-- have an infinite number of options)
cascade _ _ [(Nothing,e)] = e               
cascade _ _ []  = error pattErr
cascade _ _ [_] = error pattErr
--Default pattern must come last
cascade v ty (b1@(Nothing,_):b2:rest) = cascade v ty (b2 : b1 : rest)
-- Matching on numeric literal
cascade v retTy ((Just lit@(Literal (Lint _) ty), e) : rest) = 
  let varExp = Var (Nothing,v) ty
      bind = ("dummy", boolTy)
      newAlts = [Acon (boolMname,"False") [] [] 
                      (cascade v retTy rest)
                ,Acon (boolMname,"True") [] [] e]

  in Case (eqExp ty (Lit lit) varExp) bind retTy newAlts
cascade _ _ _ = error "Unexpected literal in 'cascade' function"

eqExp :: Ty -> Exp -> Exp -> Exp 
eqExp ty e1 = App (App eqOp e1) 
  where
    eqOp = case ty of
            Tcon (_, "Int#") -> mkVar "==#"
            Tcon (_, "Word#") -> mkVar "eqWord#"
            _ -> error $ "Unexpected type for eqExp in RemoveLitPat: " 
                         ++ show ty

    mkVar name = Var (Just primMname, name) $ tArrows (replicate 2 ty ++ [boolTy])

boolTy :: Ty
boolTy = Tcon (boolMname, "Bool")
boolMname :: Maybe Mname
boolMname = Just $ M (P "ghc-prim", ["GHC"], "Types")

pattErr :: String
pattErr = "We need at least two patterns in RemoveLitPat pass"


-- | Bind a case expression's vbind to its scrutinee, so uses of the
-- vbind are still correct after transforming the case's alternatives
makeLocal :: Exp -> Vbind -> Vdef
makeLocal scrut (name,ty) = Vdef (Nothing,name) ty scrut

isLitAlt :: Alt -> Bool
isLitAlt (Alit _ _) = True
isLitAlt _ = False

