{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE BangPatterns #-}
module StackOps(
  module FHW.Prim,
  module FHW,
  stackOp, spUpdate,
  RecurseAction(Call, Ret, NOP)
) where

import Prelude( Num(..), Bool(..), Int )
import FHW.Prim
import FHW

import GHC.Word ( Word32 )

data RecurseAction arg ret cont = Call arg cont
                                | Ret  ret
                                | NOP

type StackPtr = Word32

stackOp :: RecurseAction a b c -> StackPtr -> MemOp Word32 c
stackOp (Ret _ )   sp = MemRead (sp)
stackOp (Call _ k) sp = MemWrite (sp) k
stackOp _          _  = MemRead 0 -- NOP

spUpdate :: RecurseAction a b c -> RecurseAction a b c -> StackPtr -> StackPtr
spUpdate (Call _ _) (Call _ _) sp = sp + 1
spUpdate (Ret _)    (Ret _)    sp = sp - 1
spUpdate _          _          sp = sp

