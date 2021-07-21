{- |
Module : Fhw.Pass.PackTypes.Transformation
Description : Insert calls to 'pack' and 'unpack' and modify types
-}
module Fhw.Pass.PackTypes.Transformation (packTypes, wrapFunctions, 
                                          hoistPacks, hoistUnpacks, hoistConstrPacks) where

--import Debug.Trace

import Fhw.Core.Core
import Fhw.Pass.PackTypes.Environment

import Data.Maybe
import Data.Traversable (traverse)

import Control.Monad.Trans.Maybe
import Control.Monad.State.Lazy
import Control.Monad.Reader
import Control.Applicative ((<$>))


-- | Injection: Replace every expression e of packable type with
--   (unpack (pack e)). Note that function types are not packable
--   and are thus ignored.
wrapFunctions :: Exp -> Env Exp
wrapFunctions e | isFunctionTy (exprType e) = return e
                | otherwise = do
  let retTy = fst $ collectArgTypes $ exprType e 
  --If we have a packable type, insert the calls; otherwise,
  --return the original expression
  packTy <- getTPair (getTycon retTy)
  if isNothing packTy
    then return e 
    else do packCall <- fromJust <$> getPackCall (getTycon retTy)
            unpackCall <- fromJust <$> getUnpackCall (fromJust packTy)
            return $ App unpackCall $ App packCall e

-- | Perform hoisting step on unpack calls applied to function arguments
hoistUnpacks :: TableInfo -> Env TableInfo
hoistUnpacks table = do
  modifiedEx <- mapExprM (packArgTypes <=< pushUnpack) $ getExp table 
  let (retTy, argTypes) = collectArgTypes $ getTy table
  newArgTys <- mapM packNonRetTypes argTypes
  return table{getTy = tArrows (newArgTys ++ [retTy]), getExp = modifiedEx}
  where
    packNonRetTypes t | not (isFunctionTy t) = packTypes t
                      | otherwise = 
                        let (retTy, argTypes) = collectArgTypes t
                        in do newArgTys <- mapM packTypes argTypes
                              return $ tArrows (newArgTys ++ [retTy])

    --Remove unpack calls applied to function arguments 
    --(e.g., f (unpack a1) a2 ... an, where f is neither pack nor unpack). 
    --Apply unpack to any lambda bindings of packable type where they appear
    --in a function (thus "hoisting" the pack calls).
    pushUnpack (Lam bs expr) = do
      binds <- foldM getRecTyBinds [] $ reverse bs
      Lam bs <$> local (\r -> r{toUnpack = binds}) (mapExprM unpackArgs expr)
      where
        getRecTyBinds l (Vb (n,t)) = mCondition (returnsRecTy t) ((n,t):l) l
        getRecTyBinds l _ = return l
    pushUnpack expr = do
      let (call, args, _) = collectArgs expr
      packCalls <- asks (map snd . packExps)
      unpackCalls <- asks (map snd . unpackExps)
      if isFunctionTy (exprType call) &&
         call `notElem` (packCalls ++ unpackCalls) && isVar call
        then mkFuncApp call [] <$> mapM (removeUnpack unpackCalls) args
        else return expr
      where
        removeUnpack unpacks (App e1 e2) | e1 `elem` unpacks = return e2
        removeUnpack _ e = return e

    -- Pack the types of all lambda bindings (only pack arg types of a higher-order
    -- parameter) and variable names.
    packArgTypes :: Exp -> Env Exp
    packArgTypes (Lam bs e) = flip Lam e <$> mapM packBinds bs
      where
        packBinds (Vb (n,t)) = (\newT -> Vb (n,newT)) <$> packNonRetTypes t
        packBinds b = return b
    packArgTypes expr@(Var (m,n) t) = do 
      packCalls <- asks (map snd . packExps)
      unpackCalls <- asks (map snd . unpackExps)
      if expr `notElem` (packCalls ++ unpackCalls)
        then fmap (Var (m,n)) (packTypes t)
        else return expr
    packArgTypes e = return e

    --Convert n to (unpack n) if n was a lambda bind. Using MaybeT and
    --runMaybeT avoids the need to check and extract each Maybe result from
    --the monadic functions returning values of type (Maybe a).
    unpackArgs :: Exp -> Env Exp
    unpackArgs expr@(Var (_,name) _) = fmap (fromMaybe expr) $ runMaybeT $ do
      tc <- MaybeT $ asks (lookup name . toUnpack) 
      packTy <- MaybeT $ getTPair (getTycon tc)
      unpackResult <- MaybeT $ getUnpackCall packTy 
      return $ mkFuncApp unpackResult [] [expr]
    unpackArgs e = return e

