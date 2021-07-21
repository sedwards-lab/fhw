{-
Module : Fhw.Pass.Monomorphise.Monomorphise
Description : Eliminates polymorphic functions and datypes, replacing
              each with their 'monomorphic' counterparts. 

This compiler step removes all polymorphism from a Core program.


We make a first pass over the program, and whenever we encounter a polymorphic 
construct (functions or data constructors), we create an entry in 
an association list mapping names to "TypeMaps." The concrete types applied to 
the construct become a key in that construct's TypeMap, and the corresponding 
value is a new name that represents a 'monomorphic' version of the construct.

After populating the association list, we pass over the program while replacing
names of polymorphic constructs with the corresponding monomorphic versions.
Whenever a top-level polymorphic construct is encountered, we update its type
signature by resolving its type variables. This pass can lead to new entries in
the association list, in which case the pass is repeated. The process is
complete once no new entries are found after a pass.  
-}

module Fhw.Pass.Monomorphise.Monomorphise (monomorphise) where

--import Debug.Trace

import Fhw.Core.Core

import Control.Monad.State
import Control.Applicative ((<$>))
import Data.Maybe 
import Data.List
import Data.Char (isDigit)


--This datatype represents all the top-level definitions. It will be updated
--on each pass of the 'replacePolyElems' function.
newtype PolyElems = PolyElems [PElement] deriving (Show)

{-
  We use this datatype to define functions that operate on both types of
  top-level definitions in Core. We use this instead of PolyElems when
  we don't care about the separation of function definitions and datatype
  definitions.
-}
data PElement = MyVdef Vdef | MyTdef Tdef deriving (Show)

isMyVdef :: PElement -> Bool
isMyVdef (MyVdef _) = True
isMyVdef _ = False

-- | Remove polymorphism from an External Core module, updating any names
--   in the Analysis compiler structure
monomorphise :: Module -> Analysis -> (Module, Analysis)
monomorphise (Module mname tdefs vdefs) a = (Module mname tdefs' vdefs'
                                            , compilerInfo finalMap)
  where
    myvdefs = map MyVdef vdefs
    mytdefs = map MyTdef tdefs
    polys = PolyElems (myvdefs ++ mytdefs)
    startMap = 
      execState (collectPolyTypes mytdefs) MonomorphicMap{ mapping = [], 
                                                           compilerInfo = a }
    (vdefs',tdefs',finalMap) = replacePolyElems polys startMap

{- ****************** The Monomorphism Monad *************************** -}

{- |
The MonomorphicMap datatype represents the state that we will 
be passing around in the MonoMonad datatype. 

It is composed of a key-value map, where the keys are names of polymorphic
constructs (either variables or data constructors) and the values are TypeMaps
representing their monomorphic counterparts.

It also carries around the compiler Analysis structure to update any names
due to mangling.

-}

type MonoMonad = State MonomorphicMap

data MonomorphicMap = MonomorphicMap { mapping :: [(PolyName,TypeMap)] 
                                     , compilerInfo :: Analysis 
                                     } deriving (Show,Eq)

{- |

The ScopedInfo datatype consolidates information that needs to be passed
down through the AST, but should not be stored over the course of the whole
pass.

The typeArgs field will contain all the type arguments found over the course of
passing over an expression. Once we find the name of the polymorphic construct
to which these arguments apply, an entry in the monomap will be made. 

The resolvedBinds field maps type variables to concrete types. This field gets
populated upon entering a polymorphic variable definition. Every type variable
found in the vdef's type signature is mapped to a corresponding concrete type,
and the latter is used to replace all instances of the former throughout the
vdef's body.  

-}

data ScopedInfo = ScopedInfo {
      typeArgs :: TypeList
    , resolvedBinds :: [Vbind] } deriving (Show,Eq)

-- |This datatype represents mappings of concrete type argument lists to names
type TypeMap = [(TypeList,MonoName)]
type TypeList = [Ty]

-- |A polymorphic name can be a type constructor, a variable, or a data constructor
type PolyName = String
type MonoName = PolyName

emptyscope :: ScopedInfo
emptyscope = ScopedInfo { typeArgs = [], resolvedBinds = [] }

