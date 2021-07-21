
module Fhw.Pass.PartitionMem.Utils where

import Fhw.Core.Core
import Data.List (isPrefixOf)

-- | Find any data constructor expression in tail-position that has 
--   a field whose type is in the given list.
getAllDcon :: [Ty] -> Exp -> [Exp]
getAllDcon tys (Lam _ e)         = getAllDcon tys e
getAllDcon tys (Case _ _ _ alts) = concatMap (altHelp (getAllDcon tys)) alts
getAllDcon tys (Let _ e)         = getAllDcon tys e
getAllDcon tys e                 = 
  let (call, args, _) = collectArgs e
  in case call of
   Dcon _ _ -> [e | any ((`elem` tys) . exprType) args]
   _ -> []

altHelp :: (Exp -> a) -> Alt -> a
altHelp f (Adefault e)   = f e
altHelp f (Acon _ _ _ e) = f e
altHelp f (Alit _ e)     = f e

isWrite :: Var -> Bool
isWrite = ("write" `isPrefixOf`)

isPtrTy :: Ty -> Bool
isPtrTy (Tcon (_,p)) = "Pointer" `isPrefixOf` p
isPtrTy _ = False

notMemFunc :: Var -> Bool 
notMemFunc n = not ("read" `isPrefixOf` n || "write" `isPrefixOf` n)

getVarName :: Exp -> Var
getVarName (Var (_, n) _) = n
getVarName e = error $ "Expecting " ++ show e ++ " to be a variable"
