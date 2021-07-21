{- |
Module : Fhw.Pass.TagMemoryOps.TagMemoryOps
Description : Introduces abstract notion of memory operations to a program.

We use an abstract notion of pointers to indicate where memory operations
will need to occur. Pointers are represented with the data type

data Pointer a = Pointer a

If a data type T has some recursive variant

C ... T ... 

this variant is transformed into

C ... (Pointer T) ...

We interact with pointers via 'read' and 'write' functions i.e.

read :: Pointer a -> a
read (Pointer x) = x

write :: a -> Pointer a 
write x = Pointer x

Each call to ``write'' is actually a call to a uniquely named wrapper around
the definition of "write" above. That is, every time we need to generate a new
call, we insert a call to "write_<num>" where <num> is incremented each time.
Each of these functions is defined as a call to the normal "write". We do this
so we can maintain symbol table information about the unique write identifiers
for future passes. Specifically, each name is mapped to an integer that
distinguishes each allocation site for later analyses; all the objects
allocated at a given site will comprise a single "memory variable" (these are
typically called "heap variables", but we also allocate stack objects in the
same way). 

We perform the same numbering for read calls.

Reads are applied to case scrutinee expressions and 
writes are applied to data constructor expressions e.g.

f :: [a] -> [a]
f arg = case arg of
  [] -> []
  (x:xs) -> x : f xs

becomes

f :: Pointer [a] -> Pointer [a]
f arg = case read3 arg of
  [] -> write1 []
  (x:xs) -> write2 (x : f xs)

write1 = write
write2 = write
read3  = read

-}

module Fhw.Pass.TagMemoryOps.TagMemoryOps where

--import Debug.Trace
import Data.List (find, mapAccumR, group, sort)

import Fhw.Core.Core
import Fhw.Pass.AnnoteTypes.AnnotateTypes
import Control.Monad.State
import Control.Monad.Reader
import Control.Applicative ((<$>))

type Env = StateT RecTypes (Reader ScopedInfo)
data ScopedInfo = ScopedInfo { ptrMap :: [(Var,Exp)] --Mapping pointers read to case-bound result of each read
                             , localBinds :: [Vbind]
                             }
data RecTypes = RecTypes { tcons :: [Ty] 
                         , site :: Int -- Uniquely number each access site
                         , accessDefs :: [Vdef]
                         , compilerInfo :: Analysis
                         } deriving Show

