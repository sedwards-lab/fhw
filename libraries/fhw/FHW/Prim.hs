{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE MagicHash #-}
module FHW.Prim(
  Stream((:>)),
  repeat,
  map,
  zipWith,
  zipWith3,
  takeStream,
  memory#,
  countAccesses
) where

import Prelude( Num(..), Bool(..), zip, Int, Integral )

import Data.Array ( array, (//), (!) )

import GHC.Word ( Word32(W32#) )
import GHC.Prim ( Word# )

--import Data.Word ( Word16 )

infixr 5 :>
-- | An infinite stream.
-- | We use :> because infix data constructors must start with a colon.
data Stream a =  a :> Stream a

-- | Produce a constant-valued stream
{-# NOINLINE repeat #-}
repeat :: a -> Stream a
repeat a = s where s = a :> s

-- | Apply a function to an input stream to produce an output stream
{-# NOINLINE map #-}
map :: (a -> b) -> Stream a -> Stream b
map f (h :> t) = f h :> map f t

-- | Combine two streams pointwise with a two-input function
{-# NOINLINE zipWith #-}
zipWith :: (a -> b -> c) -> Stream a -> Stream b -> Stream c
zipWith f (a :> as) (b :> bs) = f a b :> zipWith f as bs

-- | Combine three streams pointwise with a three-input function
{-# NOINLINE zipWith3 #-}
zipWith3 :: (a -> b -> c -> d) -> Stream a -> Stream b -> Stream c -> Stream d
zipWith3 f (a :> as) (b :> bs) (c :> cs) = f a b c :> zipWith3 f as bs cs

-- | Inspect the contents of a stream (up to a point)
{-# NOINLINE takeStream #-}
takeStream :: Int -> Stream a -> [a]
takeStream 0 _ = []
takeStream n (hd :> tl) = hd : (takeStream (n-1) tl)

instance (Num a) => Num (Stream a) where
    (+) = zipWith (+)
    (-) = zipWith (-)
    (*) = zipWith (*)
    negate = map negate -- unary minus
    abs = map abs
    signum = map signum
    fromInteger i = repeat (fromInteger i)

{-# NOINLINE memory# #-}

{- |
The model for an individual memory: a input stream of operations (reads or
writes) producing a stream of output words after a one-cycle delay.

Following Altera's suggestion, the old value is read during a write.
-}
memory# ::    Word#                    -- ^ Size in words
           -> word                     -- ^ Initial contents
           -> Stream Bool              -- ^ Write commands
           -> Stream Word32            -- ^ Addresses
           -> Stream word              -- ^ Write data
           -> Stream word              -- ^ Read data
memory# size init write addr wdata = init :> zipWith readOp memoryState addr
    where
      updatedMemory = zipWith writeOp memoryState (zipWith3 (\a b c -> (a,b,c)) write addr wdata)
      memoryState = initialMem :> updatedMemory
                 
      size' :: Word32
      size' = W32# size     -- Get away from the primitive type
      initialMem = array (0, size' - 1) [(a,init) | a <- [0..size'-1]]

      writeOp arr (True, a, d) = arr // [(a, d)]
      writeOp arr _            = arr

      readOp arr ad = arr ! ad


-- | Count total cycles, number of heap reads, and number of heap writes
--    using Richard's encoding scheme.
countAccesses :: (Int,Int,(Int,Int,Int)) -> Stream Int -> (Int,Int,(Int,Int,Int))
countAccesses tup (0 :> _) = tup
countAccesses (total,reads,(wBase,wRec,wRecP)) (1 :> rest) = countAccesses (total + 1,reads+1,(wBase,wRec,wRecP)) rest
countAccesses (total,reads,(wBase,wRec,wRecP)) (2 :> rest) = countAccesses (total + 1,reads,(wBase+1,wRec,wRecP)) rest
countAccesses (total,reads,(wBase,wRec,wRecP)) (3 :> rest) = countAccesses (total + 1,reads,(wBase,wRec+1,wRecP)) rest
countAccesses (total,reads,(wBase,wRec,wRecP)) (4 :> rest) = countAccesses (total + 1,reads,(wBase,wRec,wRecP+1)) rest
countAccesses (total,reads,(wBase,wRec,wRecP)) (_ :> rest) = countAccesses (total + 1,reads,(wBase,wRec,wRecP)) rest