-- | Add an entry for a polymorphic construct that has been 
-- | given concrete type arguments.
-- | Updates entry if one already exists and new type was encountered.
addPolyElement :: PolyName -> TypeList -> MonoMonad ()
addPolyElement element types = do
  elems <- gets mapping
  a@Analysis{writeSites = wcalls
            ,readSites = rcalls} <- gets compilerInfo
  let otherElements = filter (\el -> fst el /= element) elems
      typeMaps = fromMaybe [] $ lookup element elems
      newName = intercalate "_" $ element : concatMap (words . show) types
      newTypeMap = if null types then [] else [(types,newName)] 
      finalMap = newTypeMap ++ typeMaps
      newWSites = replaceCall newName wcalls 
      newRSites = replaceCall newName rcalls 
      --update Analysis compiler structure
      newAnalysis = a { writeSites = newWSites
                      , readSites  = newRSites }
  if null typeMaps
    --insert new polymorphic construct
    then put MonomorphicMap { mapping = (element,newTypeMap) : elems
                            , compilerInfo = newAnalysis }
    -- return () if we've already inserted this instance into our monomap
    else unless (isJust (lookup types typeMaps)) $ 
         put MonomorphicMap { mapping = (element, finalMap) : otherElements
                            , compilerInfo = newAnalysis }
  where
    -- replace name of write call site if it has been name mangled
    replaceCall newName calls = 
      case lookup element calls of
        Nothing -> calls
        Just num -> let tempList = delete (element, num) calls
                    in (newName, num) : tempList
      
-- | Retrieve a monomorphic name for a given variable (if it exists)
getMonoName :: (Maybe Mname,PolyName) -> TypeList -> MonoMonad (Qual PolyName)
getMonoName qname _ | isFHW qname = return qname
getMonoName qualname types = do
  elems <- gets mapping
  return $ fromMaybe qualname $ maybeGetMonoName qualname elems
    where
      maybeGetMonoName (pkg,polyname) elems = do
        tmap <- lookup polyname elems
        newName <- lookup types tmap
        return (renamePkg pkg,newName)

      -- |Rename package if we've monomorphised a ghc-prim entity
      renamePkg (Just (M (P "ghc-prim",hier,leaf))) = 
        Just $ M (P "monomorphed-prim",hier,leaf)
      renamePkg pkg = pkg

{- ****************** Generate Monomorphised Constructs *************************** -}

-- |Continually replaces polymorphic names and types with their monomorphic 
-- |counterparts until a fixed-point is reached (no more names can be replaced)
replacePolyElems :: PolyElems -> MonomorphicMap -> ([Vdef],[Tdef],MonomorphicMap)
replacePolyElems polyList monomap =
  let statefulComp              = monomorphPass polyList
      (PolyElems defs,newmap)   = runState statefulComp monomap 
      (newvdefs',newtdefs')     = partition isMyVdef $ erasePolyDefs defs newmap
      newvdefs                  = map (\(MyVdef v) -> v) newvdefs'
      newtdefs                  = map (\(MyTdef t) -> t) newtdefs'
  in if monomap == newmap  
      then (newvdefs,newtdefs,newmap) -- Return final top-level definitions
      else replacePolyElems (PolyElems defs) newmap

