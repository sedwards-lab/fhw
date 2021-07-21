module Fhw.Pass.LiftExpressions.LiftExpressions ( liftExpressions ) where
    import Fhw.Core.Core
    import Fhw.Pass.RemoveRecursion.Utils (replaceVar)
    import Data.Maybe (fromJust)
    --Also exists in data.List I think.
    mapAccum :: (a -> b -> (a,c))-> a -> [b] -> (a,[c])
    mapAccum _ n [] = (n,[])
    mapAccum f n (x:xs) = (n'',x':xs')   
        where
            (n',x') = f n x
            (n'',xs') = mapAccum f n' xs

    liftExpressions :: Module -> Module
    liftExpressions (Module mname tdefs vdefs) = Module mname tdefs vdefs' 
        where
              (_, vdefs') = mapAccum liftVdef 0 vdefs

    liftVdef :: Int -> Vdef -> (Int,Vdef)
    liftVdef n (Vdef (mname, var) ty e) = (n',Vdef (mname, var) ty e') 
        where 
            (n',e') = liftExp n e

    liftExp :: Int -> Exp -> (Int,Exp)
    liftExp n ex@(App _ _) = 
        case vdefs' of
            [] -> (n'',ex) --n'' = n here 
            _ : _ -> (n'',Let vdefs' ex')
        where 
            (call,args,typs) = collectArgs ex
            (n',args') = mapAccum liftExp n args
            (n'',newvarsdefs) = mapAccum formatExp n' args'
            (vars, vdefs)= unzip newvarsdefs
            vdefs' = map (\a -> case a of 
                            Just b -> b
                            Nothing -> nothErr) 
                        (filter (\a -> case a of Just _ -> True; _ -> False) vdefs)

            ex' = mkFuncApp call typs vars --distributeArgs(call, vars, typs)
            nothErr = error "Unexpected occurrence in LiftExpressions"

            --distributeArgs :: (Exp, [Exp], [Ty]) -> Exp
            --distributeArgs (call,args,ty:[]) = 
              --  foldl (\prev e -> App prev e) (Appt call ty) args
                   --idk what to do if typs has more than one type

    liftExp n (Case e vbind ty alts) = 
        case vdefmaybe of 
            Nothing -> (n''',Case var vbind ty alts')
            Just vdef -> (n''',Let [vdef] ex')
        where
            (n', e') = liftExp n e
            (n'',(var, vdefmaybe)) = formatExp n' e'
            (n''', alts') =  mapAccum liftAlt n'' alts
            ex' = replaceVar (fst vbind) (vdefName $ fromJust vdefmaybe) $ Case var vbind ty alts'
    liftExp n ex@(Var _ _) = (n,ex)
    liftExp n ex@(Lit _) = (n,ex)
    liftExp n ex@(Dcon _ _) = (n,ex)
    liftExp n (Appt e typ) = (n',Appt e' typ)
        where (n',e') = liftExp n e             
    liftExp n (Lam binds e) = (n',Lam binds e')
        where (n',e') = liftExp n e
    liftExp n (Let vdefs e) = (n'',Let vdefs' e')
        where 
            (n',vdefs') = mapAccum liftVdef n vdefs
            (n'',e') = liftExp n' e     

    liftAlt :: Int -> Alt -> (Int,Alt)  
    liftAlt n (Acon (mname, dcon) tbs vbs e) =  (n',Acon (mname, dcon) tbs vbs e')
                                                    where (n',e') =  liftExp n e
    liftAlt n (Alit lit e)                  = (n',Alit lit e')
                                                    where (n',e') =  liftExp n e
    liftAlt n (Adefault e)                  = (n',Adefault e')
                                                    where (n',e') =  liftExp n e


    formatExp :: Int -> Exp -> (Int,(Exp,Maybe Vdef))
    formatExp n ex@(Var _ _)  = (n,(ex, Nothing))
    formatExp n e = (n+1,(Var qualvar ety, Just (Vdef qualvar ety e)))
        where 
            ety = exprType e
            qualvar = (Nothing, "lizzieLet" ++ show n)