-- | Perform hoisting step on pack calls applied to function applications 
-- and top-level variable definitions
hoistPacks :: TableInfo -> Env TableInfo
hoistPacks table = do
  modifiedEx <- mapExprM (packReturnTypes <=< removePack) $ getExp table 
  packCall <- getPackCall (fst $ collectArgTypes ty) 
  --pack this definition's return types if it's a function, 
  --the whole type otherwise
  newFuncTy <- if null (snd (collectArgTypes ty)) 
               then packTypes ty 
               else packRetTys ty
  --add pack call to body of this definition if it returns
  --a packable type ("hoisting" the removed pack calls)
  let finalEx = maybe modifiedEx (\pCall -> case modifiedEx of
                      Lam binds e -> Lam binds $ App pCall e
                      e | not (isFunctionTy ty) -> App pCall e
                        | otherwise -> e) packCall
  return table{getTy = newFuncTy, getExp= finalEx}
  where
    ty = getTy table
    --Remove pack calls applied to function applications (e.g., pack (f a1 a2 ... an),
    --where f is an n-argument function) and top-level variables. These will be 
    --"hoisted" into their definitions in the body of hoistPacks above.
    removePack expr@(App call@(Var _ _) arg) = do 
      packCalls <- asks (map snd . packExps)
      tables <- get
      return $ case collectArgs arg of
        (Var (_,name) varTy, _,_) 
          | call `elem` packCalls &&
            (isFunctionTy varTy || getTable name tables /= emptyTable) -> arg
        _ -> expr
    removePack e = return e
    -- Pack the return types of function names (i.e. Tn in T1 -> ... -> Tn),
    -- higher-order lambda bindings, and top-level variable definitions.
    packReturnTypes :: Exp -> Env Exp
    packReturnTypes (Lam bs e) = flip Lam e <$> mapM packBinds bs
      where
        packBinds (Vb (n,t)) | isFunctionTy t = do newTy <- packRetTys t
                                                   return (Vb (n, newTy))
        packBinds b = return b
    packReturnTypes expr@(Var (m,n) t) = do 
      packCalls <- asks (map snd . packExps)
      unpackCalls <- asks (map snd . unpackExps)
      tables <- get
      if expr `notElem` (packCalls ++ unpackCalls) &&
         (isFunctionTy t || getTable n tables /= emptyTable)
        then fmap (Var (m,n)) (packRetTys t)
        else return expr
    packReturnTypes e = return e
    -- Pack both the return type of a function type, and the last Tcon of
    -- any nested function types.
    packRetTys :: Ty -> Env Ty
    packRetTys t = let (retTy, argTys) = collectArgTypes t
                   in do newRet <- packTypes retTy
                         newArgs <- mapM packRetTys argTys
                         if null argTys
                           then return t
                           else return $ tArrows $ newArgs ++ [newRet]
                   
