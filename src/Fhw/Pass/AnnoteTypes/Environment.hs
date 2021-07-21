{- |
Module: Simple environment for adding type annotations
Description: List-based symbol table for mapping variable names to types
-}

module Fhw.Pass.AnnoteTypes.Environment (
         Env
       , empty
       , lookup
       , insert
       , showEnv
       ) where

import Prelude hiding (lookup)
import qualified Prelude
import Fhw.Core.Core
import Data.List (intercalate)

type Env a = [(a, Ty)]

-- Empty variable environment
empty :: Env a
empty = []

-- | Look for the variable in the environment; return Just t if found, Nothing
--   otherwise 
lookup :: Eq a => a -> Env a -> Maybe Ty
lookup = Prelude.lookup

-- | Add a new variable/type to the environment, masking any existing one
insert :: a -> Ty -> Env a -> Env a
insert v t e = (v,t) : e

showEnv :: Show a => Env a -> String
showEnv env = "[" ++ intercalate ",\n" (map (\(a,t) -> show a ++ "::" ++ show t) env) ++ "]"
