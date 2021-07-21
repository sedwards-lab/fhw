{- |
Module : Fhw.Pass.RemoveRecursion.Inline
Description : This module inlines all the generated let definitions to simplify
              future passes.
-}
module Fhw.Pass.RemoveRecursion.Inline where

import Fhw.Core.Core

import Control.Monad.Reader
import Data.Maybe
import Data.List (partition)
import Control.Applicative ((<$>))

-- | Environment to hold local variable definitions
type Env = Reader SymTab
type SymTab = [(Var,Exp)]

inlineLets :: [Vdef] -> [Vdef]
inlineLets = map go
  where
    go (Vdef name ty ex) = Vdef name ty $ runReader (transform ex) []

-- | Perform transformation on all expressions
transform :: Exp -> Reader SymTab Exp
transform (App ex1 ex2)      = liftM2 App (transform ex1) (transform ex2)
transform (Appt ex ty)       = fmap (flip Appt ty) (transform ex)
transform (Lam bs ex)        = fmap (Lam bs) (transform ex) 
transform (Case ex v t alts) = do newAlts <- mapM helper alts
                                  newEx <- transform ex 
                                  return $ Case newEx v t newAlts
  where
    helper (Acon d tb vb subex) = (Acon d tb vb) <$> transform subex 
    helper (Alit l subex)       = (Alit l) <$> transform subex 
    helper (Adefault subex)     = Adefault <$> transform subex 
transform v@(Var (_,name) _) = do entry <- asks (lookup name)
                                  return $ fromMaybe v entry
transform (Let vdefs ex)     = 
  let (varDefs,restDefs) = partition isSimpleDef vdefs
      newExReader = local (insertSub varDefs) (transform ex)
  in if null restDefs 
      then newExReader
      else liftM2 Let (mapM transformVdefs restDefs) newExReader
  where
    isSimpleDef (Vdef _ _ (Var _ _)) = True
    isSimpleDef (Vdef _ _ (Lit _)) = True
    isSimpleDef _ = False
    transformVdefs (Vdef name ty e) = (Vdef name ty) <$> transform e
transform ex = return ex


-- | Populate symbol table with local definitions
insertSub :: [Vdef] -> SymTab -> SymTab
insertSub [] table = table
insertSub (Vdef (_,var) _ ex:rest) table
  | isNothing (lookup var table) = let newEx = runReader (transform ex) table
                                   in insertSub rest ((var,newEx) : table)
  | otherwise = error "Non function variable already in table" 
