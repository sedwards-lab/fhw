{-
Module : Dfc.AST
Description : The types defining the abstract syntax tree for a 
              dataflow network. This AST is generated from a source 
              file written in our FlohText language.

-}
module Dfc.AST where

import Data.List (intercalate)

-- | A dataflow network consists algebraic data type definitions,
-- node type definitions (signatures), and node instances
data Dataflow = Dataflow [Tdef] [Nsig] [Ninst]
  deriving Show

-- | Type definitions: Primitive unsigned, signed, and algebraic
data Tdef = Unsigned Tcon Int
          | Signed Tcon Int
          | Tdef Tcon [Variant]
            deriving Eq
-- | One of the variants (data construtor) of an algebraic type
data Variant = Variant Dcon [Tcon] deriving Eq

instance Show Tdef where
  show (Unsigned tc bits) = "data " ++ tc ++ " unsigned " ++ show bits
  show (Signed tc bits) = "data " ++ tc ++ " signed " ++ show bits
  show (Tdef tc vars) = "data " ++ tc ++ " = " ++ 
                        intercalate " | " (map show vars) 

instance Show Variant where
  show (Variant dc tys) = dc ++ " " ++ unwords tys

-- | A node signature: the type of a node instance.
-- A unique name, a set of arguments, and expressions describing
-- the types and numbers of input/output channels.
data Nsig = Nsig String [Param] [TyExp] [TyExp]
  deriving (Show,Eq)

-- | An argument to a node signature.  A type variable or something richer
data Param = Var   String        -- ^ type variable
           | Typed String TyExp  -- ^ naming a typed value 
  deriving (Show,Eq)

-- | Type expressions: for inputs, outputs, or a constraint on an argument
data TyExp = SigType Tcon     -- ^ concrete type
           | Aexp String      -- ^ reference a signature argument
           | Func TyExp TyExp -- ^ apply a built-in function
           | Op   TyExp Op    -- ^ apply an operator
  deriving (Show,Eq)

-- | Type operators
data Op = Plus         -- ^ one or more
        | Carat TyExp  -- ^ specify number with result of a signature expression
  deriving (Show,Eq)


-- | A node instance: a node, which has an associated signature, in the network.
-- This includes its port connections and any arguments its signature expects.
data Ninst = Node [Channel] String [Arg] [Channel]
  deriving Show

data Arg = LitArg Int     -- ^ integer literal 
         | UserArg String -- ^ a user-defined type name or data constructor
  deriving Show

type Channel = String
type Tcon = String
type Dcon = String
