{-|
Module : Dfc.AlgebraicTypes
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

-}

module Dfc.Verilog.AlgebraicTypes
    ( TypeEncodingInfo(..)
    , encodeTypes
    , typeDefs
    , vTypeOf
    , dconsOf
    , dconExpr
    , tagExpr
    , tagVal
    , fieldExprs
    , totalBitsOf
    , tagBitsOf
    , ptrWidth
    , variantTuples
    , largestTag
    , unknownVal
    , invalidExpr
    , memoryTypes
    )
where

import qualified Dfc.Verilog.SystemVerilog as V
import Dfc.AST

import Data.Graph ( buildG, topSort )
import qualified Data.Array as Array
import qualified Data.Map.Strict as Map
import Data.List ( isPrefixOf )
import Data.Maybe ( fromMaybe )

-- | Encoding information about every type: association lists
data TypeEncodingInfo =
  TypeEncodingInfo { tconInfo :: [(Tcon, TconEncoding)]
                   , dconInfo :: [(Dcon, DconEncoding)]
                   }

-- | Encoding information for a type constructor
data TconEncoding =
    TconEncoding { tconOf :: Tcon   -- ^ Original type constructor 
                 , tagBits :: Int        -- ^ Number of bits for the tag
                 , totalBits :: Int      -- ^ Number of bits for a whole object
                 , dconEncs :: [DconEncoding] -- ^ Associated data constructors
                 }

-- | Encoding information for a data constructor
data DconEncoding =
    DconEncoding { dconOf :: Dcon -- ^ Name of the data constructor
                 , tagValue :: Integer -- ^ Tag value for this data constructor
                 , fieldEncodings :: [FieldEncoding] -- ^ Encoding of each field
                 }

-- | Encoding information for a single field of a data constructor
data FieldEncoding = FieldEncoding { fieldType :: Tcon   -- ^ Type of field
                                   , fieldBit :: Int   -- ^ First bit of field
                                   , fieldWidth :: Int -- ^ Number of bits
                                   }

-- | Build up encoding information for a list of types in any order
encodeTypes :: [Tdef] -> TypeEncodingInfo
encodeTypes tdefs =
  TypeEncodingInfo { tconInfo = reverse tdi
                   , dconInfo = cdi }
  where
    TypeEncodingInfo { tconInfo = tdi
                     , dconInfo = cdi } =
      foldl encodeType (TypeEncodingInfo {tconInfo = [], dconInfo = []}) $
            sortTdefs tdefs

-- | Add encoding information for a single type definition
encodeType :: TypeEncodingInfo -> Tdef -> TypeEncodingInfo

-- TODO: need to distinguish signed from unsigned
encodeType (TypeEncodingInfo tdefinfo cdefinfo) (Unsigned tc bits) =
  TypeEncodingInfo { tconInfo = (tc, newtdef) : tdefinfo
                   , dconInfo = cdefinfo }
  where
      newtdef = TconEncoding { tconOf = tc
                             , tagBits = 0
                             , totalBits = bits
                             , dconEncs = [] }

encodeType (TypeEncodingInfo tdefinfo cdefinfo) (Signed tc bits) =
  TypeEncodingInfo { tconInfo = (tc, newtdef) : tdefinfo
                   , dconInfo = cdefinfo }
  where
      newtdef = TconEncoding { tconOf = tc
                             , tagBits = 0
                             , totalBits = bits
                             , dconEncs = [] }

encodeType tei@(TypeEncodingInfo tdefinfo cdefinfo) (Tdef tc variants) =
  TypeEncodingInfo { tconInfo = (tc,newtdef) : tdefinfo
                   , dconInfo = newcdefs ++ cdefinfo }
  where
    newtdef = TconEncoding { tconOf = tc
                           , tagBits = tBits
                           , totalBits = maxBit
                           , dconEncs = map snd newcdefs }

    -- TODO: This assumes sequential log encoding for tag fields; there
    -- may be a better way, e.g., one-hot encoding
    newcdefs = zipWith newcdef [0 ..] variants

    -- Set the number of bits to the be the maximum over all sub-fields
    maxBit = maximum (tBits : map highestBit
                                (concatMap (fieldEncodings . snd) newcdefs))
    highestBit fe = fieldBit fe + fieldWidth fe

    tBits = logEncodingBits $ length variants

    newcdef :: Integer -> Variant -> (Dcon, DconEncoding)
    newcdef index (Variant dcon fields) =
      (dcon, DconEncoding { dconOf = dcon
                          , tagValue = index
                          , fieldEncodings =
                              reverse $ snd $ foldl packField (tBits, []) fields } )
      where

        -- TODO: This is a naive packer, which simply places things
        -- one after the other without considering anything more than a single
        -- field at a time.
        
        packField :: (Int, [FieldEncoding]) -> Tcon -> (Int, [FieldEncoding])
        packField (bit, fencs) tcon =
          (bit + width, FieldEncoding { fieldType = tcon
                                      , fieldBit = bit
                                      , fieldWidth = width } : fencs)
          where
            fieldTypeEnc = findTCEncoding tei tcon
            width = totalBits fieldTypeEnc