-- | Hoisting pack calls applied to case alternative patterns, 
-- modifying some type definitions in the process. Specifically, given
-- variants C t1 ... ti ... tn of type T, where ti is some packable type 
-- R /= T, we convert ti to the packed version P_R, hoist pack calls on
-- pi from (case e of ... (C p1 ... pi ... pn -> ... (pack pi) ...) ...)
-- to get (case e of ... (C p1 ... (pi :: P_R) ... pn -> ... (pi) ...) ...),
-- and place these pack calls where the variant is constructed, i.e., 
-- (C e1 ... ei ... en) becomes (C e1 ... (pack ei) ... en). We only do this
-- to types that are not packed (as those will be dealt with by inlining unpack
-- and pack).
hoistConstrPacks :: [Tdef] -> Env [Tdef]
hoistConstrPacks tdefs = do (newTdefs,consToPack) <- unzip <$> mapM packFields tdefs
                            put =<< traverse (hoist $ concat consToPack) =<< get 
                            return newTdefs
  where
    --Pack type fields of a variant of a non-packable type.
    --Return both the new type and any variants that were modified.
    packFields tdef@(Data (q,n) tbs constrs) = do 
      isPackable <- asks ((Tcon (q,n) `elem`) . map fst . typePairs)
      if isPackable
        then return (tdef,[])
        else do newConstrs <- mapM helper constrs
                let constrMap = map mkMap $ filter (`notElem` constrs) newConstrs
                return (Data (q,n) tbs newConstrs, constrMap) 
      where
        helper (Constr dc ts tys) = Constr dc ts <$> mapM go tys
        go ty = if ty == Tcon (q,n) then return ty else packTypes ty 
        mkMap (Constr dc _ tys) = (dc,tys)

    --Run the hoisting pass on this definition
    hoist cMap table = do modifiedEx <- mapExprM (pushPack cMap) $ getExp table
                          return table{getExp = modifiedEx}

    --Update types of patterns corresponding to modified type fields, and add
    --those patterns p so we can convert instances of (pack p) to (p) in the
    --case alternative.
    pushPack cMap (Case scrut vbind ty alts) = 
      Case scrut vbind ty <$> mapM helper alts
      where
        helper alt@(Acon dc tbs vbs e) = case lookup dc cMap of
          Nothing -> return alt
          Just tys -> let packBind (v,t) = do newTy <- packTypes t
                                              return (v, newTy)
                      in do newVbs <- zipWithM (packItem packBind) vbs tys
                            let toModify = filter (`notElem` vbs) newVbs
                            Acon dc tbs newVbs <$> 
                              local (\r -> r{toUnpack = toModify}) 
                                    (mapExprM removePack e)
        helper alt = return alt

        --Convert (pack p) into p for a pattern p of (newly) packed type
        removePack expr@(App call@(Var _ _) arg) = do 
          packCalls <- asks (map snd . packExps)
          packedBinds <- asks (map fst . toUnpack)
          return $ case collectArgs arg of
            (Var (_,name) _, _,_) 
              | call `elem` packCalls && name `elem` packedBinds -> arg
            _ -> expr
        removePack e = return e

    --Insert hoisted pack calls on data constructor arguments and update the
    --constructor's type. Only modify expressions if the data constructor is
    --in the "constrs" list.
    pushPack cMap expr = case call of
      Dcon dc ty -> case lookup dc cMap of
        Nothing -> return expr
        Just tys -> let (retTy, argTypes) = collectArgTypes ty
                        argHelper arg = do packCall <- getPackCall $ exprType arg
                                           return $ maybe arg (flip App arg) packCall
                    in do newArgs <- zipWithM (packItem argHelper) args tys
                          newType <- (\ts -> tArrows (ts++[retTy])) <$> 
                                      zipWithM (packItem packTypes) argTypes tys
                          return $ mkFuncApp (Dcon dc newType) [] newArgs
      _ -> return expr
      where
        (call,args,_) = collectArgs expr
    
    --Apply a function to an item based on whether a type associated
    --with that item is packed.
    packItem :: (a -> Env a) -> a -> Ty -> Env a
    packItem f item ty = do shouldPack <- isJust <$> getUnpackCall ty
                            if shouldPack
                              then f item
                              else return item
                         

  
-- | Pack type signatures
packTypes :: Ty -> Env Ty
packTypes ty = (tForalls binds . tArrows) <$> mapM convertType allTypes
  where
    --info about this expression
    (retTy,argTys) = collectArgTypes ty
    allTypes = argTys ++ [retTy]
    binds = collectBinds ty []

    collectBinds (Tforall bind t) l = collectBinds t (bind : l)
    collectBinds _ l = reverse l

-- | Convert an unpacked type into its packed equivalent
convertType :: Ty -> Env Ty
convertType (Tapp ty1 ty2) = liftM2 Tapp (convertType ty1) (convertType ty2)
convertType ty = fmap (maybe ty $ fixupTy ty) $ getTPair $ getTycon ty
  where
    -- Apply all type args from the original return type to
    -- the new return type
    fixupTy (Tapp t1 t2) newTy = Tapp (fixupTy t1 newTy) t2
    fixupTy _            newTy = newTy

