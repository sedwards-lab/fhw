{- |
Module : Fhw.Pass.Parallelize.LiftMemops
Description : Lift independent memory accesses into the same scope to enable
              memory-level parallelism at the dataflow level.

Memory accesses that appear in the same scope have a much higher chance of being
parallelized in our dataflow networks. For example, if a, b, c are each pointers
of different types, then

case x of
  X a b c -> let a' = read a in case a' of
    A' ... -> let b' = read b in case b' of
     B' ... -> let c' = read c in case c' of
       C' ... -> ...

will incur three serialized memory accesses (since the result of each is
needed before the subsequent case expression). However, we have access
to the different pointers in the same scope. So
we can "lift" the second 2 reads into the same scope as the first:


case x of
  X a b c -> let a' = read a 
                 b' = read b
                 c' = read c 
             in case a' of
        A' ... -> case b' of
         B' ... -> case c' of
           C' ... -> ...

If the three pointers access disjoint memories, these three operations could
be executed in parallel.

This pass searches each function for independent, potentially speculative read
operations (i.e. accesses a and b might not both occur on every execution path in the 
function, but a is not a field in the object pointed to by b and vice versa),
and lifts them all into the same scope to enable more memory-level parallelism.
Note that this will remove some read/write sites, so we need to update our 
compiler-global Analysis structure too.

Currently, we only lift reads (we ignore writes).

ASSUMPTIONS:
- The tagmemops pass has occurred.
- All non-variable sub-expressions are lifted into let definitions.

-}

module Fhw.Pass.Parallelize.LiftMemops where

import Fhw.Core.Core
import Fhw.Pass.RemoveRecursion.Utils (replaceVar)
import Data.List
import Data.Maybe (fromMaybe, catMaybes, isJust, mapMaybe)
import Data.Foldable (foldrM)
import Control.Monad.State
import Control.Applicative ((<$>))
--import Debug.Trace

type EnvState = State Env
data Env = Env { compilerInfo :: Analysis } deriving (Show, Eq)

liftMemops :: Module -> Analysis -> (Module, Analysis)
liftMemops (Module name tdefs vdefs) a = (Module name tdefs vdefs', compilerInfo finalA)
  where
    (vdefs', finalA) = runState (mapM (\(Vdef n t e) -> Vdef n t <$> go e) vdefs) 
                                Env { compilerInfo = a }

--Traverse the expression, stopping at each sub-expression that can 
--introduce new pointer bindings. At those stops, check if any 
--path of control from that point onwards contains a read to that
--pointer. If so, move the first read found to this location in a new
--let, remove all later reads, and rename variables appropriately.
go :: Exp -> EnvState Exp
go ex = case ex of
  Lam binds e -> Lam binds <$>
                 let ptrVars = mapMaybe getPointers binds
                 in mkParallel ptrVars e
  Let vdefs e -> Let vdefs <$> go e
  Case scrut t vb alts -> Case scrut t vb <$> mapM goAlt alts 
  _ -> return ex
  where
    --The driver function for the pass (for a given set of pointer varaibles
    --at an expression)
    mkParallel ptrVars e = 
      if null ptrVars
      then go e
      else let maybeVdefs = filter (not . null) $ 
                            map (fromMaybe [] . allPaths e) ptrVars
           in do newEx <- foldrM liftReads e maybeVdefs
                 go (if length maybeVdefs <= 1 then e else newEx)

    --Perform the analysis on any pointer fields introduced by this alternative
    goAlt (Acon dc tbs vbs ex') = Acon dc tbs vbs <$> 
                                  let ptrVars = mapMaybe (getPointers . Vb) vbs
                                  in mkParallel ptrVars ex'
    goAlt (Adefault ex') = Adefault <$> go ex'
    goAlt (Alit lit ex') = Alit lit <$> go ex'

    --Given a pointer variable and an expression, if the variable is read
    --in any path of control in this expression then return all the  
    --Let-definitions binding the result of each read to a variable.
    allPaths :: Exp -> Var -> Maybe [Vdef]
    allPaths ex' var = case ex' of
     Case _ _ _ alts -> let results = map intoAlts alts
                        in if any isJust results 
                            then Just $ concat $ catMaybes results
                            else Nothing
     Let vds e -> let allReads = mapMaybe findReads vds in
                  if null allReads then allPaths e var else Just allReads
     _ -> Nothing
     where
       findReads vd@(Vdef _ _ e') = case e' of
         App (Var (_,n1) _) (Var (_, n2) t) -> 
          if "read" `isPrefixOf` n1 && isPtrTy t && n2 == var then Just vd else Nothing
         _ -> Nothing --TODO: Check all other kinds of expressions
         
       intoAlts (Acon _ _ _ e') = allPaths e' var
       intoAlts (Alit _ e') = allPaths e' var
       intoAlts (Adefault e') = allPaths e' var

    --Given a list of local definitions defs that name the result of a read and
    --an expression ex', put the first definition in defs in a new let in front
    --of ex', delete all occurrences of defs given in ex', and rename all uses
    --of these deleted let-bindings with the single binding that has been
    --inserted.
    liftReads :: [Vdef] -> Exp -> EnvState Exp
    liftReads defs ex' = if null defs then return ex' 
                         else do analysis <- gets compilerInfo
                                 let newAn = analysis { readSites = newSites analysis }
                                 modify (\s -> s { compilerInfo = newAn })
                                 return $ Let [defUsed] $ mapExpr update ex'
      where 
        defunctReads = map vdefName rest
        --The definition that we'll use from our list
        (defUsed : rest) = defs
        --Modify the rest of the expression
        update (Let vdefs e) = 
          let (toRemove,toKeep) = partition (`elem` defs) vdefs
              bindingsToMod = map vdefName $ filter (/=defUsed) toRemove
              newExp = foldr (`replaceVar` vdefName defUsed) e bindingsToMod
          in if null toKeep then newExp else Let toKeep newExp
        update e = e

        newSites = filter ((`notElem` defunctReads) . fst) . readSites

    getPointers (Vb (v, t)) | isPtrTy t = Just v 
                            | otherwise = Nothing 
    getPointers _ = Nothing

isPtrTy :: Ty -> Bool
isPtrTy (Tcon (_,p)) = "Pointer" `isPrefixOf` p
isPtrTy _ = False