-- | Generate Verilog declarations for all our types
typeDefs :: TypeEncodingInfo -> [V.Description]
typeDefs TypeEncodingInfo { tconInfo = tdi } =
  concatMap (typeDescription . snd) tdi

typeDescription :: TconEncoding -> [V.Description]
typeDescription tde = mainTypedef : constructorFunctions
  where
    nameOfType = tconName $ tconOf tde
    mainTypedef = V.Typedef (V.Unsigned $ toInteger $ (1 + totalBits tde)) nameOfType
    constructorFunctions = map constructorFunction $ dconEncs tde

    -- Create a Verilog function for a data constructor
    constructorFunction :: DconEncoding -> V.Description
    constructorFunction cde =
      V.Function (V.Named nameOfType) funcName formalArgs body
      where
        funcName = dconName $ dconOf cde
        argNames = map (\n -> 'z' : show n) [(1::Int) ..
                                             length $ fieldEncodings cde]
        formalArgs = ("valid", V.Boolean) :
                 zip argNames (map (vTypeOf . fieldType) $ fieldEncodings cde)
        body = V.SeqBlock [] (initializeStmt : setValidStmt :
                              setTagStmt ++ setFieldStmts)
        
        -- Set all the fields initially to don't-care 
        initializeStmt = V.Blocking (V.Var funcName) $
                         V.Unknown $ 1 + totalBits tde

        -- Assign the valid bit
        setValidStmt = V.Blocking (V.Slice funcName 0 0) $
                       V.LValue $ V.Var "valid"

        -- Assign the tag bits if there are any
        setTagStmt = if tagBits tde < 1 then [] else
                       [V.Blocking (V.Slice funcName (tagBits tde) 1) $
                                   V.Sized (tagBits tde) (tagValue cde)]

        -- Assign each field from the argument passed to the function
        setFieldStmts = zipWith setFieldStmt argNames $ fieldEncodings cde
        
        -- Write the argument into the appropriate field after stripping
        -- off its valid bit the (LSB)
        setFieldStmt :: String -> FieldEncoding -> V.Statement
        setFieldStmt arg fenc =
            if width > 0 then
              V.Blocking (V.Slice funcName (bit + width) (bit + 1))
                         $ V.LValue (V.Slice arg width 1)
            else
              V.Null
          where
            bit = fieldBit fenc
            width = fieldWidth fenc
        
vTypeOf :: Tcon -> V.Type
vTypeOf tc = V.Named $ tconName tc


-- | Return the data constructors for the given type constructor
dconsOf :: TypeEncodingInfo -> Tcon -> [Dcon]
dconsOf tei tcon = map dconOf $ dconEncs $ findTCEncoding tei tcon

-- | Return an expression for a data constructor given its arguments
-- Note: the number of Verilog arguments should match those of the Dcon
dconExpr :: TypeEncodingInfo -> Dcon -> [V.Expr] -> V.Expr
dconExpr _ qdc = V.Call (dconName qdc)

-- | Return an expression representing the tag of the given type constructor
tagExpr :: TypeEncodingInfo -> V.Expr -> Tcon -> V.Expr
tagExpr tei expr qtc = case tagBits (findTCEncoding tei qtc) of
  0 -> error $ "tagExpr: no tag bits available for " ++ show qtc
  b -> V.SliceE expr b 1

-- | Return a constant expression representing the value of the
-- tag for a particular data constructor
tagVal :: TypeEncodingInfo -> Dcon -> V.Expr
tagVal tei qdc = V.Literal $ tagValue $ findDCEncoding tei qdc

-- | For a given data constructor and a Verilog expression referring to an
-- object of that type, return a list of Verilog expressions that return
-- the sub-fields of the data constructor
fieldExprs :: TypeEncodingInfo -> Dcon -> V.Expr -> [Maybe V.Expr]
fieldExprs tei qdc expr =
    map selectField fields
        where
          fields = fieldEncodings $ findDCEncoding tei qdc
          selectField fe =
              if width > 0 then Just $ V.SliceE expr (bit + width - 1) bit
              else Nothing
                  where
                    bit = 1 + fieldBit fe
                    width = fieldWidth fe

