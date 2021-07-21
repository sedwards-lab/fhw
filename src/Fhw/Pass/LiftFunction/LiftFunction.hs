{- |
Module : Fhw.Pass.LiftFunctions.LiftFunctions
Description : Lift let-defined function definitions into the global environment

Lift all function definitions defined in 'let' expressions
into the global environmen. For example:

> f x = let y = 3
            g a = if a < y
                   then a + y
                   else g (a-1)
        in g x

is transformed into

> f x = let y = 3
>       in g x y
> g a y = if a < y
>          then a + y
>          else g (a-1) y

This is done to simplify later passes.

-}

module Fhw.Pass.LiftFunction.LiftFunction ( liftFunction ) where

import Fhw.Core.Core
import Fhw.Pass.UniquifyNames.UniquifyNames
import Data.List
import Data.Maybe
import qualified Data.Map.Strict as Map
import Control.Monad.State.Lazy
import Control.Applicative ((<$>))


--import Debug.Trace

data Env = Env { funcMap :: FuncMap
               , globals :: [Vdef]
               , origDefs :: [Vdef]
               } deriving Show

-- | Mapping names of local function definitions to their
-- updated type signatures and free variables
type FuncMap = Map.Map Var (Ty,[(Ty,Var)])

liftFunction :: Module -> Module
liftFunction m = Module mname tdefs vdefs'
    where
      Module mname tdefs vdefs = uniquifyNames m
      vdefs' = globals finalState ++ moddedVdefs
      (moddedVdefs,finalState) = runState (mapM liftFuncs vdefs) initState 
      initState = Env { funcMap = Map.empty
                      , globals = [] 
                      , origDefs = vdefs}

      liftFuncs :: Vdef -> State Env Vdef
      liftFuncs (Vdef mn ty ex) = fmap (Vdef mn ty) (walkExp ex)


-- | Remove any locally defined function defintions, store them in
-- our Environment, and add any free variable arguments to references
-- to those definitions.
walkExp :: Exp -> State Env Exp
walkExp (Let vds e) = 
  do getFuncInfo vds
     newVdefs <- mapM updateVdefs vds 
     newExpr  <- walkExp e
     rMap <- gets funcMap
     let (funcs,nonFuncs) = partition (flip Map.member rMap . vdefName) newVdefs
     modify (\s -> s { globals = funcs ++ globals s})
     return $ if null nonFuncs
                then newExpr
                else Let nonFuncs newExpr
  where
    --Collect free variables for each definition in this Let. Need to
    --do this in a fixed-point manner since the definitions can refer to
    --each other, and thus need to know about each others' free variables.
    getFuncInfo vs = do rMap <- gets funcMap
                        mapM_ (collectFuncInfo vds) vds 
                        rMap' <- gets funcMap
                        if rMap == rMap'
                          then return ()
                          else getFuncInfo vs
walkExp (Lam bs e) = fmap (Lam bs) (walkExp e)
walkExp (Case scrut vb ty alts) =
  do newAlts <- mapM walkExpalt alts
     newScrut <- walkExp scrut
     return (Case newScrut vb ty newAlts)
  where
    walkExpalt (Acon c tbs vbs e) = fmap (Acon c tbs vbs) (walkExp e)
    walkExpalt (Alit l e)         = fmap (Alit l) (walkExp e)
    walkExpalt (Adefault e)       = fmap Adefault (walkExp e)
walkExp e@(Dcon _ _) = return e 
walkExp e@(Lit _)    = return e 
walkExp e = let (call,args,tyArgs) = collectArgs e
            in do newArgs <- mapM walkExp args
                  case call of
                    Var (mname,name) _ -> do 
                      entry <- gets (Map.lookup name . funcMap)
                      if isNothing entry
                        then return $ mkFuncApp call tyArgs newArgs
                        else let (newTy,fvs) = fromJust entry
                                 finalArgs = map toExp fvs ++ newArgs
                                 newVar = Var (mname,name) newTy
                             in return $ mkFuncApp newVar tyArgs finalArgs
                    _ -> do newCall <- walkExp call
                            return $ mkFuncApp newCall tyArgs newArgs
  where
    toExp (t,v) = Var (Nothing,v) t

