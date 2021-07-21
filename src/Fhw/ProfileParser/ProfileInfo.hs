{-
Module : Fhw.ProfileParser.ProfileInfo
Description : The types capturing profile information parsed by the compiler.
-}
module Fhw.ProfileParser.ProfileInfo where

-- | Profiling information for compiler analysis; 
--   captured in JSON-style form.
data ProfileInfo = ProfileInfo [(String, MetaVal)]
  deriving Show

data MetaVal = MetaInt Integer
             | MetaInfo ProfileInfo
  deriving Show

