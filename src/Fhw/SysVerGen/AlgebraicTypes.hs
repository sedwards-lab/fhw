{-|
Module : Fhw.SysVerGen.AlgebraicTypes
Description : Bookkeeping et al. for implementing algebraic datatypes in SystemVerilog

= Algebraic types in hardware

A recent SystemVerilog spec (IEEE 1800-2012, section 11.9) includes
tagged union types, which would be perfect for our application, but
they are unsupported by Verilator, Quartus, and probably a host of
others.

The SystemVerilog spec also has structs and unions, but Quartus (13.0)
doesn't support union types.

http://quartushelp.altera.com/13.0/mergedProjects/hdl/vlog/vlog_list_sys_vlog.htm

Thus, we reduce algebraic data types to bitvectors.

The first few bits hold the tag that encodes the data constructor.
This is vacuous when there is only one data constructor for the type.

For each data constructor, we provide a function that sets the tag
field and glues things together.  In Core, data constructors are in a
different namespace, but in SystemVerilog, we make them normal
functions, so we add a prefix to indicate this.

For case constructs, we need a way to extract the tag from an object
and a way to extract each field from each data constructor.

> data State = Foo Int Int
>           | Bar Int

> typedef logic [64:0] State;

> function State dc_Foo(Int a1, Int a2);
> begin
>  Foo[0] = 1'd0;
>  Foo[32:1] = a1;
>  Foo[64:33] = a2;
> end
> endfunction

> function State dc_Bar(Int a1);
> begin
>  Bar[0] = 1'd1;
>  Bar[32:1] = a1;
> end
> endfunction

> Int _local1 = wild5[32:1];  // Foo a _
> Int _local2 = wild5[64:33]; // Foo _ a
> Int _local3 = wild5[31:1];  // Bar a
> unique case (wild5[0])
>  0 : ...
>  1 : ...
> endcase

-}

module Fhw.SysVerGen.AlgebraicTypes
    ( TypeEncodingInfo
    , encodeTypes
    , typeDefs
    , vTypeOf
    , dconExpr
    , tagExpr
    , tagVal
    , fieldExprs
    , unknownVal
    , qualName
    , tcon
    )
where

import qualified Fhw.SysVerGen.SystemVerilog as V
import Fhw.Core.Core

import Data.Graph ( buildG, topSort )
import qualified Data.Array as Array
import qualified Data.Map.Strict as Map
import Data.List ( intercalate )
import Data.Maybe ( fromMaybe )

-- | Encoding information about every type: association lists
data TypeEncodingInfo =
  TypeEncodingInfo { tconInfo :: [(Qual Tcon, TconEncoding)]
                   , dconInfo :: [(Qual Dcon, DconEncoding)]
                   }

-- | Encoding information for a type constructor
data TconEncoding =
    TconEncoding { tconOf :: Qual Tcon   -- ^ Original type constructor 
                 , tagBits :: Int        -- ^ Number of bits for the tag
                 , totalBits :: Int      -- ^ Number of bits for a whole object
                 , dconEncs :: [DconEncoding] -- ^ Associated data constructors
                 }

-- | Encoding information for a data constructor
data DconEncoding =
    DconEncoding { dconOf :: Qual Dcon -- ^ Name of the data constructor
                 , tagValue :: Integer -- ^ Tag value for this data constructor
                 , fieldEncodings :: [FieldEncoding] -- ^ Encoding of each field
                 }

-- | Encoding information for a single field of a data constructor
data FieldEncoding = FieldEncoding { fieldType :: Ty   -- ^ Type of field
                                   , fieldBit :: Int   -- ^ First bit of field
                                   , fieldWidth :: Int -- ^ Number of bits
                                   }

baseEncodingInfo :: TypeEncodingInfo
baseEncodingInfo =
    TypeEncodingInfo { tconInfo = map primType [("Int#", 32)
                                               ,("Word#", 32)
                                               ,("Char#", 8)
                                               ]
                     , dconInfo = [] }

primType :: (String, Int) -> (Qual Tcon, TconEncoding)
primType (name, width) = (tc, TconEncoding { tconOf = tc
                                           , tagBits = 0
                                           , totalBits = width
                                           , dconEncs = [] })
    where
      tc = (Just primMname, name)

