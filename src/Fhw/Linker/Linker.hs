{- |
Module : Fhw.Linker.Linker 
Description : Links an external core module with dependent external core libraries 

This module is based on Main.hs in the linkcore package. Linkcore is
an executable that takes in a root directory where all necessary
external core libraries reside and an external core program. It would
look at the program and determine any external libraries that were
required for proper execution. These libraries are then loaded into
the same program, after which a dead code elimination function for
Core (found in Language.Core.ElimDeadCode) is called to remove
anything not referenced by a main function, which is required in the
original program.

Our linker will operate on our version of external core, and it will
not require a main method in the original program.

The top-level function, link, takes two FilePaths as arguments and
returns a linked Module. The first FilePath is the root directory for
the external core libraries, while the second is the .hcr file we are
linking against.

A lot of the comments in this file are copied from the various
Language.Core files that contained the merging and dependency-finding
code. Comments written by me (Richard) will be marked with my initials
(RMT).

-}


{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE PatternGuards #-}
module Fhw.Linker.Linker (link) where

import Fhw.Core.Core as F
import Fhw.CoreParser.Parser
import Fhw.Haskgen.DeadCode as D

import Data.List
import Data.Generics
import Data.Maybe
import qualified Data.Map as M
import qualified Data.Set as S
import qualified Data.ByteString.Char8 as B

import System.FilePath
import System.Directory
import System.IO

import Control.Monad.State
import Control.Exception



link :: [FilePath] -> String -> FilePath -> IO Module
link pkgRoots seed path = do
      let repl ',' = ' '
          repl '[' = ' '
          repl ']' = ' '
          repl c   = c
          seedlist = words $ map repl seed
      let modulename = dropExtension $ snd $ splitFileName path
      deps_ <- getDependencies (takeDirectory path : pkgRoots) [path] modulename  --Get all dependent modules (RMT)
      let (_,modules) = unzip $ filter (notPrim . snd) deps_
      let single = {-# SCC "MERGING" #-} merge M.empty modules modulename  --Merge all dependent modules with given sourcefile (RMT)
      let deadKilled = D.removeCode single seedlist              --Do dead code removal  (RMT)
      return deadKilled
  
notPrim :: Module -> Bool
notPrim (Module mn _ _) = mn `notElem` [primMname,altBoolMname,fhwPrimMname]

--I need to define these Mnames to catch
--some modules that shouldn't be linked (RMT)
altBoolMname :: Mname
altBoolMname = M (P "ghc-prim", ["GHC"], "Bool")

{-
  merge turns a group of (possibly mutually recursive) modules
  into a single module, which should be called main:Main. 

  This doesn't handle dependency-finding; you have to hand it all
  the modules that your main module depends on (transitively).
  Language.Core.Dependencies does automatic dependency-finding,
  but that code is a bit moldy. (We're using it anyway -- RMT)

  merge takes an extra argument that is a variable substitution.
  This is because you may want to treat some defined names specially
  rather than dumping their definitions into the Main module. For
  example, if my back-end tool defines a new primop that has
  the type IO (), it's easiest for me if I can consider IO and () as
  primitive type constructors, though they are not. Thus, I pass in
  a substitution that says to replace GHC.IOBase.IO with GHC.Prim.IO,
  and GHC.Base.() with GHC.Prim.(). Of course, I am responsible for
  providing a type environment defining those names if I want to be
  able to type the resulting program.

  You can pass in the empty list if you don't understand what the
  purpose of the substitution is.
-}


merge :: M.Map (Qual Var) (Qual Var) -> [Module] -> String -> Module
merge subst ms modname = 
  let modulename = M (P "main", [], modname)
      new = zapNames (subst `M.union` subst1) topNames modname (Module modulename newTdefs topBinds) in
    new
  where -- note: dead code elimination will later remove any names
        -- that were in the domain of the substitution
  newTdefs = finishTdefs deadIds $ concat allTdefs
  (renamedVdefs,(_,subst1)) = runState
    (mapM (\ (Module _ _ vdefs) -> rnTopVdefs vdefs) ms) (0,M.empty)
  allTdefs = map (\ (Module _ tds _) -> tds) ms 
  deadIds  = M.keys subst
  topNames = uniqueNamesIn topBinds (concat allTdefs)
  (topBinds::[Vdef])    = finishVdefs deadIds $ concat renamedVdefs

{-
  This looks at each top-level *unqualified* var and renames it if it's not unique across
  all modules. Each renamed var gets recorded in a state-threaded substitution.

  This doesn't fix up occurrences of the renamed vars. zapNames does that.
-}

rnTopVdefs :: [Vdef] -> State (Int,M.Map (Qual Var) (Qual Var)) [Vdef]
rnTopVdefs = mapM doOneVdef
  where doOneVdef (Vdef qv@(Nothing,v) t e) = do
          newUnique <- gets fst
          let newV = unqual $ v ++ "-" ++ show newUnique
          modify (\ (i,m) -> (newUnique `seq`i+1,M.insert qv newV m))
          return $ Vdef newV t e
        doOneVdef vd = return vd
        unqual = (,) Nothing


{-
  This function finds all of the names in the given group of vdefs and
  tdefs that are only defined by one module. This is because if function
  quux is only defined in module foo:Bar.Blat, we want to call it
  main:Main.quux in the final module, and not main:Main.foo_Bar_Blat_quux,
  for file size and readability's sake.

  Possible improvement:
  * restructure the whole thing to shorten names *after* dead code elim.        
  (Would allow for more names to be shortened, but aren't
  strictly necessary.)
-}
uniqueNamesIn :: [Vdef] -> [Tdef] -> ([Qual Var],[Qual Dcon],[Qual Tcon])
uniqueNamesIn topBinds allTdefs = res
  where vars  = vdefNamesQ topBinds
        dcons = tdefDcons allTdefs
        tcons = tdefTcons allTdefs
        uniqueVars  = vars \\ dupsUnqual vars
        uniqueDcons = dcons \\ dupsUnqual dcons
        uniqueTcons = tcons \\ dupsUnqual tcons
        res = (uniqueVars, uniqueDcons, uniqueTcons)

--Functions defined in Language.Core.CoreUtils that need to be redifined
--for working with Fhw.Core (RMT)
vdefNamesQ :: [Vdef] -> [Qual Var]
vdefNamesQ = map (\ (Vdef v _ _) -> v) 

tdefDcons :: [Tdef] -> [Qual Var]
tdefDcons = concatMap doOne
  where doOne (Data _ _ cds) = concatMap doCdef cds
        doCdef (Constr qdc _ _) = [qdc]

tdefTcons :: [Tdef] -> [Qual Var]
tdefTcons = concatMap doOne
  where doOne (Data qtc _ _) = [qtc]
--End of functions redefined from Language.Core.CoreUtils (RMT)

-- This takes each top-level name of the form Foo.Bar.blah and
-- renames it to FoozuBarzublah (note we *don't* make it exported!
-- This is so we know which names were in the original program and
-- which were dumped in from other modules, and thus can eliminate
-- dead code.)
zapNames :: M.Map (Qual Var) (Qual Var) -> ([Qual Var],[Qual Dcon],[Qual Tcon]) -> String -> Module -> Module 
zapNames subst _ modname = everywhereBut (mkQ False (\ (_::String) -> True))
                     (mkT (fixupName subst modname))

-- This used to be a huge function, but we simplified it (RMT)
fixupName :: M.Map (Qual Var) (Qual Var) -> String  -> Qual Var -> Qual Var
fixupName subst _ oldVar | Just newVar <- M.lookup oldVar subst = newVar
fixupName _ _ vr = vr

dupsUnqual :: [Qual Var] -> [Qual Var]
dupsUnqual = dupsBy (\ (_,v1) (_,v2) -> v1 == v2)

dupsBy :: (a -> a -> Bool) -> [a] -> [a]
dupsBy p xs = filter (\x -> length (filter (p x) xs) > 1) xs

-- We remove any declarations for tcons/dcons that are in
-- the domain of the substitution. Why? Because we assume that
-- the substitution maps anything in its domain onto something
-- with a different module name from the main one. If you want
-- to substitute Main-module-defined things for Main-module-defined
-- things, you can do that before merging modules.
finishTdefs :: [Qual Var] -> [Tdef] -> [Tdef]
finishTdefs namesToDrop = filter isOkay
  where isOkay (Data qtc _ cdefs) = 
               qtc `notElem` namesToDrop 
            && cdefsOkay cdefs
        cdefsOkay = all cdefOkay
        cdefOkay (Constr qdc _ _) = qdc `notElem` namesToDrop

finishVdefs :: [Qual Var] -> [Vdef] -> [Vdef]
finishVdefs namesToDrop = filterVdefs
  (\ (Vdef qv _ _) -> qv `notElem` namesToDrop)

filterVdefs :: (Vdef -> Bool) -> [Vdef] -> [Vdef]
filterVdefs ok = mapMaybe dropNames
  where dropNames vd | not (ok vd) = Nothing
        dropNames vd = Just vd

{- 
    This was originally copied from Language.Core.Dependencies.
    I have modified it to (hopefully) work with Fhw.Core
    modules. The majority of my changes consisted of changing instances
    of AnMname (a Language.Core.Core structure) to Mname (the equivalent
    Fhw.Core.Core structure). (RMT)
-}

type DepM a = StateT DepState IO a

data DepState = DS { mainPath :: FilePath,
                     packageRoots :: [FilePath],
                     moduleDeps :: M.Map (Either Mname FilePath) [Mname],
                     moduleCache ::  M.Map (Either Mname FilePath) (FilePath, Module)
                    }

-- Given a module, return all the modules it
-- depends on (directly or indirectly).
getDependencies :: [FilePath] -> [FilePath] -> String -> IO [(FilePath, Module)]
getDependencies pkgRoots ms modulename =
  evalStateT (do
    mapM_ (\ f -> do
              -- Every module depends on itself anyway,
              -- so we ignore the FilePath deps.
              ds <- go getDeps lefts (map Left) (map Right ms)
              return (f, ds)) ms
    t <- gets moduleDeps
    c <- gets moduleCache
    let modNames = nub $ concat (snd (unzip (leftsPairs (M.toList t))))
                       
    res1 <- liftM catMaybes $ mapM ((`findModuleP` modulename) . Left) modNames
    return $ res1 `unionByFirst` snd (unzip (M.toList c)))
   (DS (last ms) pkgRoots M.empty M.empty)
      where unionByFirst = unionBy (\ (f,_) (g,_) -> f == g)

go :: (Show a, Show b, Eq b, MonadIO m) =>
  (a -> m [b]) -> ([a] -> [b]) -> ([b] -> [a]) -> [a] -> m [b]
go getMore p fixUp start = do
  next <- concatMapM getMore start
  let more = nub $ p start ++ next
  if length start == length more
    then return more
    else go getMore p fixUp (fixUp more)

getDeps :: Either Mname FilePath -> DepM [Mname]
getDeps mn = do
          t <- gets moduleDeps
          case M.lookup mn t of
            Just ds -> return ds
            Nothing -> do
              maybeM <- findModule mn
              case maybeM of
                Nothing -> return []
                Just m@(Module mname _ _) ->
                  let ds = S.toList $ usedModules m in do
                  -- in case we were given a filepath, register the
                  -- module name too
                  modify (\s -> s{moduleDeps= M.insert mn ds (M.insert (Left mname) ds (moduleDeps s))})
                  return ds

findModule :: Either Mname FilePath -> DepM (Maybe Module)
findModule x = do
 maybeRes <- findModuleP x ""
 case maybeRes of
   Just (_,m) -> return $ Just m
   _          -> return Nothing


findModuleP :: Either Mname FilePath -> String -> DepM (Maybe (FilePath, Module))
findModuleP (Left mn) modname | mn == M (P "main", [], modname) = do
  f <- gets mainPath
  findModuleP (Right f) modname
findModuleP (Left mn) _ | mn == primMname  = return Nothing
  --Nothing means that this module is valid; it just doesn't have
  -- an implementation
findModuleP m _ = tryFindModule m

tryFindModule :: Either Mname FilePath -> DepM (Maybe (FilePath, Module))
tryFindModule k = do
  mCache <- gets moduleCache
  liftM Just $ case M.lookup k mCache of
    Just p -> return p
    Nothing -> findModuleNotCached k

findModuleNotCached :: Either Mname FilePath -> DepM (FilePath, Module)
findModuleNotCached (Left m@(M (P pkgName, encHier, encLeafName))) = do
      searchPath <- gets packageRoots
      let hier =  encHier
          leafName =  encLeafName
          possibleFiles = map (dirs hier leafName) searchPath
                     ++ map (dirs ( pkgName:hier) leafName) searchPath 
                     ++ map (dirs (takeWhile (/= '-') pkgName : hier) leafName) searchPath in do
      match <- liftIO $ findM doesFileExist possibleFiles
      case match of
         Just fp -> findModule' fp
         Nothing -> error ("findModule: failed to find dependency " ++ show m
                      ++ " tried " ++ show possibleFiles)
findModuleNotCached (Right fp) = findModule' fp

dirs :: [String] -> String -> FilePath -> FilePath
dirs modulePath leafName dir = dir </> 
                 foldr (</>) (addExtension leafName "hcr") modulePath

findModule' :: FilePath -> DepM (FilePath, Module)
findModule' fp = do
          stuff <- liftIO $ B.readFile fp
          let s = B.unpack stuff
          let parseRes = parse s 0
          let parsedMod@(Module mn _ _) = requireOK fp parseRes 
          cacheModule mn fp parsedMod
          forcePrint parsedMod -- we get a space leak if we don't do this
          return (fp, parsedMod)

forcePrint :: Module -> DepM ()
forcePrint a = liftIO $ do
  hdl <- openFile "/dev/null" WriteMode
  hPrint hdl a
  hClose hdl
 
--Modified to work with our parser's error system (RMT)
requireOK :: FilePath -> Either String Module -> Module
requireOK s (Left err) = throw (ParseError (err ++ " for file " ++ s))
requireOK _ (Right m)  = m

cacheModule :: Mname -> FilePath -> Module -> DepM ()
cacheModule mn fp m = modify (\ s -> s{moduleCache= M.insert (Left mn) (fp, m)
                                    (M.insert (Right fp) (fp, m)
                                    (moduleCache s))})

findM :: Monad m => (a -> m Bool) -> [a] -> m (Maybe a)
findM p = liftM listToMaybe . filterM p

concatMapM :: Monad m => (a -> m [b]) -> [a] -> m [b]
concatMapM f = liftM concat . mapM f

lefts :: [Either a b] -> [a]
lefts = foldr lefts' []
  where lefts' (Left a) xs = a:xs
        lefts' _        xs = xs

leftsPairs :: [(Either a b, c)] -> [(a, c)]
leftsPairs = foldr leftsPairs' []
  where leftsPairs' (Left x, y) xs = (x, y):xs
        leftsPairs' _             xs = xs

usedModules :: Module -> S.Set Mname
usedModules (Module _ tds vds) = usedModuleTds tds `S.union` usedModuleVds vds

usedModuleTds :: [Tdef] -> S.Set Mname
usedModuleTds = some usedModuleTd

usedModuleTd :: Tdef -> S.Set Mname
usedModuleTd (Data _ _ cds) = S.unions
  (map (\ (Constr _ _ ts) -> some usedModuleTy ts) cds)

usedModuleVds :: [Vdef] -> S.Set Mname
usedModuleVds = some usedModuleVdef

usedModuleVdef :: Vdef -> S.Set Mname
usedModuleVdef (Vdef _ t e) = usedModuleTy t `S.union` usedModuleExp e

usedModuleExp :: Exp -> S.Set Mname
usedModuleExp (Var v _) | Just m' <- getModule v = S.singleton m'
usedModuleExp (Dcon d _) | Just m' <- getModule d = S.singleton m'
usedModuleExp (Var _ _) = S.empty
usedModuleExp (Dcon _ _) = S.empty
usedModuleExp (Lit _) = S.empty
usedModuleExp (App a b) = someExps [a,b]
usedModuleExp (Appt e t) = usedModuleExp e `S.union` usedModuleTy t
usedModuleExp (Lam _ e) = usedModuleExp e
usedModuleExp (Let vd e) = foldl1 S.union vds `S.union` usedModuleExp e
                        where vds = map usedModuleVdef vd 
usedModuleExp (Case e _ t alts) = usedModuleExp e `S.union`
  usedModuleTy t `S.union` usedModuleAlts alts

usedModuleTy :: Ty -> S.Set Mname
usedModuleTy (Tvar _) = S.empty
usedModuleTy (Tcon t) | Just m' <- getModule t = S.singleton m'
usedModuleTy (Tcon _) = S.empty
usedModuleTy (Tapp t u) = usedModuleTy t `S.union` usedModuleTy u
usedModuleTy (Tforall _ t) = usedModuleTy t
usedModuleTy (TransCoercion t u) = usedModuleTy t `S.union` usedModuleTy u
usedModuleTy (SymCoercion t) = usedModuleTy t
usedModuleTy (UnsafeCoercion t u) = usedModuleTy t `S.union` usedModuleTy u
usedModuleTy (InstCoercion t u) = usedModuleTy t `S.union` usedModuleTy u
usedModuleTy (LeftCoercion t) = usedModuleTy t
usedModuleTy (RightCoercion t) = usedModuleTy t
usedModuleTy UndefinedTy = S.empty

usedModuleAlts :: [Alt] -> S.Set Mname
usedModuleAlts = some go'
  where go' (Acon dc _ _ e) = case getModule dc of
           Just m' -> S.insert m' (usedModuleExp e)
           _       -> usedModuleExp e
        go' (Alit _ e) = usedModuleExp e
        go' (Adefault e) = usedModuleExp e

some :: (a -> S.Set Mname) -> [a] -> S.Set Mname 
some f = S.unions . map f

someExps :: [Exp] -> S.Set Mname
someExps = some usedModuleExp

--All code below this comment was added by Richard. 

--This function is defined in Language.Core.Core and used by some
--functions copied from Language.Core.Dependencies.
--I had to add the Maybe type constructor since Core's Mname is defined as Maybe AmMname.
--We define Mname in Fhw.Core.Core with the same definition for AmMname.
getModule :: Qual t -> Maybe Mname
getModule = fst

--Stolen from Fhw.Main
data FhwError = ParseError String
                deriving (Show, Typeable)
                         
instance Exception FhwError
