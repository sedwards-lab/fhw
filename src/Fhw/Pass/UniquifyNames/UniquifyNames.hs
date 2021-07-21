{- |
Module : Fhw.Pass.UniquifyNames.UniquifyNames
Description : Make all names (identifiers) in the core representation globally unique.

 Make all names (identifiers) in the core representation globally
unique.  Starting point may have non-unique names that are shadowed or in
different scopes.  Everything is renamed only if necessary.  Module names are
ignored.

-}

module Fhw.Pass.UniquifyNames.UniquifyNames ( uniquifyNames ) where

import Fhw.Core.Core
import Control.Monad.State
import Data.Maybe ( fromMaybe )
import qualified Data.Set as Set
import qualified Data.Map.Strict as Map

-- Set of all names encountered, used to avoid collisions
type NameSet = Set.Set (Qual Var)
type RenameMonad = State NameSet

noNames :: NameSet
noNames = Set.empty

-- Map from existing names to new ones
type NameMap = Map.Map (Qual Var) (Qual Var)

-- | Return a version of the name that isn't in the set.
findUniqueName :: Qual Var -> NameSet -> Qual Var
findUniqueName s@(mn, v) set =
  if Set.member s set then findNew 1 else s
      where
        findNew :: Int -> Qual Var
        findNew n =
            let newName = (mn, v ++ "_" ++ show n) in
            if Set.member newName set then findNew (n + 1)
            else newName

-- | Return a unique name for a given qualified variable name name;
-- remember it in the set of used names
makeNameUnique :: Qual Var -> RenameMonad (Qual Var)
makeNameUnique s = do
  nameSet <- get
  let newName = findUniqueName s nameSet
  put (Set.insert newName nameSet)
  return newName

-- | Make a unique name for an unqualified variable name
makeUQNameUnique :: Var -> RenameMonad Var
makeUQNameUnique v = do
  (_,v') <- makeNameUnique (Nothing, v)
  return v'


-- | Main entry point: make each Var name in the module unique
uniquifyNames :: Module -> Module
uniquifyNames (Module mname tdefs vds) = Module mname tdefs vds'
    where
      (vds', _) = evalState (vdefs Map.empty vds) noNames

-- | Transform a list of (potentially) recursive Vdefs
--
-- Since these are recursive, we need to figure out how to rename
-- each of the Vdefs, extend the NameMap accordingly, and then transform
-- the bodies
vdefs :: NameMap -> [Vdef] -> RenameMonad ([Vdef], NameMap)
vdefs m vds = do
  let origNames = map (\(Vdef qv _ _) -> qv) vds -- Get the original names
  newNames <- mapM makeNameUnique origNames      -- Make them unique
  let m' = foldl (\ mm (o, n) -> Map.insert o n mm) m -- Extend the mapping
             (zip origNames newNames)
  vds' <- mapM (vdef m') vds
  return (vds', m')

-- | Transform a vdef; its name must already be in the rename map
vdef :: NameMap -> Vdef -> RenameMonad Vdef
vdef m (Vdef v t e) = do
  let v' = fromMaybe (error $ "New name for \"" ++ show v ++ "\" not found") $
           Map.lookup v m
  e' <- expr m e
  return $ Vdef v' t e'

-- | Transform an expr
expr :: NameMap -> Exp -> RenameMonad Exp

expr _ v@(Var n _) | isPrim n || isFHW n = return v

expr m (Var n t) =
  case Map.lookup n m of
    Just n' -> return $ Var n' t
    Nothing -> error $ "New name for \"" ++ show n ++ "\" not found"

expr _ d@(Dcon _ _) = return d
expr _ l@(Lit _) = return l

expr m (App e1 e2) = do
    e1' <- expr m e1
    e2' <- expr m e2
    return $ App e1' e2'

expr m (Appt e t) = do
  e' <- expr m e
  return $ Appt e' t

expr m (Lam binds e) = do
  binds' <- mapM bind binds -- Rename the formal arguments
  let m' = foldl saveBinder m (zip binds binds') -- Remember the new names
  e' <- expr m' e -- Rewrite the body
  return $ Lam binds' e'
      where
        saveBinder mm (Vb (v, _), Vb (v', _)) =
             Map.insert (Nothing, v) (Nothing, v') mm
        saveBinder mm _ = mm

expr m (Let vds e) = do
  (vds', m') <- vdefs m vds
  e' <- expr m' e
  return $ Let vds' e'

expr m (Case e (v, t1) t2 alts) = do
  e' <- expr m e
  v' <- makeUQNameUnique v
  let m' = Map.insert (Nothing, v) (Nothing, v') m
  alts' <- mapM (alt m') alts
  return $ Case e' (v', t1) t2 alts'

-- | Transform a binder
bind :: Bind -> RenameMonad Bind
bind tb@(Tb _) = return tb
bind (Vb (v, ty)) = do
  v' <- makeUQNameUnique v
  return $ Vb (v', ty)

-- | Transform a case alternative
alt :: NameMap -> Alt -> RenameMonad Alt

alt m (Acon dc tbs vbs e) = do
  vbs' <- mapM vbind vbs
  let m' = foldl savevbind m (zip vbs vbs')
  e' <- expr m' e
  return $ Acon dc tbs vbs' e'
      where
        vbind (v, t) = do
          v' <- makeUQNameUnique v
          return (v', t)
        savevbind :: NameMap -> (Vbind, Vbind) -> NameMap
        savevbind mm ((v, _), (v', _)) =
            Map.insert (Nothing, v) (Nothing, v') mm

alt m (Alit l e) = do
  e' <- expr m e
  return $ Alit l e'

alt m (Adefault e) = do
  e' <- expr m e
  return $ Adefault e'

