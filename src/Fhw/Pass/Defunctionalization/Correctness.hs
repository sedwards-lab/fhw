{--
 - The goal of this correctness checker is to check that the result of the defunctionalization and lambda lifting passes have no higher order functions.
 - --}


module Fhw.Pass.Defunctionalization.Correctness where


import Fhw.Core.Core
import qualified Data.List as List
import Debug.Trace

bindTy :: Bind -> Ty
bindTy (Tb (v, ty))  = error ("Defunc: unexpected type binding found " ++ show v ++ " ; " ++ show ty)
bindTy (Vb (_, ty)) = ty


checkHoF :: Module -> Either String Module 
checkHoF m@(Module mname tdefs vdefs) = case mapM (mapVdefM checkHoFExp) vdefs of
                                           Right _ -> return m
                                           Left err -> Left err

checkHoFVdef :: Vdef -> Either String Vdef 
checkHoFVdef vd@(Vdef qvar ty (Lam binds e)) = 
    case  (List.find (isFunctionTy . bindTy) binds) of 
        Nothing -> do newE <- checkHoFExp (trace ("Vdef expr " ++ show e) e)
                      return $ Vdef qvar ty (Lam binds newE)
        Just fcf -> Left ("Defunc_Correctness:a wild first class functions appeared: " ++ show fcf ++ " in the binds of " ++ show (qvar, ty))
checkHoFVdef (Vdef qvar ty e) = return $ Vdef qvar ty e

checkHoFExp :: Exp -> Either String Exp
checkHoFExp (Lam binds e) = 
    case  (List.find (isFunctionTy . bindTy) binds) of 
        Nothing -> return $ Lam binds e
        Just fcf -> Left ("Defunc_Correctness:a wild first class functions appeared: " ++ show fcf ++ " in the binds of " ++ show binds)
checkHoFExp ex@(App e1 e2) =
        case isFunctionTy $ exprType e2 of 
            False -> return ex
            True -> Left ("Defunc_Correctness: function type as argument in expression application " ++ show ex ++ " with type " ++ show (exprType ex) ++ " in the application " ++ show ex ++ " with type " ++ show (exprType ex)) 
checkHoFExp ex = return ex

