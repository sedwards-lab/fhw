{-# LANGUAGE Trustworthy #-}
{-# LANGUAGE CPP, NoImplicitPrelude, MagicHash #-}

-- Placeholder for FHW

module Control.Exception.Base (
  absentError
) where

import GHC.Base

-- In certain circumstances (e.g., when integer division is used), GHC
-- automatically generates calls to absentError, hence our need for it
absentError :: Addr# -> a
absentError s = error ("Oops!  Entered absent arg " ++ unpackCStringUtf8# s)

