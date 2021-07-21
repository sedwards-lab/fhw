{- |
Module : Fhw.Pass.PackTypes.Environment
Description : Representation of the program environment and general
                getter/setter functions.
-}
module Fhw.Pass.PackTypes.Environment where

import Fhw.Core.Core

import qualified Data.Map as Map
import Data.Maybe

import Control.Monad.State.Lazy
import Control.Monad.Reader
import Control.Applicative ((<$>))

-- | Symbol table
type SymTab = Map.Map Var TableInfo
data TableInfo = TableInfo { getMname :: Maybe Mname
                           , getName :: Var
                           , getTy :: Ty
                           , getExp :: Exp} deriving (Show,Eq)


insertSymTab :: SymTab -> Vdef -> SymTab
insertSymTab table (Vdef (mnv,name) ty expr) = 
  Map.insert name TableInfo{getMname = mnv
                           ,getName = name
                           ,getTy = ty
                           ,getExp = expr} table

getTable :: Var -> SymTab -> TableInfo
getTable name = fromMaybe emptyTable . Map.lookup name

-- | Static info we need to pass around
data StaticInfo = 
  StaticInfo { typePairs :: [(Ty,Ty)]   --unpacked ty -> packed ty
             , packExps :: [(Ty,Exp)]   --unpacked tys -> pack funcs
             , unpackExps :: [(Ty,Exp)] --packed tys -> unpack funcs
             , toPack :: [(Var,Ty)]     --local bindings to pack
             , toUnpack :: [(Var,Ty)]   --local bindings to unpack
             , boundArgs :: [(Var,Exp)] --lambda args bound to exprs
             , convFuncs :: [Vdef]      --generated conversion functions
             , scrutBindings :: [(Exp,ScrutInfo)] --scrutinee -> info about alternative selected
             } deriving(Show)
type ScrutInfo = (Qual Dcon, [Vbind], Vbind)

-- | Our 'Environment' is a stateful symbol table carrying some
--   read-only information
type Env = StateT SymTab (Reader StaticInfo)

getBinds :: Var -> Env (Maybe Exp)
getBinds name = asks (lookup name . boundArgs)

getPackCall :: Ty -> Env (Maybe Exp)
getPackCall ty = asks (lookup ty . packExps)

getUnpackCall :: Ty -> Env (Maybe Exp)
getUnpackCall ty = asks (lookup ty . unpackExps)

getTPair :: Ty -> Env (Maybe Ty)
getTPair ty = asks (lookup ty .  typePairs) 

emptyTable :: TableInfo
emptyTable = TableInfo {getMname = Nothing
                       ,getName = ""
                       ,getTy = UndefinedTy
                       ,getExp = Var (Nothing,"") UndefinedTy}

emptyInfo :: StaticInfo
emptyInfo = StaticInfo { typePairs = []
                       , packExps = []
                       , unpackExps = []
                       , toPack = []
                       , toUnpack = []
                       , boundArgs = []
                       , convFuncs = []
                       , scrutBindings = []}

-- |Modify a given expression with a monadic function.
--  Stop recursing at applications or lone variables/data constructors.
modExpApp :: (Exp -> Env Exp) -> Exp -> Env Exp
modExpApp f (Let vdefs ex)     = do newDefs <- mapM (modVdefExp (modExpApp f)) vdefs
                                    newExp <- modExpApp f ex
                                    f (Let newDefs newExp)
modExpApp f (Lam bs ex)        = fmap (Lam bs) (modExpApp f ex) >>= f
modExpApp f (Case ex v t alts) = do newAlts <- mapM (modAltEx (modExpApp f)) alts
                                    newEx <- modExpApp f ex 
                                    f $ Case newEx v t newAlts
modExpApp f ex = f ex

