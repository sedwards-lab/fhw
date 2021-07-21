{-
Author: 		Amanda Liu
Module:			Fhw.Pass.ColorTypes.ColorTypes
Description:	Performs Hindley-Milner type inference on a module's variable
				definitions.

Infer the types of Vdefs in a module in terms of type variables generated for 
basic types of Vars and Literals, overwriting their classic types. Inference is
performed over the expressions of variables, lambdas, applications, case
expressions, and let bindings.

-}

module Fhw.Pass.ColorTypes.ColorTypes ( colorTypes ) where 

import Fhw.Core.Core
import Data.Maybe
import Prelude
import Control.Monad.State
import Debug.Trace

import qualified Fhw.Pass.AnnoteTypes.Environment as E

colorTypes :: Module -> Module
colorTypes (Module name tdefs vdefs) = Module name tdefs newvdefs
	where
		emptyEnv = E.empty
		primEnv = foldl insertVdef emptyEnv primVdefs
		newvdefs = recTypeVdefs (vdefs) primEnv vdefs

recTypeVdefs :: [Vdef] -> E.Env (Qual Var) ->[Vdef] -> [Vdef]
recTypeVdefs [] _ _ = []
recTypeVdefs (vdef:xs) e full = newVdef : (recTypeVdefs xs newE full)
	where
		(newVdef, newE) = typeVdef vdef e full

typeVdef :: Vdef -> E.Env (Qual Var) -> [Vdef] -> (Vdef, E.Env (Qual Var))
typeVdef (Vdef qual@(_,var) _ expr) e full = (Vdef qual newTy expr, newE)
	where
		(newTy, _) = inferExpr expr (E.insert qual (Tvar $ "tyvar_" ++ var) e) full
		newE = insertVdef e (Vdef qual newTy expr)

{-
	Inference Functions
-}

inferExpr :: Exp -> E.Env (Qual Var) -> [Vdef] -> (Ty, E.Env (Qual Var))
inferExpr (Var qual _) e full = inferVar qual e full
inferExpr (Lam blist expr) e full = inferLambda blist expr e full
inferExpr (Let vdeflist expr) e full = inferLet vdeflist expr e full
inferExpr (App expr1 expr2) e full = inferApp expr1 expr2 e full
inferExpr (Lit lit) e _ = inferLit lit e
inferExpr (Case expr vbind ty altlist) e full = 
	inferCase expr vbind ty altlist e full
inferExpr (Appt _ _) e _ = (Tvar "APPT", e)
inferExpr (Dcon (_,d) ty) e _ = (Tvar ("DCON: " ++ d ++ (show ty)), e)

inferCase :: Exp -> Vbind -> Ty -> [Alt] -> E.Env (Qual Var) -> 
	[Vdef] -> (Ty, E.Env (Qual Var))
inferCase expr (vbname,_) _ altlist e full = (retTy, newE)
	where
		(_, altEnv, maybeTy) = inferAlt (head altlist) e full
		(vbtype, vbEnv) = inferVar (Nothing,vbname) altEnv full
		((Tvar old), exprEnv) = inferExpr expr vbEnv full --not always tvar
		(Tvar new) = Data.Maybe.fromMaybe vbtype maybeTy
		newE = (map (rewrite old new) (exprEnv))
		(retTy,_,_) = inferAlt (head altlist) newE full

inferAlt:: Alt -> E.Env (Qual Var) -> [Vdef] -> (Ty, E.Env (Qual Var), Maybe Ty)
inferAlt(Acon _ _ vblist@(_:_) expr) e full = (newTy, retE, Just vbTy)
	where
		(newTy, newE) = (inferExpr expr e full)
		(var, _) = (head vblist) -- more?
		(vbTy, retE) = inferVar (Nothing, var) newE full
inferAlt(Acon _ _ [] expr) e full = (newTy, newE, Nothing) -- tblist? dcon?
	where (newTy,newE) = (inferExpr expr e full)
inferAlt (Alit _ expr) e full = (newTy, newE, Nothing)
	where (newTy, newE) = (inferExpr expr e full)
inferAlt (Adefault expr) e full = (newTy, newE, Nothing)
	where (newTy, newE) = (inferExpr expr e full)  

inferLit :: Lit -> E.Env (Qual Var) -> (Ty, E.Env (Qual Var))
inferLit (Literal corelit _) e = (newTy,e)
	where
		newTy = Tvar $ "tyvar_l" ++ show corelit

inferLet :: [Vdef] -> Exp -> E.Env (Qual Var) -> [Vdef] -> (Ty, E.Env (Qual Var))
inferLet vdeflist expr e full = (newTy, newE)
	where
		vdefRetype = recTypeVdefs vdeflist e full
		vdefE = foldl insertVdef e vdefRetype
		(newTy, newE) = inferExpr expr vdefE full

inferApp :: Exp -> Exp -> E.Env (Qual Var) -> [Vdef] -> (Ty, E.Env (Qual Var))
-- hacky; get the prim data constructor to work for now
inferApp (Dcon (_,d) _) aExpr e full = if (lastHash d) 
	then inferExpr aExpr e full
	else inferExpr aExpr e full
inferApp fExpr aExpr e full =  (newTy, newE)
	where
		(atype, ae) = inferExpr aExpr e full
		(ftype, fe) = inferExpr fExpr ae full
		(fArrowType, fArrowE) = redoVarApp fExpr ftype atype fe
		(newTy, newE) = rewriteAppType fArrowType atype fArrowE

