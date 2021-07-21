{-
Module : Fhw.Core.Core
Description : The compiler intermediate representation (IR) based on 
              GHC External Core

Our intermediate representation, essentially an abstract syntax tree for
the External Core format defined in

Andrew Tolmach and Tim Chevalier,
<http://www.haskell.org/ghc/docs/6.10.4/html/ext-core/core.pdf An External Representation for the GHC Core Language (For GHC 6.10)>,
2008.

It is a variant of GHC's <http://www.haskell.org/ghc/docs/latest/html/libraries/ghc-7.8.2/CoreSyn.html CoreSyn> type combined with a much simpler model of GHC's extensive
<http://www.haskell.org/ghc/docs/latest/html/libraries/ghc-7.8.2/Type.html Type> types.

It is essentially a typed lambda calculus with algebraic data types.

Modules are a bundle of type definitions and variable definitions.  A
variable definition binds an expression (which may define a function)
and a type to a name.

Defined types are algebraic: a named sum of named type constructors,
each of which is a product of zero or more types.

= Syntax definition

Since this is essentially an abstract syntax tree for the External
Core language, we include documentation of its syntax.  

* Names /in italics/ are nonterminals

* Names in a @fixed width font@ are literals

* Items in square brackets are \[optional\]

* Braces indicate \{zero or more\}

* Braces with + indicate \{one or more\}+

-}
{-# LANGUAGE DeriveDataTypeable #-}
module Fhw.Core.Core (
  -- * A Module  
  Module(..),
  
  -- * Algebraic datatypes
  Tdef(..),
  Cdef(..),
  
  -- * Value Definitions
  Vdef(..),
  
  -- * Lambda-like Expressions
  Exp(..),
  Bind(..),
  Vbind,
  Tbind,
  Alt(..),
  
  -- * Types
  Ty(..),
  Kind(..),
  CoercionKind(..),
  KindOrCoercion(..),
  
  -- * Literals
  -- | Integers, fractionals, characters, and strings
  Lit(..),
  CoreLit(..),
  
  -- * Names
  -- | In the External Core file format, identifiers are z-encoded to
  --   escape special characters.  The parser decodes these names:
  --   every name in our IR is unencoded.  Not also that certain names
  --   must start with a lowercase letter and others with an uppercase letter.
  
  Mname(M),
  Pname(P),
  Qual,
  Var,
  Tvar,
  Tcon,
  Dcon,

  -- * A compiler-global data structure and function to verify it
  -- | This structure is threaded throughout the compiler pipeline; any 
  --   individual pass may use it or ignore it. It's used to pass compiler 
  --   analysis information between separate passes.
  
  Analysis(..),
  verifyAnalysis,

  -- * Helper functions
  -- | Constructors and destructors, constants and functions for
  -- | representing various ubiquitous types

  collectArgs,
  exprType,
  mkLambdaType,
  mkFuncApp,
  mkType,
  tcArrow,
  tArrow,
  tArrows,
  tForalls,
  tdefToTy,
  isFunctionTy,
  isRecTdef,
  collectArgTypes,
  tyLabel,
  primMname,
  fhwPrimMname,
  isPrim,
  isFHW,

  -- * Traversal functions

  mapExpr, mapAlt, mapVdef,
  mapExprM,mapAltM,mapVdefM,
  mapExprMonoid,

  -- * Getters for different term components

  vdefName,
  vdefTy,
  tdefName,
  constrDcon,
  constrTypes,
  tdefConstrs,
  getTcon,

  -- * Pretty-printing
  -- | These are used to output z-encoded core files, since our parser
  --   z-decodes them.
  PrintStyle(..),
  externalCoreStyle, simpleCoreStyle,
  pmodule
  
  ) where

import Data.Generics (Data, Typeable)

import Text.PrettyPrint
import Data.Char
import Data.Ratio
import Data.List (find, delete, intersperse)
import qualified Data.Monoid as Monoid
import Control.Monad
import Control.Applicative ((<$>))

import Fhw.CoreParser.Encoding

{-|
@
/module/  
  %module /mname/ { /tdef/ ; } { /vdefg/ ; }
@

Module. A named bundle of type and value definitions
-}
data Module 
 = Module Mname [Tdef] [Vdef]
 deriving (Data,Typeable)

{-|
@
/tdef/ 
  %data /qtycon/ { /tbind/ } = { [ /cdef/ { ; /cdef/ } ] }
@


Type Definition.  An algebraic type definition is a named group of zero or 
more data constructors.  In Haskell,

@
data Bintree a =
   Fork (Bintree a) (Bintree a)
 | Leaf a
@

produces

@
%data Bintree a = {
  Fork (Bintree a) (Bintree a);
  Leaf a
};

Fork :: %forall a . Bintree a -> Bintree a -> Bintree a
Leaf :: %forall a . a -> Bintree a
@

Haskell's newtype is not supported.

-}
data Tdef
  = Data (Qual Tcon) [Tbind] [Cdef]  -- ^ Type constructor, type arguments, and list of data constructors.
 deriving (Eq, Ord, Data, Typeable)
{-|
@
/cdef/ 
   /qdcon/ { \@ /tbind/ } { /aty/ }+
@

(Data) Constructor Definition. A choice (a sum component) in an algebraic data type
-}
data Cdef 
  = Constr (Qual Dcon) [Tbind] [Ty] -- ^ data constructor name, type args, types
 deriving (Eq, Ord, Data,Typeable)

{-|
@
/vdefg/ 
  %rec { /vdef/ { ; /vdef/ } }
  /vdef/

/vdef/
  /qvar/ :: /ty/ = /exp/
@

Value definition. A name with a type and defining expression.

External Core explicitly identifies which definitions are recursive
(through the @%rec@ keyword), but this is just a hint (e.g., to help
the optimizer) rather than a semantic difference.  We may ultimately
want to know which values have recursive definitions, but we will
simply test them instead.
-}
data Vdef = Vdef (Qual Var) Ty Exp
 deriving (Eq,Ord,Data,Typeable)

{-|

@
/exp/ 
  /qvar/
  /qdcon/  
  /lit/
  /exp/ /exp/
  /exp/ \@ /aty/
  \\ { binder }+ -> /exp/
  %let /vdefg/ %in /exp/
  %case (/aty/) /exp/ %of /vbind/ { /alt/ { ; /alt/ } }
@

Expression.  This is the main lambda-calculus-like representation of
programs in External Core.  Expressions are built from names,
literals, function application (of a single argument; a type can be
passed as an argument), lambda abstractions (with one or more
arguments), @let@ blocks, @case@-style pattern matching, type
coercions, notes, and external references.

-}
data Exp 
  = Var (Qual Var) Ty           -- ^ Variable with its type, often UndefinedTy
  | Dcon (Qual Dcon) Ty         -- ^ Data constructor with its type, often UndefinedTy
  | Lit Lit                     -- ^ Literal 
  | App Exp Exp                 -- ^ Function application
  | Appt Exp Ty                 -- ^ Type application 
  | Lam [Bind] Exp              -- ^ Lambda abstraction
  | Let [Vdef] Exp              -- ^ Local definition
  | Case Exp Vbind Ty [Alt]     -- ^ Case expression (the list is non-empty)
 deriving (Eq,Data,Typeable,Ord)

{-|
@
/binder/ 
  \@ /tbind/
  /vbind/
@

Binder.  A named, typed argument of a lambda abstraction.  Note that
arguments can be both values (e.g., numbers) and types.
-}
data Bind 
  = Tb Tbind
  | Vb Vbind
 deriving (Eq,Data,Typeable,Ord)

{-|
Value Binder.  A named, typed argument that holds a value.
-}
type Vbind = (Var, Ty)

{-|
Type Binder.  A named argument that holds a type.  The type of the type 
is a kind.
-}
type Tbind = (Tvar, Kind)

{-|
@
/alt/ 
  /qdcon/ { \@ /tbind/ } { /vbind/ } -> /exp/
  /lit/ -> /exp/
  %_ -> /exp/
@

Case Alternative.  Patterns (i.e., in @case@ constructs) consist of one or more
of these.

If a case expression has a default alternative @%_ -> /exp/@, it will be listed first in the
External Core file. The list of case alternatives needs to be reversed when translating to Verilog or
back to Haskell, as otherwise this default pattern will catch all cases, even those that have more 
specific matching patterns lower in the list.
-}
data Alt 
  = Acon (Qual Dcon) [Tbind] [Vbind] Exp    -- ^ Data Constructor
  | Alit Lit Exp                            -- ^ Literal
  | Adefault Exp                            -- ^ Default
 deriving (Eq,Data,Typeable,Ord)

{-|
@
/ty/
  /tyvar/
  /qtycon/
  /ty/ /ty/
  %forall { /tbind/ }+ . /ty/
  %trans /ty/ /ty/
  %sym /ty/
  %unsafe /ty/ /ty/
  %left /ty/
  %right /ty/
  %inst /ty/ /ty/
@

Type

A function type of the form a -> b is represented as

> (Tapp (Tapp (Tcon ghc-prim:GHC.Prim.->) (Tvar a)) (Tvar b))




-}

data Ty 
  = Tvar Tvar            -- ^ type variable
  | Tcon (Qual Tcon)     -- ^ type constructor
  | Tapp Ty Ty           -- ^ type application
  | Tforall Tbind Ty     -- ^ type abstraction
-- Wired-in coercions:
-- These are primitive tycons in GHC, but in ext-core,
-- we make them explicit, to make the typechecker
-- somewhat more clear. 
  | TransCoercion Ty Ty  -- ^ transitive coercion
  | SymCoercion Ty       -- ^ symmetric coercion
  | UnsafeCoercion Ty Ty -- ^ unsafe coercion
  | LeftCoercion Ty      -- ^ left coercion
  | RightCoercion Ty     -- ^ right coercion
  | InstCoercion Ty Ty   -- ^ instantiation coercion
  | UndefinedTy          -- ^ A placeholder used after external core is read in.  Pass.AnnoteTypes.AnnotateTypes resolves these.
 deriving (Ord, Data, Typeable)

{-| 
@
/kind/
  /akind/               Atomic kind
  /akind/ -> /kind/       Arrow kind

/akind/
  *                   Lifted
  #                   Unlifted
  ?                   Open
  ( /kind/ )            Grouping
  /type/ :=: /type/       Equality
@

Kind.  The type of a type. These characterize type arguments to lambda
expressions.  TODO

A lifted type has bottom as an element, meaning that in the lazy Haskell
world, such a value may be represented as a closure.

Simon L. Peyton Jones and J. Launchbury.
Unboxed values as first class citizens in a non-strict functional language.
In Proc. Functional Programming and Computer Architecture, pages 636--666, 
Cambridge, MA, August 1991. Springer-Verlag {LNCS}523.
<http://citeseer.ist.psu.edu/jones91unboxed.html>

-}
data Kind 
  = Klifted            -- ^ A lifted type: a pointer to a value
  | Kunlifted          -- ^ An unlifted type: a raw value (e.g., Int#)
  | Kopen              -- ^ Lifted or unlifted
  | Karrow Kind Kind   -- ^ A function
  | Keq Ty Ty
 deriving (Eq, Ord, Data, Typeable)

-- | A CoercionKind isn't really a Kind at all, but rather,
-- corresponds to an arbitrary user-declared axiom.
-- A tycon whose CoercionKind is (DefinedCoercion <tbs> (from, to))
-- represents a tycon with arity (length tbs), whose kind is
-- (from :=: to) (modulo substituting type arguments.
-- It's not a Kind because a coercion must always be fully applied:
-- whenever we see a tycon that has such a CoercionKind, it must
-- be fully applied if it's to be assigned an actual Kind.
-- So, a CoercionKind *only* appears in the environment (mapping
-- newtype axioms onto CoercionKinds).
-- Was that clear??
data CoercionKind = 
   DefinedCoercion [Tbind] (Ty,Ty)

-- | The type constructor environment maps names that are
-- either type constructors or coercion names onto either
-- kinds or coercion kinds.
data KindOrCoercion = Kind Kind | Coercion CoercionKind

{-|
@
/lit/
  ( [-] /digits/ :: /aty/ )               Integer
  ( [-] /digits/ % [-] /digits/ :: /aty/ )  Rational
  ( \'/char/\' :: /aty/ )                   Character
  ( \"/chars/\" :: /aty/ )                  String
@

Literals (with a type).  Integers are decimal digits with an optional
leading negative sign.  Rational are a possibly negative integer
followed by a percent and another possibly negative integer.

Valid characters in character and string literals are all ASCII
characters 0x20 - 0x7E except backslashes (0x5c), single quotes
(0x27), and double quotes (0x22). In both single characters and
strings, \\xXX is a hex escape code: it produces the character given by
the two digit hexadecimal code XX.

-}
data Lit = Literal CoreLit Ty
 deriving (Eq,Ord,Data,Typeable)

-- |Core Literal (without a type).  Always wrapped in "Literal".
data CoreLit 
  = Lint Integer
  | Lrational Rational
  | Lchar Char 
  | Lstring String
 deriving (Eq,Ord,Data,Typeable)

{- |
@
/mname/
  /pname/ : /Identifier/
@

A module name: (package name, list of hierarchical names, leaf name)
Module names form a unique namespace.

From the GHC user's guide, a package is a library of Haskell modules known
to the compiler.  For example, run

@
ghc-pkg list
@

for a list of installed packages.  Or, to list the modules in a package,

@
ghc-pkg field ghc-prim exposed-modules
@

User code is compiled in the /main/ package unless overriden by GHC's 
-package-name flag.

The /ghc-prim/ package contains GHC's primitive types.

The /base/ package contains GHC's implementation of the Haskell prelude.

> ghc --show-iface /usr/lib/ghc/ghc-prim-0.3.0.0/GHC/Types.hi
-}
newtype Mname = M (Pname, [String], String)
  deriving (Eq, Ord, Data, Typeable)
           
{-|
@
/pname/
  /identifier/
  /Identifier/
@

A package name: a string of characters (upper or lowercase, punctuation, 
etc.).  In External Core, the name is z-encoded into letters (upper- and 
lowercase) , digits, and underscores; we store the name in decoded form.
-}
newtype Pname = P String
  deriving (Eq, Ord, Data, Typeable)
           
{-| A qualified value, type constructor, or data constructor 
   (in a particular module).

   "Nothing" module names represent unexported names.
-}
type Qual t = (Maybe Mname, t)


-- |Variable: /identifier/
-- |These form a distinct namespace (start with a lowercase letter)
type Var = String
-- |Type Variable: /identifier/
-- |These form a distinct namespace (start with a lowercase letter)
type Tvar = String
-- |Type Constructor: /Identifier/
-- |These form a distinct namespace (capitalized names only)
type Tcon = String
-- |Data Constructor: /Identifier/
-- |These form a distinct namespace (capitalized names only)
type Dcon = String


-- | The compiler-global data structure for passing analysis information
--   between individual passes. 
--
--   *writeSites* (TagMemoryOps.hs) : When we insert explicit "write"
--   functions, each "write" call site receives a unique integer identifier. We
--   use these identifiers to associate profiling information with all objects
--   allocated at a given site.
--
--   *readSites* (TagMemoryOps.hs) : The same thing as "writeSites", but for
--   calls to explicit "read" sites.
--
--   *partitions* (PartitionMem.hs) : Type-based partitions for on-chip memory
--   in hardware. Each corresponds to a specific type (stack or heap) and
--   provides its total size, the size of a slot in that partition, and its
--   list of "chunks". A chunk is a region of the partition that starts at a
--   given address and is associated with a list of bins, each of which
--   corresponds to a memory variable. Each bin provides its total size, the ID
--   of its write site, and the
--   IDs of the read sites that access it. All sizes in the partitions
--   field and its components are measured in bits. 
data Analysis = 
  Analysis { writeSites :: [(Var, Int)] 
           , readSites  :: [(Var, Int)]
           , partitions :: [(Ty, MemSize, ObjSize, [Chunk])]
           }
  deriving (Eq)
type Chunk = (Int, [(BinSize, Int, [Int])])
type BinSize = Int
type MemSize = Int
type ObjSize = Int

instance Show Analysis where
  showsPrec _ a = shows (panalysis a)

-- | Display compiler analysis information in JSON-like format for DF compiler.
--   When adding more analyses, make sure to check DFC's parser to ensure that
--   you're respecting the grammar for this information.
panalysis :: Analysis -> Doc
panalysis Analysis { writeSites = [], readSites = [], partitions = [] } = empty
panalysis analysis = lbrace <+> vcat (intersperse semi members) <+> rbrace
  where
    --These elements correspond to analysis components
    members = filter notEmpty 
              [pwriteSites (writeSites analysis),
               preadSites  (readSites analysis),
               ppartitions (partitions analysis)] 

    notEmpty x = render x /= render empty

    mkMember name value = showIt name <+> colon <+> lbrace <+> value <+> rbrace

    --writeSites
    pwriteSites [] = empty
    pwriteSites sites = mkMember "writeSites" (mkSites sites)
    --readSites
    preadSites [] = empty
    preadSites sites = mkMember "readSites" (mkSites sites)
    --partitions
    ppartitions [] = empty
    ppartitions parts = mkMember "partitions" (mkPartitions parts)
    
    mkSites sites = sep (intersperse semi $ map toPair sites)
      where
        toPair (name,num) = showIt name <+> colon <+> int num

    mkPartitions parts = sep (intersperse semi $ map toFields parts) 
      where
        --TODO: Print out chunks appropriately
        toFields (ty, memsize, objsize, chunks) =
          mkMember ("type_" ++ show ty) $
          sep $ intersperse semi [text "memsize" <+> colon <+> int memsize
                                 ,text "objsize" <+> colon <+> int objsize
                                 ,mkMember "chunks" (pchunks chunks)]
        pchunks chunks = sep $ intersperse semi $ map printChunk chunks
        printChunk (addr, bins) = mkMember ("addr_" ++ show addr) $
                                  sep $ intersperse semi $ map pbin bins 
        pbin (binsize, writeID, readIDs) = 
          let psite s = text "read_site" <+> colon <+> int s
          in mkMember "bin" $ sep $ intersperse semi 
          [text "size" <+> colon <+> int binsize
          ,text "write_site" <+> colon <+> int writeID
          ,sep (intersperse semi $ map psite readIDs)]


    -- | Escape an identifier if it contains non-standard characters
    showIt :: String -> Doc
    showIt s = if any (not . isNameChar) s
                then text $ '\\':s
                else text s
      where
        isNameChar c = isLetter c || isDigit c || c == '_'

-- | Verify that the components of the Analysis structure accurately reflect the
-- contents of the Module (e.g., that names have been preserved after mangling).
verifyAnalysis :: Analysis -> Module -> Analysis
verifyAnalysis a@Analysis { writeSites = wsites, readSites = rsites } 
               (Module _ _ vdefs) = 
  let finalSites = foldl findSites (wsites ++ rsites) vdefs in
  if null finalSites then a 
    else error $ "Sites " ++ show (map fst finalSites) ++ 
                 " couldn't be found in the module"
  where
    -- Remove a write call from our list if it has a definition in the module.
    findSites :: [(String, Int)] -> Vdef -> [(String, Int)]
    findSites [] _ = []
    findSites s (Vdef (_, name) _ _) = maybe s (`delete` s) 
                                               (find ((==name) . fst) s)

-- | Apply a monoidal function f over every sub-expression of an expression. This is
--   useful when the f you want to apply returns a value that can be combined in an
--   associative way with other values of the same type (e.g., sums, conjuction, 
--   disjunction, etc.)
mapExprMonoid :: Monoid.Monoid a => (Exp -> a) -> Exp -> a
mapExprMonoid f expr = case expr of
    App e1 e2        -> f expr Monoid.<> f' e1 Monoid.<> f' e2
    Appt e1 _        -> f expr Monoid.<> f' e1
    Lam _ e1         -> f expr Monoid.<> f' e1
    Let vdefs e1     -> f expr Monoid.<> Monoid.mconcat (map helpVdef vdefs) Monoid.<> f' e1
    Case e1 _ _ alts -> f expr Monoid.<> f' e1 Monoid.<> Monoid.mconcat (map helpAlt alts)
    _                -> f expr
  where
    f' = mapExprMonoid f
    helpVdef (Vdef _ _ e) = f' e
    helpAlt (Adefault e) = f' e
    helpAlt (Alit _ e) = f' e
    helpAlt (Acon _ _ _ e) = f' e


-- | Apply a monadic function over every sub-expression of an 
-- expression.
mapExprM :: (Functor m, Monad m) => (Exp -> m Exp) -> Exp -> m Exp
mapExprM f expr = case expr of
    App e1 e2             -> f =<< liftM2 App (f' e1) (f' e2)
    Appt e1 ty            -> f =<< fmap (flip Appt ty) (f' e1) 
    Lam binds e1          -> f =<< fmap (Lam binds) (f' e1)
    Let vdefs e1          -> do newDefs <- mapM (mapVdefM f) vdefs
                                newExp <- f' e1
                                f (Let newDefs newExp)
    Case e1 vbind ty alts -> do newScrut <- f' e1
                                newAlts <- mapM (mapAltM f) alts
                                f (Case newScrut vbind ty newAlts)
    _                     -> f expr
  where
  f' = mapExprM f

-- | Apply a monadic function over a case alternative's subexpression.
mapAltM :: (Functor m, Monad m) => (Exp -> m Exp) -> Alt -> m Alt
mapAltM f alt = case alt of
    Acon (mname, dcon) tbs vbs e -> Acon (mname, dcon) tbs vbs <$> f' e
    Alit lit e                   -> Alit lit <$> f' e
    Adefault e                   -> Adefault <$> f' e
  where
  f' = mapExprM f

-- | Apply a monadic function over a variable definition's expression.
mapVdefM :: (Functor m, Monad m) => (Exp -> m Exp) -> Vdef -> m Vdef
mapVdefM f (Vdef (mname, var) ty e) = fmap (Vdef (mname, var) ty) 
                                           (mapExprM f e)

-- | Apply a function over every sub-expression of an expression.
mapExpr :: (Exp -> Exp) -> Exp -> Exp
mapExpr f expr = case expr of
    App e1 e2             -> f $ App (f' e1) (f' e2)
    Appt e1 ty            -> f $ Appt (f' e1) ty
    Lam binds e1          -> f $ Lam binds (f' e1)
    Let vdefs e1          -> f $ Let (map (mapVdef f) vdefs) (f' e1)
    Case e1 vbind ty alts -> f $ Case (f' e1) vbind ty (map (mapAlt f) alts)
    _                     -> f expr
  where
  f' = mapExpr f

-- | Apply a function over a case alternative's subexpression.
mapAlt :: (Exp -> Exp) -> Alt -> Alt
mapAlt f alt = case alt of
    Acon (mname, dcon) tbs vbs e -> Acon (mname, dcon) tbs vbs $ f' e
    Alit lit e                  -> Alit lit $ f' e
    Adefault e                  -> Adefault $ f' e
  where
  f' = mapExpr f

-- | Apply a function over a variable definition's expression.
mapVdef :: (Exp -> Exp) -> Vdef -> Vdef
mapVdef f (Vdef (mname, var) ty e) = Vdef (mname, var) ty $ mapExpr f e

{-| Takes a nested application and returns the
    function being applied and the value and type arguments
    to which it is applied, e.g.,

>collectArgs (App (App (App (Appt f t1) a1) a2) a3) = (f, [a1, a2, a3], [t1])
 
Adapted from GHC's CoreSym.
-}
collectArgs :: Exp -> (Exp, [Exp], [Ty])
collectArgs expr = col expr [] []
    where
      col (App f a)  as ts = col f (a:as) ts
      col (Appt f t) as ts = col f as (t:ts)
      col e          as ts = (e, as, ts)

-- | Return the type of an expression.  Adapted from GHC's CoreUtils
-- The annoteTypes pass needs to be run for this to give defined results.
exprType :: Exp -> Ty
exprType (Var _ ty) = ty
exprType (Dcon _ ty) = ty
exprType (Lit (Literal _ ty)) = ty
exprType e@(App fun _) = case exprType fun of
    (Tapp _ t) -> t
    -- (Tforall _ t) -> t
    (Tforall _ _) -> error $ "exprType: Tforall not monomorphised: " ++ show e
    _ -> error $ "exprType: App unsupported on " ++ show e
exprType e@(Appt _ _) =  error $ "exprType: Appt not supported " ++ show e
exprType (Lam binders expr) = mkLambdaType binders $ exprType expr
exprType (Let _ e) = exprType e
exprType (Case _ _ ty _) = ty

-- Return the type of a lambda expression: build a series of @ -> @ types
-- or foralls depending on the binder (normal or type variable)
mkLambdaType :: [Bind] -> Ty -> Ty
mkLambdaType [] t = t
mkLambdaType (Vb (_, t):binds) bodyt = tArrow t $ mkLambdaType binds bodyt
mkLambdaType (Tb tb:binds) bodyt = Tforall tb $ mkLambdaType binds bodyt

-- | Given an initial expression and lists of type and expression arguments,
-- construct a function application expression
mkFuncApp :: Exp -> [Ty] -> [Exp] -> Exp
mkFuncApp f tys exps = foldl makeApp' f (map Right tys ++ map Left exps)
  where
    makeApp' expr (Left exArg) = App expr exArg
    makeApp' expr (Right ty) = Appt expr ty

-- | Make a type application given a constructor and a list of type args 
mkType :: Qual Tcon -> [Tbind] -> Ty
mkType qtc tbinds = foldl Tapp (Tcon qtc) (map (Tvar . fst) tbinds)

-- | The name of the module with GHC's primitives: ghc-prim:GHC.Prim
--
-- <http://www.haskell.org/ghc/docs/7.4.2/html/libraries/ghc-prim-0.2.0.0/GHC-Prim.html>
primMname :: Mname
primMname = M (P "ghc-prim", ["GHC"], "Prim")

-- | The name of the module with primitives specifically for our compiler:
--  fhw-0.0.0.1:FHW.Prim
fhwPrimMname :: Mname
fhwPrimMname = M (P "fhw-0.0.0.1", ["FHW"], "Prim")

-- | The qualified type constructor for the arrow operator: ghc-prim:GHC.Prim.->
tcArrow :: Qual Tcon
tcArrow = (Just primMname, "->")

-- | Apply the arrow type constructor to two types
tArrow :: Ty -> Ty -> Ty
tArrow t = Tapp (Tapp (Tcon tcArrow) t)

-- | Apply the arrow type constructor to multiple types
-- tArrows [a,b,c]  gives a type for  a -> b -> c
tArrows :: [Ty] -> Ty
tArrows [t] = t
tArrows (hd:tl) = tArrow hd $ tArrows tl
tArrows [] = error "tArrows: empty list"

-- | Build a universally-qualified type over multiple type variables
tForalls :: [Tbind] -> Ty -> Ty
tForalls binds t = foldr Tforall t binds

-- | True if the given type is a function
isFunctionTy :: Ty -> Bool
isFunctionTy (Tapp (Tapp (Tcon tc) _) _) = tc == tcArrow
isFunctionTy (Tapp t _) = isFunctionTy t
isFunctionTy (Tforall _ t) = isFunctionTy t
isFunctionTy _ = False

-- | True if the given type definition is recursive
isRecTdef :: Tdef -> Bool
isRecTdef (Data qtc tbinds cdefs) = any (contains (mkType qtc tbinds)) cdefs
  where
    contains ty (Constr _ _ tys) = ty `elem` tys || ty `elem` concatMap tcons tys
    tcons (Tapp t1 t2) = t1:t2:(tcons t1 ++ tcons t2)
    tcons t = [t]

-- | For a function type, return the result type and list of argument types
-- E.g.,  collectArgTypes a -> b -> c = a -> (b -> c) = (c, [a, b])
collectArgTypes :: Ty -> (Ty, [Ty])
collectArgTypes (Tapp (Tapp (Tcon tc) t1) t2) | tc == tcArrow = (o, t1:ins)
                                         where (o, ins) = collectArgTypes t2
collectArgTypes (Tforall _ t) = collectArgTypes t
collectArgTypes t = (t, [])

-- | Get the left-most type constructor in a type application
getTcon :: Ty -> Qual Tcon
getTcon (Tcon ty) = ty
getTcon (Tapp t1 _) = getTcon t1
getTcon _ = (Nothing,"")

-- | The type of external labels: ghc-prim:GHC.prim.Addr#
tyLabel :: Ty
tyLabel = Tcon (Just primMname, "Addr#");

-- | True if a given qualified thing is a primitive
isPrim :: Qual a -> Bool
isPrim (Just (M(P "ghc-prim", _, _)), _) = True
isPrim _ = False

-- | True if a given qualified thing is an FHW primitive
isFHW :: Qual a -> Bool
isFHW (Just (M(P "fhw-0.0.0.1",["FHW"],"Prim")), _) = True
isFHW _ = False

-- | Get the name of a variable definition.
vdefName :: Vdef -> String
vdefName (Vdef (_,name) _ _) = name

-- | Get the type of a variable definition.
vdefTy :: Vdef -> Ty
vdefTy (Vdef _ ty _) = ty

-- | Get the name of a type definition.
tdefName :: Tdef -> String
tdefName (Data (_,name) _ _) = name

-- | Get the type corresponding to a non-polymorphic type definition
tdefToTy :: Tdef -> Ty
tdefToTy (Data ty [] _) = Tcon ty
tdefToTy t = error $ "tdefToTy: unsupported on " ++ show t

-- | Get data constructor from a variant definition
constrDcon :: Cdef -> Qual Dcon
constrDcon (Constr dc _ _) = dc

-- | Get the type fields of a constructor definition.
constrTypes :: Cdef -> [Ty]
constrTypes (Constr _ _ tys) = tys

-- | Get constructor definitions from type definition
tdefConstrs :: Tdef -> [Cdef]
tdefConstrs (Data _ _ cdefs) = cdefs


-- | Deriving Eq typeclass for Core Types
instance Eq Ty where
  Tvar _ == Tvar _ = True
  Tcon a == Tcon b = a == b
  (Tapp a b) == (Tapp c d) = a == c && b == d
  (Tforall _ ty1) == (Tforall _ ty2) = ty1 == ty2
  UndefinedTy == UndefinedTy = True
  _ == _ = False


{-| Settings for how to display core.

  The pxxx functions expect this as the first argument.
 -}

data PrintStyle =
    PrintStyle { 
                 stringEncode :: UserString -> EncodedString  -- ^ Processing function for strings, typically zEncodeString
               , fullPaths :: Bool -- ^ Whether to output fully qualified names
               }

-- | A style suitable for parsing: full, z-encoded idenfitiers
externalCoreStyle :: PrintStyle 
externalCoreStyle = PrintStyle { stringEncode = zEncodeString
                               , fullPaths = True }

-- | A simplified style for readable debugging information
simpleCoreStyle :: PrintStyle
simpleCoreStyle = PrintStyle { stringEncode = id
                             , fullPaths = False }

instance Show Module where
  showsPrec _ m = shows (pmodule simpleCoreStyle m)

instance Show Tdef where
  showsPrec _ t = shows (ptdef simpleCoreStyle t)

instance Show Cdef where
  showsPrec _ c = shows (pcdef simpleCoreStyle c)

instance Show Vdef where
  showsPrec _ v = shows (pvdef simpleCoreStyle v)

instance Show Exp where
  showsPrec _ e = shows (pexp simpleCoreStyle e)

instance Show Alt where
  showsPrec _ a = shows (palt simpleCoreStyle a)

instance Show Ty where
   showsPrec _ t = shows (pty simpleCoreStyle t)

instance Show Kind where
  showsPrec _ k = shows (pkind simpleCoreStyle k)

instance Show CoercionKind where
  showsPrec _ (DefinedCoercion tbs (from,to)) =
    shows $ parens (text "defined coercion:" <+> hsep (map (ptbind simpleCoreStyle) tbs)
            <+> text ":" <+> brackets (pty simpleCoreStyle from)
            <+> text "->" <+> brackets (pty simpleCoreStyle to))
instance Show Lit where
  showsPrec _ l = shows (plit simpleCoreStyle l)

instance Show CoreLit where
  showsPrec _ l = shows (pclit l)

instance Show KindOrCoercion where
  showsPrec _ (Kind k) = shows (text "<K" <+> pkind simpleCoreStyle k <> text ">")
  showsPrec _ (Coercion (DefinedCoercion tbs (t1,t2))) = 
     shows (text "<C" <+> hsep (map (ptbind simpleCoreStyle) tbs) <+>
              parens (pkind simpleCoreStyle (Keq t1 t2)) <> text ">") 

instance Show Bind where
  showsPrec _ b = shows (pbind simpleCoreStyle b)

instance Show Mname where
   showsPrec _ mn = shows (panmname simpleCoreStyle mn)


-- | Indent a document by 2 spaces
indent :: Doc -> Doc
indent = nest 2

pmodule :: PrintStyle -> Module -> Doc
pmodule c (Module mname tdefs vdefs) =
  (text "%module" <+> panmname c mname)
  $$ indent (vcat (map ((<> char ';') . ptdef c) tdefs)
             $$ vcat (map ((<> char ';') . pvdef c) vdefs))

ptdef :: PrintStyle -> Tdef -> Doc
ptdef c (Data qtcon tbinds cdefs) =
  (text "%data" <+> pqname c qtcon <+> hsep (map (ptbind c) tbinds)) <+> char '='
  $$ indent (braces (vcat (punctuate (char ';') (map (pcdef c) cdefs))))

pcdef :: PrintStyle -> Cdef -> Doc
pcdef c (Constr qdcon tbinds tys)  =
  pqname c qdcon <+> sep [hsep (map (pattbind c) tbinds),sep (map (paty c) tys)]

pname :: PrintStyle -> String -> Doc
pname c str = text $ stringEncode c str

pqname :: PrintStyle -> (Maybe Mname, String) -> Doc
pqname c (m,v) | fullPaths c = pmname c m <> pname c v
pqname c (_,v)               =               pname c v

pmname :: PrintStyle -> Maybe Mname -> Doc
-- be sure to print the '.' here so we don't print out
-- ".foo" for unqualified foo...
pmname _ Nothing = empty
pmname c (Just m) = panmname c m <> char '.'

panmname :: PrintStyle -> Mname -> Doc
panmname c (M (P pkgName, parents, name)) =
  let parentStrs = map (pname c) parents in
         pname c pkgName <> char ':' <>
         -- This is to be sure to not print out:
         -- main:.Main for when there's a single module name
         -- with no parents.
             (case parentStrs of
                [] -> empty
                _  -> hcat (punctuate (hierModuleSeparator c)
                        (map (pname c) parents)) 
                      <> hierModuleSeparator c)
             <> pname c name

-- note that this is not a '.' but a Z-encoded '.':
-- GHCziIOBase.IO, not GHC.IOBase.IO.
-- What a pain.
-- hierModuleSeparator = text (zEncodeString ".")
-- remove the encoding operation for the output -- kyzhai
--hierModuleSeparator = text (zEncodeString ".")
hierModuleSeparator :: PrintStyle -> Doc
hierModuleSeparator c = text $ stringEncode c "."

ptbind :: PrintStyle -> Tbind -> Doc
ptbind c (t,Klifted) = pname c t
ptbind c (t,k) = parens (pname c t <> text "::" <> pkind c k)

pattbind :: PrintStyle -> (Tvar, Kind) -> Doc
pattbind c (t,k) = char '@' <> ptbind c (t,k)

pakind :: PrintStyle -> Kind -> Doc
pakind _ Klifted = char '*'
pakind _ Kunlifted = char '#'
pakind _ Kopen = char '?'
pakind c k = parens (pkind c k)

pkind :: PrintStyle -> Kind -> Doc
pkind c (Karrow k1 k2) = parens (pakind c k1 <> text "->" <> pkind c k2)
pkind c (Keq from to) = peqkind c (from,to)
pkind c k = pakind c k

peqkind :: PrintStyle -> (Ty, Ty) -> Doc
peqkind c (t1, t2) = parens (parens (pty c t1) <+> text ":=:" <+> parens (pty c t2)) 

paty :: PrintStyle -> Ty -> Doc
paty ch (Tvar n) = pname ch n
paty ch (Tcon c) = pqname ch c
paty ch t = parens (pty ch t)

pbty :: PrintStyle -> Ty -> Doc
pbty c (Tapp(Tapp(Tcon tc) t1) t2) | tc == tcArrow = parens(fsep [pbty c t1, text "->",pty c t2])
pbty c (Tapp t1 t2) = pappty c t1 [t2] 
pbty c t = paty c t

pty :: PrintStyle -> Ty -> Doc
pty c (Tapp(Tapp(Tcon tc) t1) t2) | tc == tcArrow = fsep [pbty c t1, text "->",pty c t2]
pty c (Tforall tb t) =            text "%forall" <+> pforall c [tb] t
pty c (TransCoercion t1 t2) =     sep [text "%trans", paty c t1, paty c t2]
pty c (SymCoercion t) =           sep [text "%sym", paty c t]
pty c (UnsafeCoercion t1 t2) =    sep [text "%unsafe", paty c t1, paty c t2]
pty c (LeftCoercion t) =          text "%left" <+> paty c t
pty c (RightCoercion t) =         text "%right" <+> paty c t
pty c (InstCoercion t1 t2) =      sep [text "%inst", paty c t1, paty c t2]
pty _ UndefinedTy =               text "%UndefinedTy"
pty c t = pbty c t

pappty :: PrintStyle -> Ty -> [Ty] -> Doc
pappty c (Tapp t1 t2) ts = pappty c t1 (t2:ts)
pappty c t ts = sep (map (paty c) (t:ts))

pforall :: PrintStyle -> [Tbind] -> Ty -> Doc
pforall c tbs (Tforall tb t) = pforall c (tbs ++ [tb]) t
pforall c tbs t = hsep (map (ptbind c) tbs) <+> char '.' <+> pty c t

pvdefs :: PrintStyle -> [Vdef] -> Doc
pvdefs c [vdef] = pvdef c vdef
pvdefs c vdefs = text "%rec" $$ braces (indent (vcat (punctuate (char ';') (map (pvdef c) vdefs))))

pvdef :: PrintStyle -> Vdef -> Doc
pvdef c (Vdef qv t e) = sep [pqname c qv <+> text "::" <+> pty c t <+> char '=',
		     indent (pexp c e)]

paexp :: PrintStyle -> Exp -> Doc
paexp c (Var x _) = pqname c x
paexp c (Dcon x _) = pqname c x
paexp c (Lit l) = plit c l
paexp c e = parens(pexp c e)

pbind :: PrintStyle -> Bind -> Doc
pbind c (Tb tb) = char '@' <+> ptbind c tb
pbind c (Vb vb) = pvbind c vb

pfexp :: PrintStyle -> Exp -> Doc
pfexp c (App e1 e2) = pappexp c e1 [Left e2]
pfexp c (Appt e t) = pappexp c e [Right t]
pfexp c e = paexp c e

pappexp :: PrintStyle -> Exp -> [Either Exp Ty] -> Doc
pappexp c (App e1 e2) as = pappexp c e1 (Left e2:as)
pappexp c (Appt e t) as = pappexp c e (Right t:as)
pappexp c e as = fsep (paexp c e : map pa as)
           where pa (Left ex) = paexp c ex
		 pa (Right t) = char '@' <+> paty c t

pexp :: PrintStyle -> Exp -> Doc
pexp c (Lam bs e) = char '\\' <+> sep [sep (map (pbind c) bs) <+> text "->",
                                     indent (pexp c e)]
pexp c (Let vds e) = (text "%let" <+> pvdefs c vds) $$ (text "%in" <+> pexp c e)
pexp c (Case e vb t alts) = sep [text "%case" <+> paty c t <+> paexp c e,
			     text "%of" <+> pvbind c vb]
			$$ indent (braces (vcat (punctuate (char ';')
                                                 (map (palt c) alts))))
pexp c e = pfexp c e

pvbind :: PrintStyle -> (String, Ty) -> Doc
pvbind c (x,t) = parens(pname c x <> text "::" <> pty c t)

palt :: PrintStyle -> Alt -> Doc
palt ch (Acon c tbs vbs e) =
	sep [pqname ch c, 
	     sep (map (pattbind ch) tbs),
	     sep (map (pvbind ch) vbs) <+> text "->"]
        $$ indent (pexp ch e)
palt ch (Alit l e) = 
	plit ch l <+>  text "->"
	$$ indent (pexp ch e)
palt ch (Adefault e) = 
	text "%_ ->"
	$$ indent (pexp ch e)

plit :: PrintStyle -> Lit -> Doc
plit c (Literal cl t) = parens (pclit  cl <> text "::" <> pty c t)

pclit :: CoreLit -> Doc
pclit (Lint i) = integer i
-- we use (text (show (numerator r))) (and the same for denominator)
-- because "(rational r)" was printing out things
-- like "2.0e-2" (which isn't External Core)
pclit (Lrational r) = text (show (numerator r)) <+> char '%'
   <+> text (show (denominator r))
pclit (Lchar c) = text ("\'" ++ escape [c] ++ "\'")
pclit (Lstring s) = pstring s

pstring :: String -> Doc
pstring s = doubleQuotes(text (escape s))

escape :: String -> String
escape = foldr (f . ord) []
    where 
     f cv rest
          -- The "\&" keeps "\x0aE" from getting parsed as
          -- hex code aE (it should be 0a)
	| cv > 0xFF = '\\':'x':hs ++ (if not (null rest) then "\\&" ++ rest else [])
	| cv < 0x20 || cv > 0x7e || cv `elem` [0x22, 0x27, 0x5c] = 
	 '\\':'x':h1:h0:(if not (null rest) then "\\&" ++ rest else [])
           where (q1,r1) = quotRem cv 16
		 h1 = intToDigit q1
                 h0 = intToDigit r1
		 hs = dropWhile (=='0') $ reverse $ mkHex cv
		 mkHex 0 = ""
		 mkHex cv1 = intToDigit r : mkHex q
		    where (q,r) = quotRem cv1 16
     f cv rest = chr cv : rest
