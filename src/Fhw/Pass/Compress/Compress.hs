module Fhw.Pass.Compress.Compress (compress, compressIO)

where


import Fhw.Core.Core
import Debug.Trace
import Control.Monad
import qualified Data.Map as Map
import qualified Data.List


threshold = 64

compressIO :: Module -> IO Module
compressIO m@(Module mname tdefs vdefs) =
    do
    forM_ vdefs (\(Vdef (_,_) ty e) -> printHelper ty)
    return $ Module mname (tdefs) vdefs where

        printHelper ty = case ty of
            Tvar x -> print "Tvar" >> print x
            Tcon name -> print "Tcon" >> print name
            Tapp ty1 ty2 -> print "Tapp" >> printHelper ty1 >> printHelper ty2
            Tforall tbins ty -> print "Tforall" >> printHelper ty
            x -> print x

compress :: Module -> Module
compress m@(Module mname tdefs vdefs) =
    case compressTdefs tdefs [] of
        Nothing -> m
        Just (tdefs', renames) ->
            let newModule = trace "Here, line 21" (Module mname tdefs' vdefs)
                -- compress (Module mname tdefs' ([ Vdef vname ty (replaceDcon newModule renames e) | vdef@(Vdef vname ty e) <- vdefs]))
                cont2@(vdefs', vdefsAcc) = Data.List.mapAccumL (\vdefsAcc vdef@(Vdef vname ty e)-> let cont@(e',vdefsAcc') = replaceDcon newModule vdefsAcc renames (length vdefsAcc) e in (vdefsAcc', Vdef vname ty e')) [] vdefs in
                compress (Module mname tdefs' (Data.List.nub (vdefs' ++  vdefsAcc)))
        where
    -- do
    -- forM_ vdefs (\(Vdef (_,_) _ e) -> printHelper' e)
    -- let res = compressTdefs tdefs []
    -- case res of Nothing -> print "Nothing"
    --             (Just x) -> print x
    -- return $ Module mname (tdefs) vdefs where

        -- printHelper' x = let splitted = split x in
        --     case splitted of
        --         Just (tdefs,renames) -> do
        --             forM_ tdefs print
        --             forM_ (Map.toList renames) print
        --         Nothing -> print ""        
        compressTdefs :: [Tdef] -> [Tdef]-> Maybe ([Tdef], Map.Map Dcon (Dcon, Bool))
        compressTdefs tdefs tdefs' =
            case tdefs of
                (t:ts) -> let tsplit = split t in
                    case tsplit of
                                    Nothing -> compressTdefs ts (tdefs' ++ [t])
                                    Just (t', renames) -> Just (tdefs' ++ t' ++ ts, renames)
                [] -> Nothing
        printHelper e = case e of
            Dcon (mname, dname) ty -> do
                print "Dcon"
                print  ty
                print e
            App e1 e2 -> do
                print "App"
                printHelper e1
                printHelper e2
            Appt e1 ty -> do
                print "Appt"
                print ty
                printHelper e1
            Case e vbind ty alts -> do
                print "Case"
                print vbind
                print ty
                printHelper e
                forM_ alts printAlt
            Lam _ e -> do
                print "Lam"
                printHelper e
            Let vdefs e -> do
                print "Let"
                forM_ vdefs (\(Vdef (_,_) _ e) -> printHelper e)
                printHelper e
            Var (mname, vname) ty -> do
                print "Var"
                print vname
                let ty = getType vname m
                case ty of Nothing -> error "Type not found"
                           (Just x) -> case x of
                               Tvar tvar -> do
                                print "Tvar"
                                print tvar
                               Tcon (mname, tname) -> do
                                   print "Tcon"
                                   print tname
                               _ -> print x
            Lit _ -> print "Lit"
        printAlt alt = case alt of
            Acon (_ , aname) tbinds vbinds e -> do
                print "Acon"
                print aname
                print tbinds
                print vbinds
            _ -> print "does not matter"
-- take each ADT which has more than 64 'or' entries and split it into halves 
-- also returns the mappring from old contructors to new ones. E.g. if it was OldData = C_1 | C_2 | C_3 Int | C_4 -> NewData = DataLeft DataLeft | DataRight DataRight
-- DataLeft = C_1 | C_2 ;
-- C_1 should be replaced by DataLeft C_1 
-- same applies to case expr 

--Bool markes the entry point for split
split :: Tdef -> Maybe ([Tdef], Map.Map Dcon (Dcon, Bool))
split tdef@(Data (mname,tname) tbinds cdefs) = if size > threshold
                                        then Just ([original,left,right],rename)
                                        else Nothing where
        size = length cdefs
        border = size `div` 2
        (leftCdefs,rightCdefs) = splitAt border cdefs
        left = Data (mname,tname ++ "_left") tbinds leftCdefs
        right = Data (mname,tname ++ "_right") tbinds rightCdefs -- TODO: if a new type contains tbinds that are used, e.g. becomes DataLeft a b and is needed to be references as OldData = DataLeft type1 type2 | ..., guess this should not be the case after the mono phase
        original = Data (mname,tname) tbinds [Constr (mname,tname ++ "_left") [] [Tcon (mname,tname ++ "_left")],
                                                Constr (mname,tname ++ "_right") [] [Tcon (mname,tname ++ "_right")]]

        renameLeft = zipWith (\(Constr (mname,dname) _ _) x -> (dname,x)) leftCdefs (replicate (length leftCdefs) (tname ++ "_left",False))
        renameRight = zipWith (\(Constr (mname,dname) _ _) x -> (dname,x)) rightCdefs (replicate (length rightCdefs) (tname ++ "_right",False))
        rename = Map.fromList(renameLeft ++ renameRight ++ [(tname,(tname,True))])

getType :: Var -> Module -> Maybe Ty
getType v (Module _ _ vdefs) = getTypeFromVdefs v vdefs where

        getTypeFromVdefs v vdefs = case vdefs of
            [] -> Nothing
            (x:xs) -> let resx = getTypeFromVdef v x in case resx of
                Nothing -> getTypeFromVdefs v xs
                x -> x

        getTypeFromVdef v vdef@(Vdef (mname, vname) ty expr) = if v == vname then Just ty
                                                        else getTypeFromExp v expr
        getTypeFromExp :: Var -> Exp -> Maybe Ty
        getTypeFromExp v expr = case expr of
            App e1 e2 -> let rese1 = getTypeFromExp v e1 in
                case rese1 of
                    Nothing -> getTypeFromExp v e2
                    x -> x
            Lam vbinds e -> case getTypeFromVbinds v vbinds of
                Nothing -> getTypeFromExp v e
                x -> x
            Let vdefs e -> let resvdefs = getTypeFromVdefs v vdefs in case resvdefs of
                Nothing -> getTypeFromExp v e
                x -> x
            Case (Var _ _) vbinds ty alts -> getTypeFromAlts v alts
            Case {} -> error "Cases of var are assumed"
            _ -> Nothing

        getTypeFromVbinds v vbinds = case vbinds of
            [] -> Nothing
            (vbind@(Vb (vname,ty)):vs) -> if vname == v then Just ty
                                        else getTypeFromVbinds v vs
            (vbind:vs) ->  getTypeFromVbinds v vs
        getTypeFromAlts :: Var -> [Alt] -> Maybe Ty
        getTypeFromAlts v alts = case alts of
            [] -> Nothing
            (a:as) -> case a of
                Acon _ _ _ e -> case getTypeFromExp v e of
                    Nothing -> getTypeFromAlts v as
                    x -> x
                Alit _ e -> case getTypeFromExp v e of
                    Nothing -> getTypeFromAlts v as
                    x -> x
                Adefault e -> case getTypeFromExp v e of
                    Nothing -> getTypeFromAlts v as
                    x -> x


--assumes that case scrutinee could be only a literal

replaceDcon :: Module -> [Vdef]-> Map.Map Dcon (Dcon,Bool) -> Int -> Exp -> (Exp, [Vdef])
replaceDcon m@(Module qmname tdefs vdefs) vdefsAcc r counter e = case e of

    -- anole signle constructor without arguments
    Dcon (mname, dname) ty -> case Map.lookup dname r of
        Just (dnewname, _) -> let dnewtype = getDconType dnewname tdefs in
                                    case dnewtype of Nothing -> error "type not found"
                                                     Just t -> 
                                                      (App (Dcon (mname, dnewname) (Tcon (Nothing, t))) e, vdefsAcc)
        Nothing -> (e,vdefsAcc)
    -- since constructor application is curried, it is needed to place new constructor onto the outer scope
    App e1@(Dcon (mname, dname) ty) e2 -> case Map.lookup dname r of
        Just (dnewname, _) -> (App (Var (mname, "_call" ++ dnewname ++ "_zcx" ++ show counter) typeSig) e'', vdefsAcc') where
            (binds, tcon) = let dcon = getDcon dname tdefs in
                case dcon of
                    Nothing -> error ("constructor not found" ++ dname)
                    Just dcon@(Constr (_,cname) _ tys) ->
                        let binds' = zipWith (curry Vb)
                                        (zipWith (\left right -> left ++ show right)
                                                 (replicate (length tys) "x")
                                                 [1..])
                                        tys
                            tcon = getDconType cname tdefs in
                                            case tcon of
                                                Nothing -> error "Type not found"
                                                Just t -> let tcon' = getDconType  t tdefs in
                                                    case tcon' of Nothing -> error "Type not found"
                                                                  Just t' -> (binds',t')
            typeSig = foldr (\vb@(Vb (var,ty)) ty' -> tArrow ty ty') (Tcon (Nothing, tcon)) binds
            body = App (Dcon (mname, dnewname) (Tcon (Nothing, tcon))) (foldl (\e b@(Vb (vname, vtype)) -> App e (Var (Nothing, vname) vtype)) e1 binds)
            lambda = Lam binds body
            vdef = Vdef (mname, "_call" ++ dnewname ++ "_zcx" ++ show counter) typeSig lambda
            -- m' = Module qmname tdefs vdefs ++ [vdef]
            cont@(e'', vdefsAcc') = replaceDcon m (vdef: vdefsAcc) r (counter + 1)  e2

        Nothing -> (App e1 e2', vdefsAcc') where
            cont@(e2', vdefsAcc') = replaceDcon m vdefsAcc r counter e2

    App e1 e2 -> (App e1' e2', vdefsAcc'') where
        cont1@(e1', vdefsAcc') = replaceDcon m vdefsAcc r counter e1
        cont2@(e2', vdefsAcc'') = replaceDcon m vdefsAcc' r counter e2

    Appt e1 ty -> (Appt e1' ty, vdefsAcc') where
        cont@(e1', vdefsAcc') = replaceDcon m vdefsAcc r counter e1

    Lam binds e1 -> (Lam binds e1', vdefsAcc') where
        cont@(e1', vdefsAcc') = replaceDcon m vdefsAcc r counter e1

    -- Let vdefs e1 -> Let (map (\v@(Vdef (mname,vname) ty e2) -> Vdef (mname,vname) ty (replaceDcon m r e2)) vdefs) (replaceDcon m r e1)
    Let vdefs e1 -> (Let  newVdefs e1', vdefsAcc'') where
        dummy@(vdefsAcc', newVdefs) = Data.List.mapAccumL (\vdefsAcc' v@(Vdef (mname, vname) ty e2) -> let cont@(e2',vdefsAcc'') = replaceDcon m vdefsAcc' r counter e2 in (vdefsAcc'', Vdef (mname,vname) ty e2')) vdefsAcc vdefs
        cont2@(e1', vdefsAcc'') = replaceDcon m vdefsAcc' r counter e1

    (Case v@(Var (mname, vname) _) vbind@(vbindname,vbindty) ty alts) ->
        -- let vty = getType vname r in case vty
        -- of Nothing -> error "Type not found for " ++ show v
        --    Just t -> 
               case vbindty of
                   -- TODO continue proccessing of expressions inside case
               Tcon (mname, tname) -> if (tname, True) `elem` Map.elems r then
                                                let newAlts = rebuild tname alts ty m
                                                    newAlts'@(vdefsAcc', alts') = Data.List.mapAccumL (\vdefsAcc' alt -> let cont@(alt',vdefsAcc'') = replaceAlt m vdefsAcc' r counter alt in (vdefsAcc'',alt')) vdefsAcc newAlts in
                                                    -- Case v vbind ty (map (replaceAlt m r) newAlts)
                                                    (Case v vbind ty alts', vdefsAcc')
                                                    -- Case v vbind ty newAlts
                                      else
                                          let  newAlts'@(vdefsAcc', alts') = Data.List.mapAccumL (\vdefsAcc' alt -> let cont@(alt',vdefsAcc'') = replaceAlt m vdefsAcc' r counter alt in (vdefsAcc'',alt')) vdefsAcc alts in
                                        --   Case v vbind ty (map (replaceAlt m r) alts)
                                        (Case v vbind ty alts', vdefsAcc')
               _ ->
                --    Case v vbind ty (map (replaceAlt m r) alts)
                let  newAlts'@(vdefsAcc', alts') = Data.List.mapAccumL (\vdefsAcc' alt -> let cont@(alt',vdefsAcc'') = replaceAlt m vdefsAcc' r counter alt in (vdefsAcc'',alt')) vdefsAcc alts in
                                        --   Case v vbind ty (map (replaceAlt m r) alts)
                                        (Case v vbind ty alts', vdefsAcc')
    Case {} -> error "Only cases of simple var are assumed and/or without type bindings"
    _ -> (e,vdefsAcc)

--    Case: scruteenie, (name, type of scruutinee), case's return type, alts
rebuild tname alts ty m =
            let (Module _ tdefs _) = m
                cdefs = getCdefsByType tname tdefs in
                    case cdefs of
                        Nothing -> error "Cdefs not found 194"
                        -- TODO newAlts 
                        (Just cdefs') -> let newAlts = [filter (altFilter tcon tdefs) alts | cdef@(Constr (qname,tcon) _ _) <- cdefs'] in
                                     [Acon (q, cname) []
                                                     [("x" ++ cname, Tcon(q,cname))]
                                                     (Case (Var (Nothing, "x" ++ cname) (Tcon (q,cname)))
                                                           ("zxc_pause",Tcon (q,cname)) ty newAlt) | (Constr (q,cname) _ _, newAlt) <- zip cdefs' newAlts]

        where

        altFilter tcon tdefs alt = case alt of
            Acon (qname, dcon') _ _ _ -> let cdefs = getCdefsByType tcon tdefs in
                case cdefs of
                    Nothing -> error ("Cdef not found 207" ++ tcon)
                    Just cdefs -> any (\(Constr (qname, dcon) _ _) -> dcon == dcon') cdefs
            _ -> True
        getType cname tdefs = let result = getDconType cname tdefs in
            case result of Nothing -> error "type not found"
                           Just t -> Tcon (Nothing, t) 
getCdefsByType tname tdefs = case tdefs of
                    [] -> Nothing
                    (t@(Data (mname, tname') _ cdefs):ts) -> if tname == tname' then Just cdefs
                                                            else getCdefsByType tname ts
getDcon cname tdefs = case tdefs of
                    [] -> Nothing
                    (t@(Data (mname, tname') _ cdefs):ts) -> let result = Data.List.find (\c@(Constr (_,name) _ _ )-> name == cname) cdefs in
                        case result of Just x -> result
                                       Nothing -> getDcon cname ts


getDconType cname tdefs = case tdefs of
                    [] -> Nothing
                    (t@(Data (mname, tname') _ cdefs):ts) -> let result = Data.List.find (\c@(Constr (_,name) _ _) -> name == cname) cdefs in
                        case result of Just x -> Just tname'
                                       Nothing -> getDconType cname ts

replaceAlt :: Module -> [Vdef] -> Map.Map Dcon (Dcon, Bool) -> Int -> Alt -> (Alt, [Vdef])
replaceAlt m vdefsAcc r counter a = case a of
    Acon (qname, dname) tbinds vbinds e -> (Acon (qname,dname) tbinds vbinds e', vdefsAcc') where
        cont@(e', vdefsAcc') = replaceDcon m vdefsAcc r counter e
    Alit l e -> (Alit l e', vdefsAcc') where
        cont@(e', vdefsAcc') = replaceDcon m vdefsAcc r counter e
    Adefault e -> (Adefault e',vdefsAcc') where
        cont@(e', vdefsAcc') = replaceDcon m vdefsAcc r counter e
