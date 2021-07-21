{- |

Module : Fhw.Pass.Dataflow.Preprocess
Description : Remove constructs that violate translation invariants.

This pass translates Haskell constructs that would break any translation
assumptions with equivalent Floh constructs. These changes include:

1. Removing case expressions with a single, default alternative.

These are of the form

> case val of
>  _ -> ...

Here we remove the case expression and make sure "val" is used in the following
expression.

2. Ensuring that all other case expressions explicitly match on every 
   data constructor corresponding to the scrutinee. This is violated if some
   constructors are matched followed by a default alternative to catch the
   other cases. We use the default alternative's expression to create new
   alternatives matching on all the other previously unmatched constructors,
   e.g.,

>data T = C1 | C2 Int | C3
>
>case x of
>  C1 -> ...
>  _  -> e

   is transformed into

>data T = C1 | C2 | C3
>
>case x of
>  C1   -> ...
>  C2 _ -> e
>  C3   -> e

   All fields of the added constructors can be ignored with wildcards, since
   they weren't being used by the original program anyway.


2. If the vbind introduced by a Case is used in any alternatives,
   we replace this new name with the name of the Case's scrutinee.
   For example, if the Core file has:

> %case Ty val %of (newName::Ty')
>   {A -> e1;
>    B -> e2;}

Here, we would replace all occurrences of 'newName' in e1 and e2
with the 'val' variable.


-}

module Fhw.Pass.Dataflow.Preprocess ( preprocess ) where

import Fhw.Core.Core
import Fhw.Pass.RemoveRecursion.Utils
import Fhw.Pass.UniquifyNames.UniquifyNames
import Data.List (find)
import Data.Maybe (fromMaybe)

import Debug.Trace

preprocess :: [Vdef] -> [Tdef] -> [Vdef]
preprocess vdefs tdefs = let newVdefs = map unboxedCase vdefs
                             fauxModule = Module (M (P "",[],"")) [] newVdefs
                             getVdefs (Module _ _ v) = v
                             finalVdefs = getVdefs $ uniquifyNames fauxModule
                         in trace (show finalVdefs) finalVdefs
  where
    tdefMap = foldr mkTdefMap [] tdefs
      where
        mkTdefMap td@(Data _ _ constrs) m = (tdefToTy td, constrs) : m 
    unboxedCase :: Vdef -> Vdef
    unboxedCase (Vdef m ty ex) = Vdef m ty (go ex)
      where
        go (Lam bs e) = Lam bs (go e)
        go (Let vds e) = let newDefs = map unboxedCase vds
                         in Let newDefs $ go e
        --Remove cases yielding one default alternative
        go (Case (Var (_,scrut) _) (name,_) _ [Adefault e]) 
          = replaceVar name scrut $ go e
        go (Case scrut vb t alts) =
          case find isDefault alts of
            --Replace a default alternative with alternatives for all
            --the other dcons that weren't being matched. Give each of
            --these new alternatives the same expression as the
            --default.
            Just (Adefault e) -> 
              let err = error $ "Can't find definition for type " ++ show (snd vb)
                  allDcons = fromMaybe err $  lookup (snd vb) tdefMap
                  newAlts = map (matchExtra e) allDcons
              in Case newScrut vb t (map goAlt newAlts)
            _ -> let newAlts = map goAlt alts
                 in Case newScrut vb t newAlts
          where
            name      = fst vb
            substName = replaceVar name newSc
            newScrut@(Var (_,newSc) _) = go scrut
            goAlt (Alit l e)         = Alit l (substName $ go e)
            goAlt (Adefault e)       = Adefault (substName $ go e)
            goAlt (Acon c tbs vbs e) = Acon c tbs vbs (substName $ go e)

            getAltCon (Acon c _ _ _) = c
            getAltCon _ = (Nothing, "")

            isDefault (Adefault _) = True
            isDefault _ = False
            --Add a new alternative for each constructor that isn't
            --being matched, ignore all its fields (since this is
            --replacing a default pattern) and assign it the default expression
            matchExtra e (Constr qdc _ tys) = 
              case find ((qdc==) . getAltCon) alts of
                Just alt -> alt
                Nothing -> Acon qdc [] (map (\t' -> ("_",t')) tys) e
                                               
        go e@(Var _ _) = e
        go e@(Dcon _ _) = e
        go e@(Lit _) = e
        go e = let (call,args,tyArgs) = collectArgs e
               in mkFuncApp (go call) tyArgs (map go args)
