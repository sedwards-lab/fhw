{-# LANGUAGE DeriveDataTypeable #-}
module Dfc.Semantics.Errors where

import Control.Exception    
import Data.Data

data DfcError =
      ParseError String
    | SemantError String deriving (Data, Typeable)

instance Show DfcError where
   show (ParseError s) = s
   show (SemantError s) = s

instance Exception DfcError