-- | Add free variable arguments to and update type signature of 
-- a function definition
updateVdefs :: Vdef -> State Env Vdef
updateVdefs (Vdef (mname,name) ty ex) = do 
  entry <- gets (Map.lookup name . funcMap)
  if isNothing entry
    then Vdef (mname,name) ty <$> walkExp ex
    else let (newTy,freeVars) = fromJust entry
             newEx = addArgs (map toBind freeVars) ex
         in Vdef (mname,name) newTy <$> walkExp newEx
  where
    addArgs fvs (Lam bs e) = Lam (fvs ++ bs) e
    addArgs fvs e = Lam fvs e

    toBind (t,var) = Vb (var,t)

-- | If this local definition is a function, capture its free variables and
-- generate a new type signature for the definition taking these variables
-- into account.
collectFuncInfo :: [Vdef] -> Vdef -> State Env ()
collectFuncInfo localDefs thisDef@(Vdef (_,name) ty e) 
  | not (isFunctionTy ty) = return ()
  | otherwise = do vds <- gets origDefs
                   --this definition's free variables
                   let freeVars = filter ((/= name) .  snd) $ captureFrees e
                   --any free variables that will be introduced to this definition
                   --later in the pass
                   otherFrees <- liftM (nub . concat) $ mapM getNewFrees freeVars
                   let globalFuncNames = otherFuncDefNames ++ map vdefName vds
                       nonGlobals = filter ((`notElem` globalFuncNames) . snd) $ otherFrees
                       newTy      = tArrows $ map fst nonGlobals ++ argTypes ++ [retTy]
                       addToMap s = s { funcMap = Map.insert name (newTy,nonGlobals) (funcMap s),
                                        origDefs = thisDef : origDefs s }
                   modify addToMap
  where
    otherFuncDefNames = map vdefName $ filter (isFunctionTy . vdefTy) localDefs
    (retTy,argTypes) = collectArgTypes ty
    --Get any free variables associated with other free variables (i.e. the free
    --variables of local functions that will be lifted).
    getNewFrees fv@(_,freeVar) = do entry <- gets (Map.lookup freeVar . funcMap)
                                    if isNothing entry
                                      then return [fv]
                                      else return (fv : snd (fromJust entry))

-- | Capture all free variables, including function names.
captureFrees :: Exp -> [(Ty, Var)]
captureFrees expr = case expr of
  (Var mn ty)   -> if isPrim mn then [] else [(ty, snd mn)]
  (Appt e _)    -> captureFrees e
  (App e1 e2)   -> nub $ captureFrees e1 ++ captureFrees e2
  (Lam binds e) -> nub $ captureFrees e \\ binds_binded
    where
    binds_binded = nub $ mapMaybe f binds
    f bind = case bind of
      Vb (v, t) -> Just (t, v)
      Tb _      -> Nothing
  (Let vdefs cont) -> nub $ nub (binds_free ++ cont_free) \\ let_binded
    where
    binds_free = (nub . concat . snd . unzip) mapped
    let_binded = (nub . fst . unzip) mapped
    cont_free = captureFrees cont
    mapped = map f vdefs
    f (Vdef (_, v) t e) = ((t, v), captureFrees e)
  (Case scrut (var, ty) _ alts) ->
      nub $ captureFrees scrut ++ (branches_free \\ [(ty,var)])
    where
    branches_free = nub $ concatMap f alts
    f alt = case alt of
      Alit _ e       -> captureFrees e
      Adefault e     -> captureFrees e
      Acon _ _ vbs e -> captureFrees e \\ vbs_binded
        where
        vbs_binded = nub $ map (\(v, t) -> (t, v)) vbs
  _ -> []