-- | For a given type, return a tuple for each variant specifying its
-- tag and a list of its fields' bit-widths
variantTuples :: TypeEncodingInfo -> Tcon -> [(Integer, [(Int, Bool)])]
variantTuples tei tc = map mkTuple $ dconEncs $ findTCEncoding tei tc
  where
    mkTuple dcEnc = (tagValue dcEnc, map printWidth (fieldEncodings dcEnc))
    printWidth fEnc = (fieldWidth fEnc, "Pointer" `isPrefixOf` fieldType fEnc)

-- | For a given type corresponding to a heap object, 
-- return the size of the pointer it uses.
ptrWidth :: TypeEncodingInfo -> Tcon -> Maybe Int
ptrWidth tei tc = if null ptrs then Nothing else Just (fieldWidth $ head ptrs)
  where
    ptrs = filter (("Pointer_" `isPrefixOf`) . fieldType) $
           concatMap fieldEncodings $ dconEncs $ findTCEncoding tei tc

-- | For a given type, return the number of bits used to encode it
totalBitsOf :: TypeEncodingInfo -> Tcon -> Int
totalBitsOf tei tc = totalBits $ findTCEncoding tei tc

-- | Return the number of bits used for the tag of a given type
tagBitsOf :: TypeEncodingInfo -> Tcon -> Int
tagBitsOf tei tc = tagBits $ findTCEncoding tei tc

-- | Return the highest-numbered tag
largestTag :: TypeEncodingInfo -> Tcon -> Integer
largestTag tei tc = maximum $ map tagValue $ dconEncs $ findTCEncoding tei tc

-- | For a given type, return an Unknown literal for it
unknownVal :: TypeEncodingInfo -> Tcon -> V.Expr
unknownVal tei tc = V.Unknown $ totalBits $ findTCEncoding tei tc

-- | Return a SystemVerilog expression for an invalid word for the given type
invalidExpr :: TypeEncodingInfo -> Tcon -> V.Expr
invalidExpr tei tcon = if bits > 0 then V.Concat [ V.Unknown bits, V.Sized 1 0 ]
                       else V.Sized 1 0
   where
    bits = totalBitsOf tei tcon

-- | For a memory command type (read/write), return
--   The number of address bits
--   The Verilog type of the data
--   An expression for the address of a read or write command
--   An expression for the data of a write command
--
-- Assumes the command type is of the form
-- data Cmd = Read addr
--          | Write addr data
memoryTypes :: TypeEncodingInfo -> Tcon -> V.Expr -> (Int, V.Type,
                                                      V.Expr, V.Expr)
memoryTypes tei tc expr =
    ( fieldWidth addrField, V.Unsigned $ toInteger $ (fieldWidth dataField)
    , sliceField expr addrField
    , sliceField expr dataField )
   where
       [_, writeDCon] = dconEncs $ findTCEncoding tei tc
       [addrField, dataField] = fieldEncodings writeDCon
       sliceField e field = V.SliceE e end begin
         where
          begin = 1 + fieldBit field
          end = begin + fieldWidth field - 1                       

-- | Return encoding information for a given type constructor; error if not found
findTCEncoding :: TypeEncodingInfo -> Tcon -> TconEncoding
findTCEncoding tei tc =
    fromMaybe (error $ "findTCEncoding: no encoding found for " ++ show tc)
              (lookup tc $ tconInfo tei)

-- | Return encoding information for a given data constructor; error if not found
findDCEncoding :: TypeEncodingInfo -> Dcon -> DconEncoding
findDCEncoding tei qdc =
  fromMaybe (error $ "findEncoding: no encoding found for " ++ show qdc)
            (lookup qdc $ dconInfo tei)

-- | Return the SystemVerilog name of a type constructor
tconName :: Tcon -> String
tconName s = s ++ "_t"

-- | Return the SystemVerilog name of a data constructor

-- Since type constructors and data constructors are in different namespaces
-- in Core, we need to prefix these with dc_ to put them in a different
-- namespace in SystemVerilog
dconName :: Dcon -> String
dconName dc = dc ++ "_dc"

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
      tdtcon :: Tdef -> Tcon
      tdtcon (Tdef tc _) = tc
      tdtcon (Unsigned tc _) = tc
      tdtcon (Signed tc _) = tc

      -- Integer edge information for a Tdef
      -- trace ("New type " ++ show tc ++ "\ngives " ++ show tedges)
      tdefEdges :: Tdef -> [(Int, Int)]
      tdefEdges (Unsigned _ _) = []
      tdefEdges (Signed _ _) = []
      tdefEdges (Tdef tc variants) = tedges
          where
            tedges = concatMap variantToEdges variants
            sourceIndex = indexOf tc
            variantToEdges :: Variant -> [(Int, Int)]
            variantToEdges (Variant _ tys) =
                zip (repeat sourceIndex) $ -- Turn into (src, dst) pairs
                    filter (0 <) $       -- ignore unknown types
                           map indexOf tys   -- convert to indices