tagMemoryOps :: Module -> Analysis -> (Module, Analysis)
tagMemoryOps (Module mname tdefs vdefs) analysis = 
  (annotateTypes $ Module mname tdefs' vdefs', 
   verify (compilerInfo finalState))
  where
    --wrap recursive type fields with Pointers and add Pointer type definition
    tdefs' = if tdefs == newTdefs then tdefs 
             else pointerDef:map (wrapTyFields recTypes) newTdefs
    newTdefs = map (renameList . addPointers) tdefs 

    --Insert calls to reads and writes, update types, and add 
    --read and write definitions
    (finalState, finalVdefs) = mapAccumR modVdefs recTypes newVdefs
    vdefs' = memCalls ++ accessDefs finalState ++ finalVdefs
    modVdefs env (Vdef name ty ex) = (s', Vdef name (wrapTypes env ty) newEx)
      where 
        (newEx, s') = runReader (runStateT (mapMExpr insertTags ex) env) startScope
    newVdefs = map retypeLists vdefs

    memCalls = if null recDefs then [] else [readDef,writeDef]
    recDefs = filter isRecTdef newTdefs
    pointerTcons = map toTcon recDefs
    startScope = ScopedInfo { ptrMap = []
                            , localBinds = []
                            }
    recTypes = RecTypes { tcons = pointerTcons
                        , accessDefs = []
                        , site = 0 
                        , compilerInfo = analysis}

    toTcon (Data qtc tbinds _) = mkType qtc tbinds

-- | Check that all write and read sites have unique integer arguments
verify :: Analysis -> Analysis
verify a = let calls = writeSites a ++ readSites a in
           if all ((==1) . length) $ group $ sort $ map snd calls
             then a
             else error "Multiple write sites with the same number"

-- | Replace any recursive type fields T with Pointer T
addPointers :: Tdef -> Tdef
addPointers (Data qtc tbinds cdefs) = Data qtc tbinds newCdefs
  where
    ty = mkType qtc tbinds
    newCdefs = map modCdefs cdefs
    modCdefs (Constr name tbs tys) = Constr name tbs $ map wrapFields tys
    wrapFields t = wrapPtr (t == ty) t

-- | Rename the [] type if it exists, as otherwise Haskgen 
--   will remove its definition, even though we modify it to use pointers
renameList :: Tdef -> Tdef
renameList (Data (_,"[]") tbinds [_,Constr _ _ [tv,Tapp ptr _]]) = 
  Data lstName tbinds [nilConstr,consConstr]
  where nilConstr = Constr nilName [] []
        consConstr = Constr consName [] [tv,Tapp ptr (Tapp (Tcon lstName) tv)]
renameList (Data qtc tbinds cdefs) = Data qtc tbinds newCdefs
  where
    newCdefs = map modCdefs cdefs
    modCdefs (Constr name tbs tys) = Constr name tbs $ map renameFields tys
    renameFields (Tapp t1 t2) = Tapp (renameFields t1) (renameFields t2)
    renameFields (Tcon (_,"[]")) = Tcon lstName
    renameFields t = t

-- | Rename any List types or data constructors
retypeLists :: Vdef -> Vdef
retypeLists (Vdef name t ex) = Vdef name (renameTy t) (mapExpr retypeListEx ex)
  where
    retypeListEx (Appt e ty)   = Appt e $ renameTy ty
    retypeListEx (Let vdefs e) = Let (map retypeLists vdefs) e
    retypeListEx (Lam binds e) = flip Lam e $ map retyVb binds
    retypeListEx (Case e (n,vbTy) ty alts) =
      Case e (n,renameTy vbTy) (renameTy ty) (map retypeListAlt alts)
    retypeListEx (Var n ty)  = Var n $ renameTy ty
    retypeListEx (Dcon n ty) = Dcon (renameDcon n) (renameTy ty)
    retypeListEx e = e

    retyVb (Vb (n,ty)) = Vb (n,renameTy ty)
    retyVb tb = tb

    retypeListAlt (Acon n tbs vbs e) = 
      let vbName = map fst vbs
          vbTys = map (renameTy . snd) vbs
      in Acon (renameDcon n) tbs (zip vbName vbTys) e 
    retypeListAlt alt = alt

    renameDcon (_,"[]") = nilName
    renameDcon (_,":") = consName
    renameDcon n = n

    renameTy (Tcon (_,"[]")) = Tcon lstName
    renameTy (Tapp t1 t2) = Tapp (renameTy t1) (renameTy t2)
    renameTy (Tforall tb ty) = Tforall tb (renameTy ty)
    renameTy ty = ty


-- |Wrap any recursive types in a type signature with Pointers 
wrapTypes :: RecTypes -> Ty -> Ty
wrapTypes rTys (Tforall tb t) = Tforall tb (wrapTypes rTys t)
wrapTypes rTys t = let (retTy,argTys) = collectArgTypes t
                   in tArrows $ map wrap (argTys ++ [retTy])
  where
    wrap ty = let tList = reverse $ disassemble ty
                  wrappedArgs = map wrap $ tail tList
              in wrapPtr (getTcon ty `elem` map getTcon (tcons rTys)) $
                 foldl Tapp (head tList) wrappedArgs

    ptrTcon = Tcon ptrName
    disassemble ty@(Tapp t1 t2) = if t1 == ptrTcon then [ty] else t2 : disassemble t1
    disassemble ty = [ty]

-- | Wrap any type fields corresponding to recursive types in a Pointer
wrapTyFields :: RecTypes -> Tdef -> Tdef
wrapTyFields rTys (Data qdc tbs cdefs) = Data qdc tbs $ map helper cdefs
  where
    helper (Constr qcon ctbs tys) = Constr qcon ctbs $ map (wrapTypes rTys) tys

-- | Tag appropriate constructs with read and write functions
insertTags :: Exp -> Env Exp
insertTags (Lam bs e) = flip Lam e <$> mapM retypeBind bs
  where
    retypeBind (Vb (n,t)) = do newTy <- gets (`wrapTypes` t)
                               return $ Vb (n,newTy)
    retypeBind tb = return tb
insertTags (Let vdefs e) = do info <- get
                              return $ Let (map (vdefHelper info) vdefs) e
  where
    vdefHelper recTys (Vdef name ty ex) = Vdef name (wrapTypes recTys ty) ex
insertTags (Case e vb t alts) = do 
  needsRead <- isRecTy (snd vb)
  info <- get
  let wrappedTy = remFstPointer (wrapTypes info (snd vb))
  newScrut <- if needsRead then createCall "read_" wrappedTy e else return e
  newTy <- gets (`wrapTypes` t) 
  newAlts <- mapM altHelper alts
  return $ Case newScrut (fst vb,wrappedTy) newTy newAlts
  where
    altHelper (Acon dc tbs vbs ex) = 
      let fixVbTys ty = gets (`wrapTypes` ty) 
      in do newVbTys <- mapM (fixVbTys . snd) vbs
            return $ Acon dc tbs (zip (map fst vbs) newVbTys) ex 
    altHelper alt = return alt

insertTags e = let (call,expArgs,tyArgs) = collectArgs e
               in do info <- get
                     let wrappedTyArgs = map (wrapTypes info) tyArgs
                     newExpArgs <- mapM (mapMExpr insertTags) expArgs
                     binds <- asks localBinds
                     ptrs <- asks ptrMap
                     let (retTy,_) = collectArgTypes (exprType call)
                         tyArg = foldl Tapp (Tcon $ getTcon retTy) tyArgs
                         wrappedTy = remFstPointer (wrapTypes info tyArg)
                         finalEx = mkFuncApp call wrappedTyArgs newExpArgs
                     case call of
                      Dcon _ _ -> 
                        do isRec <- isRecTy retTy
                           if not isRec
                             then return finalEx
                             else createCall "write_" wrappedTy finalEx
                      Var (_,n) _ -> 
                        do let --If we're about to write something we read previously,
                               --just use the pointer previously read.
                               b = find ((==n) . fst) binds
                               ptr = lookup n ptrs
                           isRec <- maybe (return False) (isRecTy . snd) b
                           if not isRec
                             then return finalEx
                             else maybe (createCall "write_" wrappedTy finalEx) 
                                        return ptr
                      _ -> return $ mkFuncApp call wrappedTyArgs newExpArgs

-- | Create a write call and associate a unique number with it, unless
-- we're writing back data we just read (and already have the pointer)
createCall :: String -> Ty -> Exp -> Env Exp
createCall version wTy finalEx = do 
  env <- get 
  put (env { site = site env + 1
           , accessDefs = (if version == "read_" 
                            then mkRead 
                            else mkWrite) (site env) : accessDefs env 
           })
  let siteNum = site env 
  addSite version siteNum
  return $ App (Appt ((if version == "read_" then readCall else writeCall)
                      siteNum) wTy) finalEx

-- Add call site identifier to our compiler analysis structure
addSite :: String -> Int -> Env ()
addSite version siteNum = do
  env <- get
  let newSite = (version ++ show siteNum, siteNum)
      prevInfo = compilerInfo env
      newInfo = if version == "read_"
                  then prevInfo { readSites = newSite : readSites prevInfo }
                  else prevInfo { writeSites = newSite : writeSites prevInfo }
  put (env { compilerInfo = newInfo } )



{- Helper Functions -}

-- | Remove the first Pointer in a type application
remFstPointer :: Ty -> Ty
remFstPointer (Tapp (Tcon (_,"Pointer")) t2) = t2
remFstPointer (Tapp t1 t2) = Tapp (remFstPointer t1) t2
remFstPointer ty = ty

-- | Check if a type should be wrapped in a Pointer
isRecTy :: Ty -> Env Bool
isRecTy t = gets (elem (getTcon t) . map getTcon . tcons)

-- | Wrap a type in a Pointer constructor if a boolean condition holds
wrapPtr :: Bool -> Ty -> Ty
wrapPtr cond t = if cond then ptrTy t else t

-- | Modify a given expression with a monadic function.
--   Stop recursing at applications.
mapMExpr :: (Exp -> Env Exp) -> Exp -> Env Exp
mapMExpr f expr = case expr of
    Lam binds e1          -> fmap (Lam binds) (f' e1) >>= f
    Let vdefs e1          -> do newVdefs <- mapM (mapMVdef f) vdefs
                                fmap (Let newVdefs) (f' e1) >>= f
    Case e1 vbind ty alts -> do 
      needsRead <- isRecTy (snd vbind)
      let processCase = do 
            newScrut <- f' e1
            fmap (Case newScrut vbind ty) (mapM (mapMAlt f) alts) >>= f
      if needsRead 
        then do newMap <- asks (((fst vbind, e1) :) . ptrMap)
                newBinds <- asks ((vbind :) . localBinds)
                local (\info -> info { ptrMap = newMap,
                                       localBinds = newBinds }) processCase
        else processCase
    _                     -> f expr 
  where
  f' = mapMExpr f


-- | The helper function for mapMExpr on the alts of 'Case'.
mapMAlt :: (Exp -> Env Exp) -> Alt -> Env Alt
mapMAlt f alt = case alt of
    Acon (mname, dcon) tbs vbs e -> Acon (mname, dcon) tbs vbs <$> f' e
    Alit lit e                  -> Alit lit <$> f' e
    Adefault e                  -> Adefault <$> f' e
  where
  f' = mapMExpr f

-- | The helper function for mapMExpr on the vdefs of 'Let'.
mapMVdef :: (Exp -> Env Exp) -> Vdef -> Env Vdef
mapMVdef f (Vdef (mname, var) ty e) = Vdef (mname, var) ty <$> mapMExpr f e


{- Inserted names and terms corresponding to this pass -}

ptrName :: Qual String
ptrName = (Nothing,"Pointer")

ptrTy :: Ty -> Ty
ptrTy = Tapp (Tcon ptrName)

ptrDcon :: Exp
ptrDcon = Dcon ptrName (tArrow tvA (ptrTy tvA))

pointerDef :: Tdef
pointerDef = Data ptrName [("a",Klifted)] 
             [Constr ptrName [] [Tvar "a"]]

lstName :: Qual String
lstName = (Nothing,"List_")

nilName :: Qual String
nilName = (Nothing,"Nil_")

consName :: Qual String
consName = (Nothing,"Cons_")

tvA :: Ty
tvA = Tvar "a"

mkWrite :: Int -> Vdef
mkWrite num = Vdef (Nothing,"write_" ++ show num) ty $
              Lam [Tb ("a",Klifted), Vb ("item",tvA)] $
              mkFuncApp (Var (Nothing, "write_") ty) [tvA] [Var (Nothing,"item") tvA]
  where
    ty = Tforall ("a",Klifted) $ tArrows [tvA,ptrTy tvA]

mkRead :: Int -> Vdef
mkRead num = Vdef (Nothing,"read_" ++ show num) ty $
              Lam [Tb ("a",Klifted), Vb ("ptr",pTy)] $
              mkFuncApp (Var (Nothing, "read_") ty) [tvA] [Var (Nothing,"ptr") pTy]
  where
    ty = Tforall ("a",Klifted) $ tArrows [ptrTy tvA, tvA]
    pTy = ptrTy tvA

writeDef :: Vdef
writeDef = Vdef (Nothing,"write_") ty $
           Lam [Tb ("a",Klifted), Vb ("item",tvA)] $
           mkFuncApp ptrDcon [tvA] [Var (Nothing,"item") tvA]
  where
    ty = Tforall ("a",Klifted) $ tArrows [tvA,ptrTy tvA]

intTy :: Ty
intTy = Tcon (Just typeMod, "Int")
  where
    typeMod = M (P "ghc-prim", ["GHC"], "Types")

writeCall :: Int -> Exp
writeCall num = Var (Nothing,"write_" ++ show num) (tArrow tvA (ptrTy tvA))
            
readDef :: Vdef
readDef = Vdef (Nothing,"read_") (Tforall ("a",Klifted) $ tArrow pTy tvA) $
           Lam [Tb ("a",Klifted), Vb ("ptr",pTy)] $
           Case (Var (Nothing,"ptr") pTy) ("dummy",pTy) tvA
           [Acon ptrName [] [("item",tvA)] (Var (Nothing,"item") tvA)]
  where
    pTy = ptrTy tvA

readCall :: Int -> Exp
readCall num = Var (Nothing,"read_" ++ show num) (tArrow (ptrTy tvA) tvA)
