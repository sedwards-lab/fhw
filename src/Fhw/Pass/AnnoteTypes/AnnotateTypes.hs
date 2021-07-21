{- |
Module : Fhw.Pass.AnnoteTypes.AnnotateTypes
Description: Mark the type of each Var and DCon in a module.

Mark the type of each Var and DCon in a module. This should be
done, e.g., after the parser has read in an external core file to establish
the type of each identifier if it is needed (e.g., by the SysVerGen code
generator).

In particular, this removes the UndefinedTy types initially placed on Var
and DCon objects.


ghc-7.6.3/utils/genprimopcode

-}

module Fhw.Pass.AnnoteTypes.AnnotateTypes ( annotateTypes ) where

import Fhw.Core.Core
import Data.Maybe ( fromMaybe )

import qualified Fhw.Pass.AnnoteTypes.Environment as E

data Env = Env { vars :: E.Env (Qual Var)
               , dcons :: E.Env (Qual Dcon)
               }

-- | Add the type to each variable reference in a module
annotateTypes :: Module -> Module
annotateTypes (Module mname tdefs vdefs) = Module mname tdefs vdefs'
    where
      emptyEnv = Env { vars = E.empty, dcons = E.empty }
      primEnv = foldl insertVdef emptyEnv (fhwPrimVdefs ++ ghcPrimVdefs)
      varEnv = foldl insertVdef primEnv vdefs
      typeEnv = foldl insertTdef varEnv (streamCon : tdefs)
      vdefs' = map (rewriteVdef typeEnv) vdefs

streamCon :: Tdef
streamCon = Data (Just fhwPrimMname, "Stream") [("a", Klifted)] [cdef]
  where
  cdef = Constr (Just fhwPrimMname, ":>") [("a", Klifted)] [Tvar "a", streamTy (Tvar "a")]

insertVdef :: Env -> Vdef -> Env
insertVdef env (Vdef v t _) = env { vars = E.insert v t $ vars env }

insertTdef :: Env -> Tdef -> Env
insertTdef env (Data tc tbs cdefs) = foldl insertCdef env cdefs
    where
      insertCdef :: Env -> Cdef -> Env
      insertCdef e (Constr dc _ types) =
          e { dcons = E.insert dc dconstrTy $ dcons e }
              where
                -- dconstrTy = tArrow (tArrows args) (Tcon tc)
                -- args = (map (Tvar . fst) tbinds) ++ types
                -- XXX(kuangya): I think this should be the correct way of
                -- constructing the type for data constructors. It makes my
                -- test cases pass.
                dconstrTy = foldr tArrow rty types
                rty = foldl Tapp (Tcon tc) tvars
                  where
                  tvars = map (\(tvar, _) -> Tvar tvar) tbs
      -- Should handle type arguments, too
--      insertCdef _ cd = error $ "insertTdef: do not know how to handle " ++ show cd

insertVbind :: Env -> Vbind -> Env 
insertVbind env (v, ty) = env { vars = E.insert (Nothing, v) ty $ vars env }

rewriteVdef :: Env -> Vdef -> Vdef
rewriteVdef env (Vdef v t e) = Vdef v t $ expr env e

-- recurse down expressions, rewriting as we go
expr :: Env -> Exp -> Exp

-- Look up a Var's type and add it to the Var object
expr env (Var v _) =
    Var v $ fromMaybe (error $ "AnnotateTypes: no type found for " ++ show v ++
                       " environment:\n" ++ E.showEnv (vars env)) $
        E.lookup v $ vars env

    -- Var v $ fromMaybe UndefinedTy $

expr env (Dcon d _) = Dcon d $ fromMaybe
                               (error $ "annotateTypes: no binding for Dcon "
                                ++ show d ++ "\nWas linking performed?") $
                               E.lookup d $ dcons env   
-- TODO: The "Nothing" case comes up for unboxed tuples, which also aren't defined.

expr _ l@(Lit _) = l
expr env (App e1 e2) = App (expr env e1) (expr env e2)
expr env (Appt e t) = Appt (expr env e) t

-- Lambda terms: add the formal arguments to the environment and fix the body
expr env (Lam binds ex) = Lam binds (expr (foldl addBind env binds) ex)
    where
      addBind :: Env -> Bind -> Env
      addBind e (Tb _) = e
      addBind e (Vb vb) = insertVbind e vb

expr env (Let vdefs ex) = Let vdefs' $ expr env' ex
    where
      env' = foldl insertVdef env vdefs -- Collect new bindings
      vdefs' = map (rewriteVdef env') vdefs

-- Pattern matching: rewrite the argument, then collect the bindings
-- and rewrite the alternatives
expr env (Case ex vbind ty alts) =
    Case (expr env ex) vbind ty (map rewriteAlt alts)
        where
          env' = insertVbind env vbind

          rewriteAlt :: Alt -> Alt
          rewriteAlt (Adefault e)        = Adefault $ expr env' e
          rewriteAlt (Alit l e)          = Alit l $ expr env' e
          rewriteAlt (Acon dc tbs vbs e) = Acon dc tbs vbs $ expr env'' e
              where
                env'' = foldl insertVbind env' vbs

