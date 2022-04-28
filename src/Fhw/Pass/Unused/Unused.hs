module Fhw.Pass.Unused.Unused where

import Fhw.Core.Core
import Debug.Trace

removeUnused :: Module -> Module
removeUnused m@(Module mname tdefs vdefs) = Module mname tdefs  newVdefs  where

    newVdefs = map (\v@(Vdef var ty ex) -> Vdef var ty (removeUnusedHelper ex)) vdefs

    removeUnusedHelper :: Exp -> Exp
    removeUnusedHelper ex = case ex of
        Let vdefs ex1 -> let newEx1 = removeUnusedHelper ex1
                             newVdefs = map (\v@(Vdef var ty ex) -> Vdef var ty (removeUnusedHelper ex)) vdefs
                             newVdefs' = filter (\x@(Vdef var _ _) -> isUsed var newEx1) newVdefs in
                                 case newVdefs' of
                                      [] -> newEx1
                                      _  -> Let newVdefs' newEx1
        App ex1 ex2 -> App (removeUnusedHelper ex1) (removeUnusedHelper ex2)
        Appt ex1 ty -> Appt (removeUnusedHelper ex1) ty
        Lam binds ex1 -> Lam binds (removeUnusedHelper ex1)
        Case ex1 binds ty alts -> let newAlts = map (\x -> case x of
                                                        Acon var tbinds vbinbs ex2 -> Acon var tbinds vbinbs (removeUnusedHelper ex2)
                                                        Alit lit ex2 -> Alit lit (removeUnusedHelper ex2)
                                                        Adefault ex2 -> Adefault (removeUnusedHelper ex2)) alts in
                                  Case (removeUnusedHelper ex1) binds ty newAlts
        x -> x

    isUsed :: Qual Var -> Exp -> Bool
    isUsed var ex = used where
            used =  case ex of
                        Var (var') ty -> var == var'
                        Dcon _ _ -> False
                        Lit _ -> False
                        App ex1 ex2 -> (isUsed var ex1) || (isUsed var ex2)
                        Appt ex1 ty -> (isUsed var ex1)
                        Lam _ ex1 -> (isUsed var ex1)
                        Let vdefs ex1 -> isUsed var ex1 || any (\v@(Vdef _ _ ex1) -> isUsed var ex1) vdefs
                        Case ex1 _ _ alts -> (isUsed var ex1) || (any (\x -> case x of
                            Acon _ _ _ ex2 -> isUsed var ex2
                            Alit _ ex2 -> isUsed var ex2
                            Adefault ex2 -> isUsed var ex2) alts)