-- | Build up encoding information for a list of types in any order
encodeTypes :: [Tdef] -> TypeEncodingInfo
encodeTypes tdefs =
  TypeEncodingInfo { tconInfo = reverse tdi
                   , dconInfo = cdi }
  where
    TypeEncodingInfo { tconInfo = tdi
                     , dconInfo = cdi } =
      foldl encodeType baseEncodingInfo $ sortTdefs tdefs

-- | Add encoding information for a single type definition
encodeType :: TypeEncodingInfo -> Tdef -> TypeEncodingInfo
encodeType tei@(TypeEncodingInfo tdefinfo cdefinfo) (Data qtc [] cdefs) =
  TypeEncodingInfo { tconInfo = (qtc,newtdef) : tdefinfo
                   , dconInfo = newcdefs ++ cdefinfo }
  where
    newtdef = TconEncoding { tconOf = qtc
                           , tagBits = tBits
                           , totalBits = maxBit
                           , dconEncs = map snd newcdefs }

    -- TODO: This assumes sequential log encoding for tag fields; there
    -- may be a better way, e.g., one-hot encoding
    newcdefs = zipWith newcdef [0 ..] cdefs

    -- Set the number of bits to the be the maximum over all sub-fields
    maxBit = maximum (tBits : map highestBit
                                (concatMap (fieldEncodings . snd) newcdefs))
    highestBit fe = fieldBit fe + fieldWidth fe

    tBits = logEncodingBits $ length cdefs

    newcdef :: Integer -> Cdef -> (Qual Dcon, DconEncoding)
    newcdef index (Constr qdcon [] fields) =
      (qdcon, DconEncoding { dconOf = qdcon
                           , tagValue = index
                           , fieldEncodings =
                             reverse $ snd $ foldl packField (tBits, []) fields } )
      where

        -- TODO: This is a naive packer, which simply places things
        -- one after the other without considering anything more than a single
        -- field at a time.
        
        packField :: (Int, [FieldEncoding]) -> Ty -> (Int, [FieldEncoding])
        packField (bit, fencs) t@(Tcon qtcon) =
          (bit + width, FieldEncoding { fieldType = t
                                      , fieldBit = bit
                                      , fieldWidth = width } : fencs)
          where
            fieldTypeEnc = findTCEncoding tei qtcon
            width = totalBits fieldTypeEnc

        packField _ t =
            error $ "packField: don't know how to handle field type " ++ show t

    newcdef _ cdef =
        error $ "newcdef: don't know how to handle " ++ show cdef

encodeType _ typeDef =
    error $ "encodeType: Don't know how to handle " ++ show typeDef

-- | Generate Verilog declarations for all our types
typeDefs :: TypeEncodingInfo -> [V.Description]
typeDefs (TypeEncodingInfo { tconInfo = tdi }) =
  concatMap typeDescription $ filter (not . isPrimType . tconOf ) (map snd tdi)
  where
    isPrimType (Just m, _) | m == primMname = True
    isPrimType (_, "Bool") = True -- The Bool type is a special case
    isPrimType _ = False

typeDescription :: TconEncoding -> [V.Description]
typeDescription tde = mainTypedef : constructorFunctions
  where
    nameOfType = tconName $ tconOf tde
    mainTypedef = V.Typedef (V.Unsigned $ totalBits tde) nameOfType
    constructorFunctions = map constructorFunction $ dconEncs tde

    -- Create a Verilog function for a data constructor
    constructorFunction :: DconEncoding -> V.Description
    constructorFunction cde =
      V.Function (V.Named nameOfType) funcName formalArgs body
      where
        funcName = dconName $ dconOf cde
        argNames = map (\n -> 'z' : show n) [(1::Int) ..
                                             length $ fieldEncodings cde]
        formalArgs = zip argNames $ map (vTypeOf . fieldType)
                                        $ fieldEncodings cde
        body = V.SeqBlock [] (initializeStmt : setTagStmt ++ setFieldStmts)
        
        -- Set all the fields initially to don't-care 
        initializeStmt = V.Blocking (V.Var funcName) $
                         V.Unknown $ totalBits tde

        -- Assign the tag bits if there are any
        setTagStmt = if tagBits tde < 1 then [] else
                       [V.Blocking (V.Slice funcName (tagBits tde - 1) 0) $
                                   V.Sized (tagBits tde) (tagValue cde)]

        -- Assign each field from the argument passed to the function
        setFieldStmts = zipWith setFieldStmt argNames $ fieldEncodings cde
        
        setFieldStmt :: String -> FieldEncoding -> V.Statement
        setFieldStmt arg fenc =
          V.Blocking (V.Slice funcName (bit + width - 1) bit)
                     (V.LValue $ V.Var arg)
          where
            bit = fieldBit fenc
            width = fieldWidth fenc
        