------------------------------
--
-- Library of primitives to be included
--

fhwPrimVdefs :: [Vdef]
fhwPrimVdefs = [ fhwPrim "repeat" $ fhwMapTy ["a"]
               , fhwPrim "map" $ fhwMapTy ["a", "b"]
               , fhwPrim "zipWith" $ fhwMapTy ["a", "b", "c"]
               , fhwPrim "zipWith3" $ fhwMapTy ["a", "b", "c", "d"]
               , fhwPrim "memory#" $ tForalls [("word", Klifted)] $
                         tArrows [ primWordTy
                                 , wordTvar
                                 , streamTy boolTy
                                 , streamTy word32Ty
                                 , streamTy wordTvar
                                 , streamTy wordTvar]
               ]

wordTvar :: Ty
wordTvar = Tvar "word"

streamTcon :: Ty
streamTcon = Tcon (Just fhwPrimMname, "Stream")

ghcPrimTysMod :: Mname
ghcPrimTysMod = M (P "ghc-prim", ["GHC"], "Types")

pType :: String -> Ty
pType "Bool" = Tcon (Just ghcPrimTysMod, "Bool")
pType s = Tcon (Just primMname, s)

primIntTy :: Ty
primIntTy = pType "Int#"

primWordTy :: Ty
primWordTy = pType "Word#"             

word32Ty :: Ty
word32Ty = pType "Word32"

boolTy :: Ty
boolTy = pType "Bool"

fhwMapTy :: [String] -> Ty
fhwMapTy args = tForalls tvars $ tArrows $ func : streams
    where
      tvars = map (\s -> (s, Klifted)) args
      func = tArrows $ map Tvar args
      streams = map (streamTy . Tvar) args

streamTy :: Ty -> Ty
streamTy = Tapp streamTcon

fhwPrim :: String -> Ty -> Vdef
fhwPrim n t = Vdef (Just fhwPrimMname, n) t placeholderIntExpr

placeholderIntExpr :: Exp
placeholderIntExpr = Lit $ Literal (Lint 999) primIntTy

ghcPrim :: String -> Ty -> Vdef
ghcPrim n t = Vdef (Just primMname, n) t placeholderIntExpr

------------------------------
--
-- GHC Primitives
--
-- Code generated by a modified version of "genprimops"
--
-- In the utils/genprimopcode directory,
--
-- ./genprimopcode --make-type-db < ../../libraries/primops.txt

