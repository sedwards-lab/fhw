module Fhw.Pass.Defunctionalization.LambdaLift where

import Fhw.Core.Core
import Fhw.Pass.RemoveRecursion.Utils (cfvAll)
import Fhw.Pass.Defunctionalization.Utils (q)

import qualified Data.List as List 

import Control.Monad.State

--import Debug.Trace

data Env = Env { n :: Int, 
                 newLams :: [Vdef]
               } deriving Show

lambdaLift :: Module -> Module
lambdaLift (Module mname tdefs vdefs) = Module mname tdefs vdefs''
--trace ("\n new lambdas:" ++ show (newLams s) ++ " :end \n") Module mname tdefs vdefs''
    where 
        initstate = Env {n = 0, newLams = []}
        (vdefs',s) = runState (mapM llVdef vdefs) initstate
        vdefs'' =  newLams s ++ vdefs'

llVdef :: Vdef -> State Env Vdef
llVdef (Vdef (mname, var) ty (Lam binds e)) = 
    do
        --put s{newLams = vd : (newLams s)} --doesn't move local lambdas into global scope rn 
        e' <- llExp e
        return (Vdef (mname, var) ty (Lam binds e'))
llVdef (Vdef (mname, var) ty e) = fmap (Vdef (mname,var) ty) (llExp e)

vartoExp :: (Var,Ty) -> Exp 
vartoExp (var, ty) = Var (q var) ty

getLabel :: State Env Var
getLabel =
    do 
        s <- get
        let nextlam = "lizzieLam" ++ show (n s)
        put s{n = n s + 1}
        return nextlam

llExp :: Exp -> State Env Exp
llExp (Lam binds e) = --fmap (Lams bind) (llExp e)
    do 
        let freevars = List.map (\ (t, v) -> (v, t)) (cfvAll $ Lam binds e)
        let newbinds = List.map Vb freevars
        let newargs = List.map vartoExp freevars
        e' <- llExp e
        let ex' = Lam (newbinds ++ binds) e' 
        let newlamtype = exprType ex'
        newname <- getLabel 
        let newcall = mkFuncApp (vartoExp (newname, newlamtype)) [] newargs
        let lamdecl = Vdef (q newname) newlamtype ex'
        s <- get
        put s{newLams = lamdecl : newLams s}
        return newcall

llExp ex@(App _ _) = 
    do 
        let (call,args,typs) = collectArgs ex
        call' <- llExp call 
        args' <- mapM llExp args
        return $ mkFuncApp call' typs args'

llExp (Case e vb ty alts) = 
    do
        e' <- llExp e
        alts' <- mapM llAlt alts
        return $ Case e' vb ty alts'
llExp ex@(Var _ _)  = return ex
llExp ex@(Lit _) = return ex
llExp ex@(Dcon _ _) = return ex
llExp (Appt e typ) = fmap (`Appt` typ) (llExp e)
llExp (Let vdefs e) = 
    do 
        vdefs' <- mapM llVdef vdefs
        e' <- llExp e
        return $ Let vdefs' e'

llAlt :: Alt -> State Env Alt
llAlt (Acon (mname, dcon) tbs vbs e) = fmap (Acon (mname, dcon) tbs vbs) (llExp e)
llAlt (Alit lit e) = fmap (Alit lit) (llExp e)
llAlt (Adefault e) =  fmap Adefault (llExp e)
