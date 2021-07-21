{- |
Module : Fhw.Pass.RemoveRecursion.RemoveRecursion
Description : Transform the non-tail recursive functions into tail recursive
functions in Haskell external core.  
Note that this pass depends on the Monomorphise and AnnoteTypes pass.

-}

module Fhw.Pass.RemoveRecursion.RemoveRecursion where

import Data.List

import Fhw.Core.Core
import Fhw.Pass.RemoveRecursion.CombineMutual
import Fhw.Pass.RemoveRecursion.Linearize
import Fhw.Pass.RemoveRecursion.Restruct
import Fhw.Pass.RemoveRecursion.Utils
import Fhw.Pass.RemoveRecursion.Inline
--import Debug.Trace 

-- | Current version of the recursion removal pass first removes the non-tail
-- recursiveness within each top-level vdefs. And then determines the
-- dependencies among top-level vdefs and removes the non-tail recursiveness of
-- them.
removeRecursion :: Module -> Module
removeRecursion = rmrecNested . rmrecTop

-- | Remove the non-tail recursive vdefs of the top-level namescope.
rmrecTop :: Module -> Module
rmrecTop (Module mname tdefs vdefs) = Module mname (nub $ tdefs ++ ts) vs
  where
  (ts, vs) = rmrec tdefs vdefs

-- | Remove the non-tail recursive vdefs that are not defined in the top-level
-- namescope, i.e., nested within each vdefs.
rmrecNested :: Module -> Module
rmrecNested (Module mn tdefs vdefs) = Module mn (nub $ tdefs ++ concat tss) vs
  where
  (tss, vs) = unzip $ map mapAccumVdef vdefs

  mapAccumVdef :: Vdef -> ([Tdef], Vdef)
  mapAccumVdef (Vdef (vmn, vn) ty e) = (accum, Vdef (vmn, vn) ty e')
    where
    (accum, e') = mapAccumExpr fn [] e

    fn :: [Tdef] -> Exp -> ([Tdef], Exp)
    fn a expr = case expr of
      Let vdefs1 expr1 -> (a ++ ts1, Let vs1 expr1)
        where
        (ts1, vs1) = rmrec tdefs vdefs1 
      _ -> (a, expr)


-- | Given a list of Vdefs, convert all the recursiveness into tail
-- recursiveness. Return the combined result.
rmrec :: [Tdef] -> [Vdef] -> ([Tdef], [Vdef])
rmrec tdefs vdefs = (nub (t1++t3) , nub (nf_vdefs ++ v5))
  where
  -- Only the top level FUNCTION vdefs will be processed.
  (f_vdefs, nf_vdefs) = partition (\(Vdef _ ty _) -> isFunctionTy ty) vdefs
  (t1, v1) = combineMutualVdefs f_vdefs
  v2 = linearizeVdefs v1
  v3 = inlineLets v2
  (t3, v4) = restructVdefs v3 tdefs
  v5 = inlineLets v4