ghcPrimVdefs :: [Vdef]
ghcPrimVdefs =
    [ghcPrim "gtChar#" (tArrow (pType "Char#") (tArrow (pType "Char#") (pType "Bool")))
    , ghcPrim "geChar#" (tArrow (pType "Char#") (tArrow (pType "Char#") (pType "Bool")))
    , ghcPrim "eqChar#" (tArrow (pType "Char#") (tArrow (pType "Char#") (pType "Bool")))
    , ghcPrim "neChar#" (tArrow (pType "Char#") (tArrow (pType "Char#") (pType "Bool")))
    , ghcPrim "ltChar#" (tArrow (pType "Char#") (tArrow (pType "Char#") (pType "Bool")))
    , ghcPrim "leChar#" (tArrow (pType "Char#") (tArrow (pType "Char#") (pType "Bool")))
    , ghcPrim "ord#" (tArrow (pType "Char#") (pType "Int#"))
    , ghcPrim "+#" (tArrow (pType "Int#") (tArrow (pType "Int#") (pType "Int#")))
    , ghcPrim "-#" (tArrow (pType "Int#") (tArrow (pType "Int#") (pType "Int#")))
    , ghcPrim "*#" (tArrow (pType "Int#") (tArrow (pType "Int#") (pType "Int#")))
    , ghcPrim "mulIntMayOflo#" (tArrow (pType "Int#") (tArrow (pType "Int#") (pType "Int#")))
    , ghcPrim "quotInt#" (tArrow (pType "Int#") (tArrow (pType "Int#") (pType "Int#")))
    , ghcPrim "remInt#" (tArrow (pType "Int#") (tArrow (pType "Int#") (pType "Int#")))
    , ghcPrim "negateInt#" (tArrow (pType "Int#") (pType "Int#"))
    , ghcPrim ">#" (tArrow (pType "Int#") (tArrow (pType "Int#") (pType "Bool")))
    , ghcPrim ">=#" (tArrow (pType "Int#") (tArrow (pType "Int#") (pType "Bool")))
    , ghcPrim "==#" (tArrow (pType "Int#") (tArrow (pType "Int#") (pType "Bool")))
    , ghcPrim "/=#" (tArrow (pType "Int#") (tArrow (pType "Int#") (pType "Bool")))
    , ghcPrim "<#" (tArrow (pType "Int#") (tArrow (pType "Int#") (pType "Bool")))
    , ghcPrim "<=#" (tArrow (pType "Int#") (tArrow (pType "Int#") (pType "Bool")))
    , ghcPrim "chr#" (tArrow (pType "Int#") (pType "Char#"))
    , ghcPrim "int2Word#" (tArrow (pType "Int#") (pType "Word#"))
    , ghcPrim "int2Float#" (tArrow (pType "Int#") (pType "Float#"))
    , ghcPrim "int2Double#" (tArrow (pType "Int#") (pType "Double#"))
    , ghcPrim "uncheckedIShiftL#" (tArrow (pType "Int#") (tArrow (pType "Int#") (pType "Int#")))
    , ghcPrim "uncheckedIShiftRA#" (tArrow (pType "Int#") (tArrow (pType "Int#") (pType "Int#")))
    , ghcPrim "uncheckedIShiftRL#" (tArrow (pType "Int#") (tArrow (pType "Int#") (pType "Int#")))
    , ghcPrim "plusWord#" (tArrow (pType "Word#") (tArrow (pType "Word#") (pType "Word#")))
    , ghcPrim "minusWord#" (tArrow (pType "Word#") (tArrow (pType "Word#") (pType "Word#")))
    , ghcPrim "timesWord#" (tArrow (pType "Word#") (tArrow (pType "Word#") (pType "Word#")))
    , ghcPrim "quotWord#" (tArrow (pType "Word#") (tArrow (pType "Word#") (pType "Word#")))
    , ghcPrim "remWord#" (tArrow (pType "Word#") (tArrow (pType "Word#") (pType "Word#")))
    , ghcPrim "and#" (tArrow (pType "Word#") (tArrow (pType "Word#") (pType "Word#")))
    , ghcPrim "or#" (tArrow (pType "Word#") (tArrow (pType "Word#") (pType "Word#")))
    , ghcPrim "xor#" (tArrow (pType "Word#") (tArrow (pType "Word#") (pType "Word#")))
    , ghcPrim "not#" (tArrow (pType "Word#") (pType "Word#"))
    , ghcPrim "uncheckedShiftL#" (tArrow (pType "Word#") (tArrow (pType "Int#") (pType "Word#")))
    , ghcPrim "uncheckedShiftRL#" (tArrow (pType "Word#") (tArrow (pType "Int#") (pType "Word#")))
    , ghcPrim "word2Int#" (tArrow (pType "Word#") (pType "Int#"))
    , ghcPrim "gtWord#" (tArrow (pType "Word#") (tArrow (pType "Word#") (pType "Bool")))
    , ghcPrim "geWord#" (tArrow (pType "Word#") (tArrow (pType "Word#") (pType "Bool")))
    , ghcPrim "eqWord#" (tArrow (pType "Word#") (tArrow (pType "Word#") (pType "Bool")))
    , ghcPrim "neWord#" (tArrow (pType "Word#") (tArrow (pType "Word#") (pType "Bool")))
    , ghcPrim "ltWord#" (tArrow (pType "Word#") (tArrow (pType "Word#") (pType "Bool")))
    , ghcPrim "leWord#" (tArrow (pType "Word#") (tArrow (pType "Word#") (pType "Bool")))
    , ghcPrim "popCnt8#" (tArrow (pType "Word#") (pType "Word#"))
    , ghcPrim "popCnt16#" (tArrow (pType "Word#") (pType "Word#"))
    , ghcPrim "popCnt32#" (tArrow (pType "Word#") (pType "Word#"))
    , ghcPrim "popCnt64#" (tArrow (pType "Word#") (pType "Word#"))
    , ghcPrim "popCnt#" (tArrow (pType "Word#") (pType "Word#"))
    , ghcPrim "narrow8Int#" (tArrow (pType "Int#") (pType "Int#"))
    , ghcPrim "narrow16Int#" (tArrow (pType "Int#") (pType "Int#"))
    , ghcPrim "narrow32Int#" (tArrow (pType "Int#") (pType "Int#"))
    , ghcPrim "narrow8Word#" (tArrow (pType "Word#") (pType "Word#"))
    , ghcPrim "narrow16Word#" (tArrow (pType "Word#") (pType "Word#"))
    , ghcPrim "narrow32Word#" (tArrow (pType "Word#") (pType "Word#"))
    , ghcPrim "indexIntArray#" (tArrow (pType "ByteArray#") (tArrow (pType "Int#") (pType "Int#")))
    , ghcPrim "indexCharOffAddr#" (tArrow (pType "Addr#") (tArrow (pType "Int#") (pType "Char#")))
    , ghcPrim "raise#" (tArrow (Tvar "a") (Tvar "b"))
    ]
    