redoVarApp :: Exp -> Ty -> Ty -> E.Env (Qual Var) -> (Ty, E.Env (Qual Var))
redoVarApp (Var qual@(_, var) _) typ@(Tvar _) atype e = 
	let arrowType = (Tapp (Tapp (Tcon tcArrow) atype) typ) in
	let newE = E.insert qual arrowType e in
	(arrowType, newE) 
redoVarApp fexpr ftype atype e = (ftype, e)

rewriteAppType :: Ty -> Ty -> E.Env (Qual Var) -> (Ty, E.Env (Qual Var))
rewriteAppType tap@(Tapp _ _) (Tvar new) e = (tArrows (retArgs ++ [retType]),newE)
	where
		(ret@(Tvar r), args) = trace (show (tap)) (collectArgTypes tap)
		(Tvar old) = head args -- ever empty???
		retArgs = replaceTvar (tail args) old new
		retType = if r == old then (Tvar new) else ret
		newE = map (rewrite old new) e
rewriteAppType old _ e = (old,e)

rewrite :: String -> String -> ((Qual Var), Ty) -> ((Qual Var), Ty)
rewrite old new (key@_, entry@(Tvar var)) = (key, newEntry)
	where
		newEntry = if var == old then (Tvar new) else entry
rewrite _ _ (key@_, entry@_) = (key, entry)

replaceTvar :: [Ty] -> String -> String -> [Ty]
replaceTvar ((Tvar v):xs) old new = newVar:(replaceTvar xs old new)
	where
		newVar = if v == old then (Tvar new) else (Tvar v)
replaceTvar ((other@_):xs) old new = other : (replaceTvar xs old new)
replaceTvar [] _ _ = []

-- \x:a . x-> y:b : a->b
inferLambda :: [Bind] -> Exp -> E.Env (Qual Var) -> [Vdef] -> 
	(Ty, E.Env (Qual Var))
inferLambda bindlist expr e full = (newTy, e)
	-- returns mapping of lower scope unbounded types for variables
	where
		(exprTy, newE) = inferExpr expr e full
		bindTypes = tyFromBindings bindlist newE full
		newTy = tArrows $ bindTypes ++ [exprTy] 

-- x: tyvar_x 
inferVar :: Qual Var -> E.Env (Qual Var) -> [Vdef] -> (Ty, E.Env (Qual Var))
inferVar qual@(_, var) e full = (newTy, (qual, newTy) : newE)
	where
		vdefLookupResult = vdefLookup qual full
		lookupResult = Prelude.lookup qual e 
		(newTy, newE) = if Data.Maybe.isJust lookupResult
			then (Data.Maybe.fromJust lookupResult, e)
			else if Data.Maybe.isJust vdefLookupResult
				then fromVdefE $ 
					typeVdef (Data.Maybe.fromJust vdefLookupResult) e full
				else ((Tvar $ "tyvar_" ++ var),e)

{-
	Helper Functions
-}

-- get type from variable def arg
fromVdefE :: (Vdef, E.Env (Qual Var)) -> (Ty, E.Env (Qual Var))
fromVdefE ((Vdef _ t _), e) = (t,e)

-- check if last char in a String is '#'
lastHash :: String -> Bool
lastHash [] = False
lastHash (x:xs) = if x == '#' then True else lastHash xs

-- returns list of Ty from bindings
tyFromBindings :: [Bind] -> E.Env (Qual Var) -> [Vdef] -> [Ty]
tyFromBindings [] _  _ = []
tyFromBindings (Vb (var, _) : xs) e full = newTy : (tyFromBindings xs e full)
	where
		(newTy, _) = inferVar (Nothing, var) e full
tyFromBindings (Tb _ : xs) e full = tyFromBindings xs e full -- is this wise?
{-
tyFromBindings (Tb (var,kind) : xs) e full = newTy : (tyFromBindings xs e full)
	where
		newTy = (Tvar ("var_" ++ var ++ "_" ++ (show kind)))
-}

-- inserts Vdef into Env
insertVdef :: E.Env (Qual Var) -> Vdef -> E.Env (Qual Var)
insertVdef e (Vdef v t _) = E.insert v t e

-- search for a vdef by name
vdefLookup :: Qual Var -> [Vdef] -> Maybe Vdef
vdefLookup qual@(_,name) (vd@(Vdef (_,qname) _ _):xs) = if name == qname 
	then Just vd 
	else vdefLookup qual xs
vdefLookup _ [] = Nothing

placeHolderExpr :: Exp
placeHolderExpr = Lit $ Literal (Lint 0) (Tvar "plhldr")

colorPrim :: String -> Ty -> Vdef
colorPrim n t = Vdef (Just primMname, n) t placeHolderExpr

primVdefs :: [Vdef]
primVdefs = [colorPrim "+#" (tArrows [(Tvar "t+"),(Tvar "t+"),(Tvar"t+")]),
		colorPrim ">#" (tArrows [(Tvar "t>"),(Tvar "t>"),(Tvar "t>")]),
		colorPrim "<#" (tArrows [(Tvar "t>"),(Tvar "t>"),(Tvar "t>")]),
		colorPrim "remInt#" (tArrows [(Tvar "trem"),(Tvar "trem"),(Tvar "trem")]),
		colorPrim "==#" (tArrows [(Tvar "teq"),(Tvar "teq"),(Tvar "tbool")]),
		colorPrim "-#" (tArrows [(Tvar "t-"),(Tvar "t-"),(Tvar "t-")])]
