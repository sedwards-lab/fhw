{- Defunctionalization is a pass that converts higher order functions to first order functions by substituting higher order functions with corresponding datatypes and apply functions. See Reynolds defunctionalization for more info. 
 -}

--assuming unique variable names (and not gauranteeing them) 
--assuming no type variables (monomorphized)
--assuming we are only dealing with named higher order functions
--assuming a variable with a function type that is not bound in a vdef is must be a parameter (a formal) and has a corresponding dcon
--assuming parameter names are also unique
--assuming all fun declations are top level

module Fhw.Pass.Defunctionalization.Defunctionalization where

import Fhw.Core.Core
import Fhw.Pass.Defunctionalization.Correctness (checkHoF)
import Fhw.Pass.Defunctionalization.Utils 
import Fhw.Pass.RemoveRecursion.Utils (cfv)
import Control.Monad.State as C
import Data.Traversable as T
import qualified Data.List as List
import qualified Data.Map as Map
--import Debug.Trace


type DtMap = Map.Map Ty (Tdef, Vdef)
type ConstrMap = Map.Map (Qual Var, Ty) (Cdef, Alt)

data Env = Env { dtmap :: DtMap,
                 constrmap :: ConstrMap
               } deriving Show


toDefs :: Ty -> (Tdef, Vdef)
toDefs ty = (tdef, applyvdef)
    where
        (retty, argtys) = collectArgTypes ty
        tystring = concatMap (\t -> show t ++ "_") argtys ++ show retty

        tcon = "MyDT" ++ tystring
        fname = "applyfn" ++ tystring

        tdef = Data (q tcon) [] []
        tdeftype = Tcon (q tcon)
        arg0 = ("arg0", tdeftype)

        args = map Vb (typestoVbinds "arg" argtys)
        args' = Vb arg0 : args
        lamty = mkLambdaType args' retty
        e = Case (Var (q "arg0") tdeftype) ("arg0", tdeftype) retty []
        lam = Lam args' e
        applyvdef = Vdef (q fname) lamty lam

insertDtMap :: DtMap -> Ty -> DtMap
insertDtMap dtm ty =
    case Map.lookup ty dtm of
        Just _ -> dtm
        Nothing -> Map.insert ty (toDefs ty) dtm

buildDtMap :: DtMap -> [Vdef] -> DtMap
buildDtMap m vds = m'
    where
        binds = getAllBinds vds
        binds' = List.filter (isFunctionTy . bindTy) binds
        m' = List.foldl insertDtMap m (map bindTy binds')


filterVdefs :: [Vdef] -> [Vdef]
filterVdefs = List.filter (\v -> vdefName v /= "_")