-- |Do a single pass over the top-level definitions
monomorphPass :: PolyElems -> MonoMonad PolyElems
monomorphPass (PolyElems defs) = do 
  let (vdefs,tdefs) = partition isMyVdef defs
  newvdefs'  <- mapM (monoPolyDefs emptyscope) vdefs
  newvdefs'' <- mapM fixupTconsVdef (concat newvdefs')
  newtdefs'  <- mapM (monoPolyDefs emptyscope) tdefs
  finaldefs  <- removeDupDefs (concat newtdefs' ++ newvdefs'')
  return $ PolyElems finaldefs

-- |Pass over a polymorphic definition and replace it with 
-- |concretely-typed instances
monoPolyDefs :: ScopedInfo -> PElement -> MonoMonad [PElement]
monoPolyDefs info def = 
  case def of
    (MyTdef (Data _ [] _)) -> 
      flip (:) [] <$> monomorphDef def info

    (MyTdef (Data d@(_,tcon) binds _)) -> 
      if isFHW d 
      then return [def]
      else monomorphWork tcon binds

    (MyVdef (Vdef (_,varname) ty@(Tforall _ _) _)) -> do
      let getTBinds (Tforall (tbind,k) t) = (tbind,k) : getTBinds t 
          getTBinds _ = []
      monomorphWork varname $ getTBinds ty

    _ -> flip (:) [] <$> monomorphDef def info
  where
    monomorphWork name binds = do
      elems <- gets mapping
      let mapEntry = fromMaybe [] $ lookup name elems 
          makeScope bindings = emptyscope { resolvedBinds = bindings }
          concreteTypeScopes = map (makeScope . zip (map fst binds) . fst) mapEntry
      (:) def <$> mapM (monomorphDef def) concreteTypeScopes

-- |Use list of bindings to resolve all polymorphic type arguments in a definition
monomorphDef :: PElement  -> ScopedInfo -> MonoMonad PElement
monomorphDef (MyTdef (Data tcon binds cdefs)) info = do
  monoCdefs <- mapM (cdef info) cdefs
  newName <- getMonoName tcon $ map snd $ resolvedBinds info
  let monoBinds = if tcon == newName then binds else []
  return $ MyTdef $ Data newName monoBinds monoCdefs
monomorphDef (MyVdef (Vdef var ty ex)) info = do
  monoTy <- polyToMono info ty 
  monoExp <- expr ex info
  newName <- getMonoName var $ map snd $ resolvedBinds info
  return $ MyVdef $ Vdef newName monoTy monoExp

-- Convert polymorphic type to monomorphic equivalent
polyToMono :: ScopedInfo -> Ty -> MonoMonad Ty
polyToMono info (Tvar tvar) = 
  let newTy =  fromMaybe (Tvar tvar) $ lookup tvar (resolvedBinds info)
  in if isTvar newTy && length (typeArgs info) == 1 --Dealing with write and read
      then return $ head $ typeArgs info
      else return newTy
polyToMono info (Tapp ty1 ty2) = do 
  t2 <- polyToMono info ty2 
  t1 <- polyToMono info ty1 
  return $ Tapp t1 t2
polyToMono info (Tforall _ ty) = polyToMono info ty
polyToMono _    t              = return t 

-- |When we've resolved all polymorphism, remove the polymorphic definitions
-- |that we kept around to make our monomorphise passes
erasePolyDefs :: [PElement] -> MonomorphicMap -> [PElement]
erasePolyDefs (t@(MyTdef (Data (_,tcon) _ _)) : rest)  = eraser t tcon rest 
erasePolyDefs (v@(MyVdef (Vdef (_,var) _ _)) : rest)  = eraser v var rest 
erasePolyDefs pelem = const pelem

-- |Does the actual work for erasePolyDefs
eraser :: PElement -> PolyName -> [PElement] -> MonomorphicMap -> [PElement]
eraser pel name rest m@MonomorphicMap{ mapping = elems } =
  let typemap = lookup name elems 
      recurse = erasePolyDefs rest m
  in if isJust typemap 
      then recurse 
      else case pel of
            (MyVdef (Vdef n ty ex)) -> 
              MyVdef (Vdef n ty (eraseLets ex m)) : recurse
            _ -> pel : recurse

-- |Remove polymorphic let definitions.
eraseLets :: Exp -> MonomorphicMap -> Exp
eraseLets (Let vdefs ex) m = 
  let newset = erasePolyDefs (map MyVdef vdefs) m
      getDefs (MyVdef v) = Just v
      getDefs (MyTdef _) = Nothing
  in Let (mapMaybe getDefs newset) $ eraseLets ex m
eraseLets (App ex1 ex2)    m  = App (eraseLets ex1 m) (eraseLets ex2 m)
eraseLets (Appt ex ty)     m  = Appt (eraseLets ex m) ty
eraseLets (Lam binds ex)   m  = Lam binds $ eraseLets ex m
eraseLets (Case ex b t1 as) m = Case (eraseLets ex m) b t1 $ map newAlt as
  where newAlt (Adefault e)    = Adefault   $ eraseLets e m
        newAlt (Alit l e)      = Alit l     $ eraseLets e m 
        newAlt (Acon d t2 v e) = Acon d t2 v $ eraseLets e m 
eraseLets ex               _  = ex

-- |Remove duplicate top-level definitions.
removeDupDefs :: [PElement] -> MonoMonad [PElement]
removeDupDefs defs = return $ (map head . groupBy eqDef . sortBy compareDef) defs
  
-- |Ordering instance for top-level defs so we can remove duplicates above
compareDef :: PElement -> PElement -> Ordering
compareDef (MyTdef (Data (_,tc1) _ _)) (MyTdef (Data (_,tc2) _ _)) = tc1 `compare` tc2
compareDef (MyVdef (Vdef (_,var1) _ _)) (MyVdef (Vdef (_,var2) _ _)) = var1 `compare` var2
compareDef (MyTdef _) (MyVdef _) = LT
compareDef (MyVdef _) (MyTdef _) = GT

-- |Eq instance for top-level defs so we can remove duplicates above
eqDef :: PElement -> PElement -> Bool
eqDef (MyVdef (Vdef (_,var1) _ _)) (MyVdef (Vdef (_,var2) _ _)) = var1 == var2
eqDef (MyTdef (Data (_,tc1) _ _)) (MyTdef (Data (_,tc2) _ _)) = tc1 == tc2
eqDef _ _ = False

{- ****************** Deal with Polymorphic Datatypes *************************** -}

-- |Collect names of polymorphic data types
collectPolyTypes :: [PElement] -> MonoMonad ()
collectPolyTypes [] = return ()
collectPolyTypes (MyTdef (Data _ [] _) : rest) = collectPolyTypes rest
collectPolyTypes (MyTdef (Data (_,tcon) _ _) : rest) = do addPolyElement tcon []
                                                          collectPolyTypes rest
collectPolyTypes (_:rest) = collectPolyTypes rest

-- |Monomorphise a Data Constructor Definition
cdef :: ScopedInfo -> Cdef -> MonoMonad Cdef
cdef info (Constr dcon [] typeFields) = do
  monoTypeFields <- mapM (polyToMono info) typeFields
  fixedTypeFields <- mapM renameTypeCons monoTypeFields
  newName <- getMonoName dcon $ map snd $ resolvedBinds info
  return $ Constr newName [] fixedTypeFields
cdef _ c@Constr{} = error $ "Data constructor " ++ 
                             show c ++ 
                             " is existentially quantified."  

{- |Look for polymorphic type constructors in signatures and bodies of
   |our top-level variable definitions. If such a tcon is found and all
   |of its arguments are also monomorphic type constructors, rename
   |the polymorphic tcon and remove its type arguments.
-}
fixupTconsVdef :: PElement -> MonoMonad PElement
fixupTconsVdef v@(MyVdef (Vdef _ (Tforall _ _) _)) = return v
  -- (above) Wait for polymorphic vdefs to be resolved first
fixupTconsVdef (MyVdef (Vdef var ty@(Tcon _) ex)) = do
  compEx <- fixupTconsExpr ex
  return $ MyVdef $ Vdef var ty compEx
fixupTconsVdef (MyVdef (Vdef var ty ex)) = do 
  compTy <- renameTypeCons ty
  compEx <- fixupTconsExpr ex
  return $ MyVdef $ Vdef var compTy compEx
fixupTconsVdef tdef = return tdef

-- Same as fixupTconsVdef, but for expressions
fixupTconsExpr :: Exp -> MonoMonad Exp
fixupTconsExpr (Var var ty)   = Var var <$> renameTypeCons ty
fixupTconsExpr (Dcon dcon ty) = Dcon dcon <$> renameTypeCons ty
fixupTconsExpr (App ex1 ex2)  = liftM2 App (fixupTconsExpr ex1) (fixupTconsExpr ex2)
fixupTconsExpr (Appt ex ty)   = liftM2 Appt (fixupTconsExpr ex) (renameTypeCons ty)
fixupTconsExpr (Lam binds ex) = do fixEx <- fixupTconsExpr ex
                                   fixBinds <- mapM fixupTconsBind binds
                                   return $ Lam fixBinds fixEx
fixupTconsExpr (Let vdefs ex) = do fixEx <- fixupTconsExpr ex
                                   fixVDefs <- mapM (fixupTconsVdef . MyVdef) vdefs
                                   return $ Let (map (\(MyVdef v) -> v) fixVDefs) fixEx
fixupTconsExpr (Case ex (var,varTy) ty alts) = do 
  fixEx <- fixupTconsExpr ex
  fixVarTy <- renameTypeCons varTy
  fixTy <- renameTypeCons ty
  fixAlts <- mapM fixupTconsAlt alts
  return $ Case fixEx (var,fixVarTy) fixTy fixAlts
fixupTconsExpr ex = return ex

-- |Fixup Type Constructors in case alternatives
fixupTconsAlt :: Alt -> MonoMonad Alt
fixupTconsAlt (Alit lit ex) = Alit lit <$> fixupTconsExpr ex
fixupTconsAlt (Adefault ex) = Adefault <$> fixupTconsExpr ex
fixupTconsAlt (Acon dcon tbinds vbinds ex) = do 
  fixEx <- fixupTconsExpr ex
  fixVBinds <- mapM fixupTconsVBind vbinds
  return $ Acon dcon tbinds fixVBinds fixEx

-- |Fixup type constructors in bindings
fixupTconsBind :: Bind -> MonoMonad Bind
fixupTconsBind (Vb vbind) = Vb <$> fixupTconsVBind vbind
fixupTconsBind tbind = return tbind -- these type bindings are always type arguments

fixupTconsVBind :: Vbind -> MonoMonad Vbind
fixupTconsVBind (var,ty) = (\t -> (var,t)) <$> renameTypeCons ty

-- |Rename polymorphic type signatures after their type arguments
-- |have been resolved.
renameTypeCons :: Ty -> MonoMonad Ty
renameTypeCons ty = renameTypeCons' ty emptyscope

-- |Does the real work for renameTypeCons
renameTypeCons' :: Ty -> ScopedInfo -> MonoMonad Ty

-- Base Case is a lone type constructor
renameTypeCons' (Tcon tc@(_,tcon)) info = do
  elems <- gets mapping
  let args = typeArgs info
      notPoly = isNothing $ lookup tcon elems
      hasTvar = any isTvar args
  if isFHW tc     -- ignore FHW primitives
     || null args -- don't add lone constructors to our monomap
     || notPoly   -- not a polymorphic type constructor
     || hasTvar   --Don't add this element if all type variables haven't been resolved
    then return $ makeTypeApp (Tcon tc) args
    else do addPolyElement tcon args
            Tcon <$> getMonoName tc args

-- Catch function applications
renameTypeCons' (Tapp (Tapp (Tcon tc) ty1) ty2) info
  | tc == tcArrow = do t2 <- renameTypeCons' ty2 info
                       t1 <- renameTypeCons' ty1 emptyscope
                       return $ tArrow t1 t2
renameTypeCons' (Tapp ty1 ty2) info
  | isBaseType ty2 = renameTypeCons' ty1 $ newinfo ty2
  | otherwise = do t2 <- renameTypeCons' ty2 emptyscope
                   renameTypeCons' ty1 $ newinfo t2
  where
    newinfo t = info { typeArgs = t : typeArgs info }
renameTypeCons' t _ = return t

-- | Reconstruct a type application chain from a type constructor and a
-- | sequence of types
makeTypeApp :: Ty -> TypeList -> Ty 
makeTypeApp ty [] = ty
makeTypeApp tcon args = foldl Tapp tcon args

-- |Return true if type is a Tcon or a Tvar
isBaseType :: Ty -> Bool
isBaseType (Tcon _) = True
isBaseType (Tvar _) = True
isBaseType _ = False


{- ****************** Generate Monomorphised Functions *************************** -}

-- |Use type bindings to resolve all polymorphic types in an expression
expr :: Exp -> ScopedInfo -> MonoMonad Exp

expr (Var (pkg,var) ty)  info  = resolveBaseTerm Var (pkg,var) ty info

expr (Dcon (pkg,dcon) ty) info  = resolveBaseTerm Dcon (pkg,dcon) ty info

expr (App ex1 ex2) info = do
  expr2 <- expr ex2 info
  expr1 <- expr ex1 info
  return $ App expr1 expr2

expr (Appt ex ty) info = do
  resolvedTy <- (renameTypeCons <=< polyToMono info) ty 
  let newinfo = info { typeArgs = resolvedTy : typeArgs info }
  unless (isTvar resolvedTy) $ collectPolyEx ex (typeArgs newinfo)
  expr ex newinfo

expr (Lam binds ex) info = do
  let newBinds = renameBinds binds (resolvedBinds info)
      newinfo = emptyscope { resolvedBinds = newBinds }
  justFuncBinds <- (retypeVBinds newinfo . getFuncBinds) binds
  result <- expr ex newinfo
  let finalBinds = map Vb justFuncBinds
      returnExp = if null finalBinds --Sometimes the only arguments are type args...
                    then result  -- ...in which case we just return the lifted expression
                    else Lam finalBinds result
  return returnExp 

expr (Let vdefs ex) info = do
  monoVdefs <- mapM (monoPolyDefs info . MyVdef) vdefs
  result <- expr ex info
  return $ Let (map (\(MyVdef v) -> v) $ concat monoVdefs) result

expr (Case ex (var,varTy) ty alts) info = do
  let newinfo = info { typeArgs = [] } 
  monoVarTy <- polyToMono info varTy 
  monoTy <- polyToMono info ty 
  monoEx <- expr ex newinfo --going into a new scope
  newAlts <- mapM (rewriteAlt monoVarTy newinfo) alts
  return $ Case monoEx (var,monoVarTy) monoTy newAlts

expr ex _ = return ex


-- |Resolve a variable or data constructor in an expression
resolveBaseTerm :: (Qual PolyName -> Ty -> Exp) 
                -> Qual PolyName -> Ty -> ScopedInfo 
                -> MonoMonad Exp
resolveBaseTerm cons name ty info 
  | isFHW name = fixFHWPrim (typeArgs info) $ cons name ty 
  | otherwise = do
     monoType <- polyToMono info ty
     newName <- getMonoName name (typeArgs info)
     return $ cons newName monoType

-- |Collect polymorphic constructs from an expression
collectPolyEx :: Exp -> TypeList -> MonoMonad ()
collectPolyEx (Dcon (pkg,dcon) _) _ 
  | isUnboxedTup dcon || isFHW (pkg,dcon) = return () 
collectPolyEx (Var name _) _ 
  | isFHW name || isPrim name = return ()
collectPolyEx (Var (_,varname) _) tys = addPolyElement varname tys
collectPolyEx (Dcon (_,dcon) _) tys = addPolyElement dcon tys
collectPolyEx _ _  = return () 

-- | Deal with case alternatives, using the case statement's
-- | result type to resolve polymorphic data constructors.
rewriteAlt :: Ty -> ScopedInfo -> Alt -> MonoMonad Alt
rewriteAlt _ info (Adefault e) = Adefault <$> expr e (info {typeArgs = []})
rewriteAlt _ info  (Alit l e) = Alit l <$> expr e (info {typeArgs = []})
rewriteAlt patternTy info (Acon dcon _ vbs e) = do 
  result <- expr e (info {typeArgs = []})
  newBinds <- retypeVBinds info vbs
  let patArgs = reverse $ extractTypeFields patternTy
  tyArgs <- mapM renameTypeCons patArgs
  unless (null tyArgs || any isTvar tyArgs) $ collectPolyEx (Dcon dcon UndefinedTy) tyArgs
  newName <- getMonoName dcon tyArgs
  return $ Acon newName [] newBinds result

getFuncBinds :: [Bind] -> [Vbind]
getFuncBinds [] = []
getFuncBinds (Tb _:binds) = getFuncBinds binds
getFuncBinds (Vb b : binds) = b : getFuncBinds binds

-- |Given a list of bindings and an association list mapping
-- |type variables to concrete types, replace the type variables
-- |in the assoc-list with the type variables found in the list of general bindings.
renameBinds :: [Bind] -> [(Tvar,Ty)] -> [(Tvar,Ty)]
renameBinds _ [] = []
renameBinds [] resolved = resolved 
renameBinds (Tb (tvar,_):binds) ((_,ty):rest) = (tvar,ty) : renameBinds binds rest
renameBinds (_:binds) tBinds = renameBinds binds tBinds

-- |Monomorphise the types in variable bindings
retypeVBinds :: ScopedInfo -> [Vbind] -> MonoMonad [Vbind]
retypeVBinds _ [] = return []
retypeVBinds info ((var,ty):rest) = do monoType <- polyToMono info ty
                                       otherBinds <- retypeVBinds info rest
                                       return $ (var, monoType) : otherBinds

-- |If a type is represented as a type constructor followed by concrete
-- |type fields, extract those type fields as a TypeList.
extractTypeFields :: Ty -> TypeList
extractTypeFields (Tapp ty1 ty2) = ty2 : extractTypeFields ty1
extractTypeFields (Tcon _) = [] --Stop when we get to the initial type constructor
extractTypeFields t = [t]

-- |Check if a type contains type variables anywhere
isTvar :: Ty -> Bool
isTvar (Tvar _) = True
isTvar (Tapp ty1 ty2) = isTvar ty1 || isTvar ty2
isTvar _ = False

-- |Helper functions to avoid messing with primitives

isUnboxedTup :: String -> Bool
isUnboxedTup ('(':'#':rest) = commas rest 0 
isUnboxedTup ('#':')':[n]) | isDigit n = True
isUnboxedTup _ = False

commas :: String -> Int-> Bool
commas (',':rest) n = commas rest (n+1)
commas _ 0 = False
commas s n = isUnboxedTup (s ++ show n)

-- | Reconstruct a chain of type applications to a FHW primitive
fixFHWPrim :: TypeList -> Exp -> MonoMonad Exp
fixFHWPrim [] ex = return ex
fixFHWPrim (tyArg : args) ex = let appExp = Appt ex tyArg in
                               fixFHWPrim args appExp

