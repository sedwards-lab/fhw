
module Fhw.Pass.Defunctionalization.Utils where

import Fhw.Core.Core
import Fhw.Pass.RemoveRecursion.Utils (replaceVar, cfv)
import qualified Data.List as List

q :: Var -> Qual Var
q v = (Nothing, v)

tdefTy :: Tdef -> Ty
tdefTy (Data qtcon _ _ ) = Tcon qtcon

bindTy :: Bind -> Ty
bindTy (Tb (v, ty))  = error ("Defunc: unexpected type binding found " ++ show v ++ " ; " ++ show ty)
bindTy (Vb (_, ty)) = ty


getAllBinds :: [Vdef] -> [Bind]
getAllBinds (Vdef _ _ (Lam binds _) : vds) = binds ++ getAllBinds vds
getAllBinds (_ : vds) = getAllBinds vds
getAllBinds [] = []

replaceBindsinExp :: Exp -> [Bind] -> [Bind] -> Exp
replaceBindsinExp ex oldbinds newbinds = 
    foldl (\ e (b1, b2) ->
        (if bindTy b1 == bindTy b2
            then
                let (Vb (old, _), Vb (new, _ )) = (b1, b2) in
                    replaceVar old new e
            else error ("Defunc: bind mismatch" ++ show b1 ++ "and" ++ show b2))
        ) ex (zip oldbinds newbinds)


typestoVbinds :: String -> [Ty] -> [Vbind]
typestoVbinds s tys = vbinds 
    where
        (_ , vbinds) = List.mapAccumR (\n t -> (n+1, (s ++ show n, t))) 1 tys


bindstoExps :: [Bind] -> [Exp]
bindstoExps binds = map (\(Vb (v, t)) -> Var (q v) t) binds


explodeOperand :: Exp -> [Bind] -> Int -> (String, Qual Var, Exp, [Vbind], [Exp])
explodeOperand ex@(App _ _) _ _ = (dcon, (mname, fname), call, vbinds, args) 
    where 
        (call, args, typs) = collectArgs ex 
        (mname, fname) = 
            case call of 
                (Var (m, f) _) -> (m, f)
                _ -> error "Defunc: True craziness, LHS of app not a var"
        --what about vbinds??
        dcon = "Dcon_PA" ++ show (length args) ++ "_" ++ show fname 
        vbinds = typestoVbinds (show fname ++ "_pa_arg") (map exprType args)

explodeOperand ex@(Lam old_binds e) binds n = (dcon, (mname, fname), newlam, vbinds, args)
    where 
        vbinds = List.map (\ (t, v) -> (v, t)) (cfv ex) --freevars
        args = map (\(v, t) -> Var (q v) t) vbinds
        (mname, fname) = q ("LizzieLam" ++ show n)
        dcon = "Dcon_AFHi_" ++ show fname
        e' = replaceBindsinExp e old_binds binds 
        --allbinds = map Vb vbinds ++ binds
        --newlam = Lam allbinds e'
        newlam = ex
         
        --defuncVdef $ Vdef (mname, fname) newlam
        

explodeOperand e _ _ = error ("Defunc: operand has function type, but is not an application or lambda expression. Here it is: " ++ show e ++ " type: " ++ show (exprType e))


createCdefAlt :: String -> Exp -> [Vbind] -> [Bind] -> [Ty] -> (Cdef, Alt)
createCdefAlt dcon call vbinds binds tys = (cdef, alt)
    where 
        cdef = Constr (q dcon) [] tys
        allbinds = map Vb vbinds ++ binds
        allargs = bindstoExps allbinds
        e = mkFuncApp call [] allargs
        alt = Acon (q dcon) [] vbinds e