-- | Return a Verilog type name for a Core type
vTypeOf :: Ty -> V.Type
vTypeOf (Tcon qtc) = V.Named $ tconName qtc
vTypeOf (Tapp _ t) = vTypeOf t -- Strip type applications, e.g., Stream
vTypeOf UndefinedTy = error "vTypeOf : found an UndefinedType"
vTypeOf t@_ = error $ "vTypeOf: unsupported type " ++ show t

-- | Return an expression for a data constructor given its arguments
-- Note: the number of Verilog arguments should match those of the Dcon
dconExpr :: TypeEncodingInfo -> Qual Dcon -> [V.Expr] -> V.Expr
dconExpr _ qdc = V.Call (dconName qdc)

-- | Return an expression representing the tag of the given type constructor
tagExpr :: TypeEncodingInfo -> V.Expr -> Qual Tcon -> V.Expr
tagExpr tei expr qtc = case tagBits (findTCEncoding tei qtc) of
  0 -> error $ "tagExpr: no tag bits available for " ++ show qtc
  b -> V.SliceE expr (b - 1) 0

-- | Return a constant expression representing the value of the
-- tag for a particular data constructor
tagVal :: TypeEncodingInfo -> Qual Dcon -> V.Expr
tagVal tei qdc = V.Literal $ tagValue $ findDCEncoding tei qdc

-- | For a given data constructor and a Verilog expression referring to an
-- object of that type, return a list of Verilog expressions that return
-- the sub-fields of the data constructor
fieldExprs :: TypeEncodingInfo -> Qual Dcon -> V.Expr -> [V.Expr]
fieldExprs tei qdc expr =
    map selectField fields
        where
          fields = fieldEncodings $ findDCEncoding tei qdc
          selectField fe =
              V.SliceE expr (bit + width - 1) bit
                  where
                    bit = fieldBit fe
                    width = fieldWidth fe

-- | For a given type, return an Unknown literal for it
unknownVal :: TypeEncodingInfo -> Ty -> V.Expr
unknownVal tei ty = V.Unknown $ totalBits $ findTCEncoding tei $ tcon ty

-- | Return encoding information for a given type constructor; error if not found
findTCEncoding :: TypeEncodingInfo -> Qual Tcon -> TconEncoding
findTCEncoding tei qtc =
    fromMaybe (error $ "findTCEncoding: no encoding found for " ++ show qtc)
              (lookup qtc $ tconInfo tei)

-- | Return encoding information for a given data constructor; error if not found
findDCEncoding :: TypeEncodingInfo -> Qual Dcon -> DconEncoding
findDCEncoding tei qdc =
  fromMaybe (error $ "findEncoding: no encoding found for " ++ show qdc)
            (lookup qdc $ dconInfo tei)

-- | Return the SystemVerilog name of a type constructor
tconName :: Qual Tcon -> String
tconName = qualName

-- | Return the SystemVerilog name of a data constructor

-- Since type constructors and data constructors are in different namespaces
-- in Core, we need to prefix these with dc_ to put them in a different
-- namespace in SystemVerilog
dconName :: Qual Dcon -> String
dconName dc = "dc_" ++ qualName dc


-- | Find the Tcon for a given type. Error if it isn't a simple type
tcon :: Ty -> Qual Tcon
tcon (Tcon qtc) = qtc
tcon t = error $ "tcon called on " ++ show t

-- | Return a long version of a qualified name
-- This isn't really that type-related, but everything needs it
--
-- The more natural thing would be to use module:path.path, but
-- even escaped, Quartus doesn't like having colons in an identifier
qualName :: Qual String -> String
qualName (Nothing, v) = v
qualName (Just _,"main") = "main"
qualName (Just (M (P pack, mpath, mname)), v) = 
  pack ++ "." ++ intercalate "." (mpath ++ [mname] ++ [v])

