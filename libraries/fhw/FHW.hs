{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE BangPatterns #-}
module FHW(
  module FHW.Prim,
  scanl,
  zip,
  zip3,
  fst,
  snd,
  ite,
  MemOp( MemRead, MemWrite ),
  memory,
  HeapIn(..),HeapOut(..),
  heap
) where

import Prelude( Num(..), Bool(..), Int )
import FHW.Prim

import GHC.Word ( Word32(W32#) )
import GHC.Prim ( Word# )

-- | Take a next-state function, an initial state, and an input stream
-- | and produce an output stream
{-# INLINE scanl #-}
scanl :: (b -> a -> b) -> b -> Stream a -> Stream b
--scanl f state (input :> rest) = output :> scanl f output rest
--    where output = f state input
scanl f init_state input_stream = next_state
    where
      next_state = zipWith f present_state input_stream
      present_state = init_state :> next_state
      
{-# INLINE zip #-}
-- | Combine two streams into a stream of pairs
zip :: Stream a -> Stream b -> Stream (a,b)
zip = zipWith (\a b -> (a,b))

{-# INLINE zip3 #-}
-- | Combine two streams into a stream of pairs
zip3 :: Stream a -> Stream b -> Stream c -> Stream (a,b,c)
zip3 = zipWith3 (\a b c-> (a,b,c))

{-# INLINE fst #-}
-- | Stream of the first of a stream of tuple
fst :: Stream (a,b) -> Stream a
fst = map (\(x,_) -> x)

{-# INLINE snd #-}
-- | Stream of the second of a stream of tuple
snd :: Stream (a,b) -> Stream b
snd = map (\(_,y) -> y)

{-# INLINE ite #-}
-- | Pointwise
ite :: Stream Bool -> Stream a -> Stream a -> Stream a
ite = zipWith3 (\a b c -> if a then b else c)

-- | Memory operation: Read or write
data MemOp addr word = MemRead addr
                     | MemWrite addr word

{-# INLINE memory #-}
memory :: Word32 ->                     -- ^ Size in words
          word ->                       -- ^ Initial contents
          Stream (MemOp Word32 word) -> -- ^ Stream of operations
          Stream word                   -- ^ Stream of read/written data words

memory size init ops =
    memory# size' init (map write ops) (map addr ops) (map wdata ops)
        where
          size' :: Word#
          (!(W32# size')) = size -- Pass the primitive to the function
          write (MemWrite _ _) = True
          write _ = False

          addr (MemRead a) = a
          addr (MemWrite a _ ) = a

          wdata (MemWrite _ d) = d
          wdata _ = init -- TODO: this is a don't-care, can we feed undefined?

-- | Heap operations: Read an address or Write a datatype
data HeapIn a = Read Word32  
              | Write a
              | InNOP 

-- | Heap output: Datatype instance read or address we last wrote to
data HeapOut a = ReadOut a 
               | WriteOut Word32 


{-# INLINE heap #-}
--  Need to add delays on commands and heapPointer since 
--  heapMem has an implicit delay.
heap :: Word32 ->               -- ^ Size in words
        inst ->                 -- ^ Initial contents 
        Stream (HeapIn inst) -> -- ^ Stream of operations
        Stream (HeapOut inst)   -- ^ Stream of read contents or written address
heap size init cmds = zipWith wrap (MemRead 0 :> heapOps) (memory size init heapOps)
  where
    wrap (MemRead _)  l = ReadOut l 
    wrap (MemWrite addr _) _ = WriteOut addr
    
    heapOps = zipWith heapOp cmds heapPointer
      where
        heapOp (Read  r) _  = MemRead r
        heapOp (Write l) r  = MemWrite r l
        heapOp InNOP     _  = MemRead 0 --NOP; result ignored

    heapPointer :: Stream Word32
    heapPointer = 0 :> zipWith update cmds heapPointer
    -- ^ Increment heap pointer whenever we write (no garbage collection)
      where
        update (Write _) n = n+1
        update _         n = n