sillyFn :: (Cdef, Alt) -> State Env (Cdef, Alt)
sillyFn (c, a) = 
    do 
        a' <- defuncAlt a
        return (c, a') 

refreshTdef :: DtMap -> (Ty, (Cdef, Alt)) -> (Ty, (Cdef, Alt))
refreshTdef dtm (t, (Constr qdcon z1 tys, Acon qadcon z2 vbinds e)) = (t, (Constr qdcon z1 tys', Acon qadcon z2 vbinds' e))
    where 
        updateType ty =
            case Map.lookup ty dtm of
                Nothing | isFunctionTy ty -> error ("Defunc: cdef with fn arg")
                Nothing -> ty
                Just (tdef, _) -> tdefTy tdef
        tys' = List.map updateType tys
        vbinds' = List.map (\(v, ty) -> (v, updateType ty)) vbinds
refreshTdef _ tup = tup

defunctionalization :: Module -> Module
defunctionalization m@(Module mname tds vds) = 
  case checkHoF m of
    Right _ -> m
    _ -> case checkHoF (Module mname tds' vds') of
          Right m' -> m'
          Left err -> error err
--trace ("Defunc: something new in map what is it?\n\n" ++ show (Map.difference (constrmap s2) (constrmap s)) ++ "\
-- ++ show (Map.difference (constrmap s_final) (constrmap s2))) (checkHoF (Module mname (newtdefs ++ tdefs) (newvdefs ++ vdefs'')))

--    trace (show (newtdefs ++ tdefs) ++ show (newvdefs ++ vdefs'')) Module mname (newtdefs ++ tdefs) (newvdefs ++ vdefs'')
    where
        initstate = Env { dtmap = buildDtMap Map.empty vds,
                        constrmap = Map.empty}
        
        fillDefs :: (Map.Map Ty [(Cdef, Alt)]) -> Ty -> (Tdef, Vdef) -> (Tdef, Vdef)
        fillDefs constrtymap ty (Data qtcon [] [], Vdef qvar vdefty (Lam binds (Case e vb t [])))  =
            case Map.lookup ty constrtymap of
                Nothing -> error ("Defunc: no constructors in map for fn of type " ++ show ty ++  " , function never called?")
                Just cdefalts -> let (cdefs, alts) = unzip cdefalts in
                                        (Data qtcon [] cdefs, Vdef qvar vdefty (Lam binds (Case e vb t alts)))
        fillDefs _ _ _  = error "Defunc: something wrong in fillDefs, defs not empty"
        
        deepDive :: Int -> Env -> [Tdef] -> [Vdef] -> ([Tdef],[Vdef])  
        deepDive n env tdefs vdefs = 
            let 
                (vdefs_1,s_1) =  runState (C.mapM constrsFromVdef vdefs) env --fillmaps 
                vdefs' = filterVdefs vdefs_1 --get rid of ones that will be thrown out. 
                (vdefs'',s) = runState (C.mapM defuncVdef vdefs') s_1 --process those vdefs
                (newcm, s2) = runState (T.mapM sillyFn (constrmap s)) s --process the new guys
                    --(T.mapM (\(_,a) -> defuncAlt a) (constrmap s)) s 
                constrassocs :: [((Qual Var, Ty), (Cdef, Alt))]
                constrassocs = Map.assocs (Map.union newcm (constrmap s2)) --s2       
                constrassocs' :: [(Ty, (Cdef, Alt))]
                constrassocs' = List.nub (List.map (\((_, t),(c, a))-> (t, (c, a))) constrassocs) -- nub removes duplicates. its O(n^2) eh. --what about anon fns with the same bodies- how to know which lizzilam to keep?
                updatedcdefs = List.map (refreshTdef (dtmap s2)) constrassocs'
                constrtymap = List.foldl (\ m (t, (c, a)) -> Map.insertWith (++) t [(c,a)] m) Map.empty updatedcdefs
        --iconstrtymap = List.foldl (\ m ((_, t), (c, a)) -> Map.insertWith (++) t [(c,a)] m) Map.empty constrassocs
                defmap = Map.mapWithKey (fillDefs constrtymap) (dtmap s2)                

                (newtdefs, newvdefs) = unzip (Map.elems defmap)
                (newvdefs',s_final)  = runState (C.mapM defuncVdef newvdefs) s2 --s2
            in 
                if (n == 5) 
                    then (newtdefs ++tdefs, newvdefs ++ vdefs'')
                    else case newvdefs' of 
                            [] -> (newtdefs ++ tdefs, newvdefs ++ vdefs'')
                            _ ->  deepDive (n+1) s2 (newtdefs ++ tdefs) (newvdefs ++ vdefs'')
        (tds', vds') = deepDive 0 initstate tds vds


replaceBind :: DtMap -> Bind -> Bind
replaceBind _ (Tb (v, ty))  = error ("Defunc: unexpected type binding found " ++ show v ++ " ; " ++ show ty)
replaceBind m b@(Vb (v, ty)) =
    case Map.lookup ty m of
        Nothing | isFunctionTy ty -> error ("Defunc: bind should be in map" ++ show b)
        Nothing -> b
        Just (tdef, _) -> Vb (v, tdefTy tdef) --unsure about this

constrsFromVdef :: Vdef -> State Env Vdef
constrsFromVdef (Vdef qvar@(_, var) ty (Lam binds e)) =
    do
        s <- get
        let
            (vdef, cmap) =
                case Map.lookup ty (dtmap s) of
                    Nothing ->
                        let
                            binds' = List.map (replaceBind (dtmap s)) binds
                            ty' =  mkLambdaType binds' (exprType e)
                            vd' = Vdef qvar ty' (Lam binds' e)
                        in (vd', constrmap s)
                    Just (_, Vdef _ _ (Lam (_ : args) _)) ->
                        let
                            e' = replaceBindsinExp e binds args 
                            (cdef, alt) = createCdefAlt ("Dcon_" ++ var)  e' [] [] []
                            vd' = Vdef (q "_") ty e --mark to get rid of it
                            conmap = Map.insert (qvar, ty) (cdef, alt) (constrmap s)
                        in (vd', conmap)
                    _ -> error "Defunc: impossible case"
        put s{constrmap = cmap}
        return vdef

constrsFromVdef (Vdef qvar ty ex@(App _ _)) | isFunctionTy ty = --take an app and give it explicit arguments/ convert to lambda
    do 
        let (_ , tys) = collectArgTypes ty
        let binds  = map Vb (typestoVbinds "app_arg" tys)
        let args = bindstoExps binds
        constrsFromVdef (Vdef qvar ty (Lam binds (mkFuncApp ex [] args)))

constrsFromVdef vd@(Vdef qvar1 ty1 ex@(Var qvar2 ty2)) | isFunctionTy ty1 = 
    do 
        s <- get 
        let (cdef, alt) = case Map.lookup (qvar2, ty2) (constrmap s) of 
                            Nothing -> error "trivial renaming but renamed var not in map yet, just an order problem"
                            Just (c, a) -> (c, a)
        put s{constrmap = Map.insert (qvar1, ty1) (cdef, alt) (constrmap s)}     
        return $ Vdef (q "_") ty1 ex --mark to get rid of it
 
constrsFromVdef vd@(Vdef (_, var) ty _) | isFunctionTy ty = error ("Defunc: What else has function type! The var: " ++ var ++  (show ty) ++ "\n  whole vd \n" ++ (show vd))
constrsFromVdef (Vdef qvar ty e) = return $ Vdef qvar ty e

defuncVdef :: Vdef -> State Env Vdef 
defuncVdef (Vdef qvar ty (Lam binds e)) = 
    do 
        e' <-  defuncExp e
        return $ Vdef qvar ty (Lam binds e') 
defuncVdef (Vdef qvar ty e) = fmap (Vdef qvar ty) (defuncExp e)

getExpfromMaps :: DtMap -> ConstrMap -> (Vdef -> Exp -> Exp) -> Exp -> Exp  
getExpfromMaps dtm constrm f (Var qvar ty) =  
    case Map.lookup (qvar, ty) constrm of
        Nothing ->
            case Map.lookup ty dtm of
                Nothing -> Var qvar ty
                Just (tdef, vdef) -> f vdef $ Var qvar (tdefTy tdef)
        Just (Constr qdcon _ _ , _) ->
            case Map.lookup ty dtm of
                Nothing -> error "Defunc: can't find type in dt map"
                Just (tdef, vdef) -> f vdef $ Dcon qdcon (tdefTy tdef)
getExpfromMaps _ _ _ e = e --at least we think 


replaceOperand :: Exp -> State Env Exp
replaceOperand ex@(Var _ _) =
    do     
        s <- get
        return $ getExpfromMaps (dtmap s) (constrmap s) (\ _ e -> e) ex
replaceOperand ex@(Lam old_binds e) = 
    do 
        s <- get
        let ty = exprType ex
        let dtm = insertDtMap (dtmap s) ty
        let (tdef, Vdef _ _ (Lam (_ : binds) _)) = dtm Map.! ty --safe bc of if statement above
        let vbinds = List.map (\ (t, v) -> (v, t)) (cfv ex) --freevars
        
        let (mname, fname) = q ("LizzieLam" ++ show (Map.size (constrmap s)))
        let new_vbinds = typestoVbinds ("cfv_arg") (map (\(_,t) ->  t) vbinds) --give more precise name?
        --let args = (map (\(v, t) -> Var (q v) t) vbinds)
        let args = (map (\(v, t) -> Var (q v) t) vbinds) 
        let dcon =  "Dcon_AF_" ++ show fname
        let e' = replaceBindsinExp e (map Vb vbinds) (map Vb new_vbinds) 
        let e'' = replaceBindsinExp e' old_binds binds 
        let tys = map exprType args
        let cdef = Constr (q dcon) [] tys
        let alt = Acon (q dcon) [] new_vbinds e''
        put s{dtmap = dtm, constrmap = Map.insert ((mname, fname), ty) (cdef, alt) (constrmap s)}
        return $ mkFuncApp (Dcon (q dcon) (tArrows (tys ++ [tdefTy tdef]))) [] args
replaceOperand ex | isFunctionTy $ exprType ex = 
    do 
        s <- get
        let ty = exprType ex
        let dtm = insertDtMap (dtmap s) ty
        let (tdef, Vdef _ _ (Lam (_ : binds) _)) = dtm Map.! ty --safe bc of if statement above
        let (dcon, qfname, call, vbinds, args) = explodeOperand ex binds (Map.size (constrmap s))
        let tys = map exprType args
        let (cdef, alt) = createCdefAlt dcon call vbinds binds tys
        put s{dtmap = dtm, constrmap = Map.insert (qfname, ty) (cdef, alt) (constrmap s)}
        return $ mkFuncApp (Dcon (q dcon) (tArrows (tys ++ [tdefTy tdef]))) [] args
replaceOperand e = return e 


defuncExp :: Exp -> State Env Exp
defuncExp (Lam binds e) = fmap (Lam binds) (defuncExp e)
defuncExp ex@(App _ _) =
    do 
        let (call, args, typs) = collectArgs ex
        call' <-defuncExp call
        s <- get
        let f (Vdef applyfn applyty _) e = mkFuncApp (Var applyfn applyty) [] [e] 
        let call'' = getExpfromMaps (dtmap s) (constrmap s) f call'
        args' <- C.mapM replaceOperand args
        args'' <- C.mapM defuncExp args' --changed the order of these 2
        let ex' = mkFuncApp call'' typs args''
        return ex'
defuncExp (Case e vb ty alts) =
    do
        e' <- defuncExp e
        alts' <- C.mapM defuncAlt alts
        return $ Case e' vb ty alts'
defuncExp ex@(Var _ _)  = return ex
defuncExp ex@(Lit _) = return ex
defuncExp ex@(Dcon _ _) = return ex
defuncExp (Appt e typ) = fmap (`Appt` typ) (defuncExp e)
defuncExp (Let vdefs e) =
    do
        --switched order of 2 below just to see        
        e' <- defuncExp e
        vdefs' <- C.mapM defuncVdef vdefs
        let vdefs'' = filterVdefs vdefs'
        return $ Let vdefs'' e'

defuncAlt :: Alt -> State Env Alt
defuncAlt (Acon qdcon tbs vbs e) = fmap (Acon qdcon tbs vbs) (defuncExp e)
defuncAlt (Alit lit e) = fmap (Alit lit) (defuncExp e)
defuncAlt (Adefault e) =  fmap Adefault (defuncExp e)