-- | Return the number of bits necessary to encode a given number of fields
logEncodingBits :: Int -> Int
logEncodingBits n
  | n <= 1 = 0
  | n <= 2 = 1
  | n <= 4 = 2
  | n <= 8 = 3
  | n <= 16 = 4
  | n <= 32 = 5
  | n <= 64 = 6
  | otherwise = error $ "logEncodingBits: excessive number of fields " ++ show n


-- | Topologically sort a list of type defintions so that each type depends only
-- on earlier ones in the list

-- trace ("graph: " ++ show edges ++ "\ngives order " ++ show order) $

sortTdefs :: [Tdef] -> [Tdef]
sortTdefs tdefs = map tdefFor order
    where
      order = reverse $ topSort graph
      graph = buildG (1, nTypes) edges
      edges = concatMap tdefEdges tdefs

      nTypes = length tdefs

      -- Array from indexes to Tdefs
      indexToTdef = Array.array (1, nTypes) (zip [1..] tdefs)
      tdefFor i = indexToTdef Array.! i

      -- Map from Tcon to indexes
      tconToIndex = Map.fromList $ map (\ (i,td) -> (tdtcon td, i)) $
                    Array.assocs indexToTdef
      indexOf tc = fromMaybe 0 $ Map.lookup tc tconToIndex

      -- Extract the tcon being defined from a type definition
      tdtcon :: Tdef -> Qual Tcon
      tdtcon (Data tc _ _) = tc

      -- Integer edge information for a Tdef
      -- trace ("New type " ++ show tc ++ "\ngives " ++ show tedges)
      tdefEdges :: Tdef -> [(Int, Int)]
      tdefEdges (Data tc _ cds) = tedges
          where
            tedges = concatMap cdefToEdges cds
            sourceIndex = indexOf tc
            cdefToEdges :: Cdef -> [(Int, Int)]
            cdefToEdges (Constr _ _ tys) =
                zip (repeat sourceIndex) $ -- Turn into (src, dst) pairs
                    filter (0 <) $       -- ignore unknown types
                           map indexOf $   -- convert to indices
                           concatMap tycons tys -- all the successors

            tycons :: Ty -> [Qual Tcon]
            tycons (Tvar _) = []
            tycons (Tcon tt) = [tt]
            tycons (Tapp t1 t2) = tycons t1 ++ tycons t2
            tycons (Tforall _ t) = tycons t
            tycons t =
                error $ "tycons: unsupported type declaration " ++ show t



{-

data State = Foo Int Int
           | Bar Int

------------------------------ OLD ------------------------------

typedef enum {\main:FSM3.Foo_tagv ,
              \main:FSM3.Bar_tagv } \main:FSM3.State_tags ;

typedef struct packed {
          \main:FSM3.State_tags  tag;
          union packed {
            struct packed {
              \ghc-prim:GHC.Types.Int  a1;
              \ghc-prim:GHC.Types.Int  a2;
            } \main:FSM3.Foo_v ;
            struct packed { \ghc-prim:GHC.Types.Int  a1;
            } \main:FSM3.Bar_v ;
          } val;
        } \main:FSM3.State ;

function \main:FSM3.State  \dc_main:FSM3.Foo  (\ghc-prim:GHC.Types.Int  z1, \gh
c-prim:GHC.Types.Int  z2);
  begin
    \dc_main:FSM3.Foo .tag = \main:FSM3.Foo_tagv ;
    \dc_main:FSM3.Foo .val.\main:FSM3.Foo_v .a1 = z1;
    \dc_main:FSM3.Foo .val.\main:FSM3.Foo_v .a2 = z2;
  end
endfunction

function \main:FSM3.State  \dc_main:FSM3.Bar  (\ghc-prim:GHC.Types.Int  z1);
  begin
    \dc_main:FSM3.Bar .tag = \main:FSM3.Bar_tagv ;
    \dc_main:FSM3.Bar .val.\main:FSM3.Bar_v .a1 = z1;
  end
endfunction

------------------------------ NEW ------------------------------

const logic \main:FSM3.Foo_tagv = 1'b0;
const logic \main:FSM3.Bar_tagv = 1'b1;


verilator --lint-only -Wall new-FSM3.sv --top-module FSM3

-}