modAltEx :: (Functor m, Monad m) => (Exp -> m Exp) -> Alt -> m Alt
modAltEx f (Acon d tb vb subex) = Acon d tb vb <$> f subex 
modAltEx f (Alit l subex)       = Alit l <$> f subex 
modAltEx f (Adefault subex)     = Adefault <$> f subex 

-- |Modify a given expression with a monadic function.
--  Stop recursing at case expressions and lone variables/data constructors
modExpCase :: (Exp -> Env Exp) -> Exp -> Env Exp
modExpCase f (Let vdefs ex)     = do newDefs <- mapM (modVdefExp (modExpCase f)) vdefs
                                     newExp <- modExpCase f ex
                                     f (Let newDefs newExp)
modExpCase f (Lam bs ex)        = fmap (Lam bs) (modExpCase f ex) >>= f
modExpCase f (App ex1 ex2)      = liftM2 App (modExpCase f ex1) (modExpCase f ex2) >>= f
modExpCase f (Appt ex ty)       = fmap (flip Appt ty) (modExpCase f ex) >>= f
modExpCase f ex = f ex

modVdefExp :: (Functor m, Monad m) => (Exp -> m Exp) -> Vdef -> m Vdef
modVdefExp f (Vdef mn ty e) = fmap (Vdef mn ty) (f e)

-- | Apply a transformation to a local definition
localDef :: (Exp -> Env Exp) -> Vdef -> Env Vdef
localDef f (Vdef (mn,name) ty ex) = do
  s <- get
  put (Map.insert name TableInfo{getMname = mn
                                ,getName = name
                                ,getTy = ty
                                ,getExp = ex} s)
  newExp <- f ex 
  put s
  return $ Vdef (mn,name) ty newExp

-- | Apply a transformation to all the vdefs in a let expression
applyLocal :: (Exp -> Env Exp) -> Exp -> [Vdef] -> Env Exp
applyLocal f ex vdefs = do
  newVdefs <- mapM inlineVdef vdefs
  return $ Let newVdefs ex
  where
    inlineVdef = localDef (modExpApp f)


-- | Check if a given type has an unpacked recursive datatype 
--   as its final tcon
returnsRecTy :: Ty -> Env Bool
returnsRecTy ty = isJust <$> getTPair returnType
  where returnType = getTycon $ fst $ collectArgTypes ty

-- | Check if a name is one of our pack/unpack functions
inReader :: Exp -> (StaticInfo -> [(Ty,Exp)]) -> Env Bool
inReader name f = fmap (elem $ getVarName name) readerContents 
  where
    readerContents = asks (map (getVarName . snd) .  f)

-- | Augment the Core definition of getTcon
getTycon :: Ty -> Ty
getTycon = Tcon . getTcon

getVarName :: Exp -> String
getVarName (Var (_,name) _) = name
getVarName _ = ""

getDconName :: Exp -> String
getDconName (Dcon (_,name) _) = name
getDconName _ = ""

isDcon :: Exp -> Bool
isDcon (Dcon _ _) = True
isDcon _ = False

isVar :: Exp -> Bool
isVar (Var _ _) = True
isVar _ = False

isCase :: Exp -> Bool
isCase Case{} = True
isCase _ = False

isTcon :: Ty -> Bool
isTcon (Tcon _) = True
isTcon _ = False

exFromLambda :: Exp -> Exp
exFromLambda (Lam _ ex) = ex
exFromLambda ex = error $ "Trying to reduce non-lam expression " ++ show ex

-- | Get binding names from a lambda expression
getLamBinds :: Exp -> [Var]
getLamBinds (Lam binds _) = foldr helper [] binds
  where
    helper (Vb (n,_)) vars = n : vars
    helper _ vars = vars
getLamBinds _ = []

--Check if a type is undefined
undef :: Ty -> Bool
undef UndefinedTy = True
undef _ = False

-- | Monadic if-then-else 
mCondition :: (Monad m) => m Bool -> a -> a -> m a
mCondition bool th el = do
  cond <- bool
  return $ if cond then th else el
