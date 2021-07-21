{-
Module : Fhw.Pass.Dataflow.NodeTypes
Description : The abstract syntax of our dataflow language. 

These type definitions form the abstract syntax for our dataflow
graphs. These graphs bridge the gap between a restricted Core program
and SystemVerilog. 

A dataflow network is specified with a list of algebraic type definitions
and a list of nodes. The former encompasses the non-integer types that
data tokens may take, while the latter describes the topology and
functionality of the network.

Nodes are primitive functional units. Each node exposes
its connectivity to other nodes as well as the types of tokens it outputs.

At this level of abstraction, tokens passing between nodes 
may be of two types: integers and algebraic types.

-}
{-# LANGUAGE DeriveDataTypeable #-}
module Fhw.Pass.Dataflow.NodeTypes (
  -- * Abstract Dataflow Syntax
  Dataflow(..),
  Node(..),
  Type(..),
  Op(..),
  Tydef(..),
  Codef(..),
  Func(..),

  -- * Pretty Printing
  pdataflow,

  -- * Correctness checker
  verify,

  -- * Dot Output
  toDotDataflow,

  -- * Common computation
  mkNameSet,

  -- * Extracting information 
  findDef,
  getInputs,
  getOutputs,
  getTyCon,
  getDcon,
  isMergeChoice
) where

import Text.PrettyPrint
import Control.Monad 
import Control.Applicative ((<$>))
import Data.List 
import Data.Char 
import Data.Maybe
import Data.Generics (Data, Typeable)
import Fhw.Core.Core

--import Debug.Trace

-- | Types and topology of a dataflow network
data Dataflow = Dataflow [Tydef] [Node]

-- | A general node in our dataflow networks
data Node = Node [Id]        --input port identifiers String
                 Op          --Node type
                 [Id]        --output port destinations
  deriving (Eq,Ord,Show)

type Id = String

-- | Different nodes and the types of their data tokens
data Op = Merge Int Type        
        | Fork Int Type         
        | MergeChoice Type Type  
        | Mux Type [Dcon]       
        | Demux Type [Dcon]     
        | IConst Int Int      
        | Func Func 
        | Destruct (Dcon,[Int])
        | Source Type           
        | Sink Type             
        | CSink Type
        | CallLock [Type]       
        | InitBuf Dcon    -- initialized with the given constant Dcon
        | ToGo Type       -- converts an arbitrary token into a Go token
        | Bram Type Type  -- specify input & output types
        | Buffer Type     -- Data-Ready buffer pair
        | RBuf Type       -- Ready buffer
        | DBuf Type       -- Data buffer
  deriving (Eq,Ord,Show)

-- | Primitive functions 
data Func = Add Int | Sub Int | Mul Int | Div Int | Mod Int
          | Xor Int | Cast Int Int
          | Lt  | Gt  | Eq  | Lteq | Gteq
          | And | Or  | Not
          | Read  Type Type --Memory operations specify input and output types
          | Write Type Type   
          | Dcons String --name of constructor (arg types are inferred)
  deriving (Eq,Ord,Show,Data,Typeable)

-- Type definition representation mirrors the representation
-- used in FHW.Core (without type variables)
data Tydef = Tydef Tcon [Codef] deriving (Eq,Ord,Show)
data Codef = Codef Dcon [Type]  deriving (Eq,Ord,Show)


-- | Data token types 
data Type = Int' Int    --Sized integer
          | Tycon Tcon --Name of user-defined type
  deriving (Eq,Ord,Show,Data,Typeable)

instance Show Dataflow where
  showsPrec _ d = shows (pdataflow d)


-- | Access the type constructor in a Type definition
getTyCon :: Tydef -> Tcon
getTyCon (Tydef tcon _) = tcon

-- | Access the data constructor in a Constructor definition
getDcon :: Codef -> Dcon
getDcon (Codef dcon _) = dcon

getInputs :: Node -> [String]
getInputs (Node ins _ _) = ins

getOutputs :: Node -> [String]
getOutputs (Node _ _ outs) = outs

isMergeChoice :: Node -> Bool
isMergeChoice (Node _ (MergeChoice _ _) _) = True
isMergeChoice _ = False

-- | Given a positive number n and a function f, generate
-- a set of names with suffixes [1..n] using f
mkNameSet :: Int -> (String -> String) -> [String]
mkNameSet num f = map (f . show) [1..num]

-- | Print dot representation of Dataflow instance
toDotDataflow :: Dataflow -> String
toDotDataflow (Dataflow _ nodes) = do
  nodesWithNames <- [getNodeNamesFrom nodes 0]
  "digraph Dataflow {\n" ++ getEdgesFrom nodesWithNames nodesWithNames ++ 
    getVerticesFrom nodesWithNames ++ 
    "\noverlap=false;\nratio=\"fill\";\nsize=\"8.3,11.7!\";\nmargin=0;\n}"

getNodeNamesFrom :: [Node] -> Int -> [(Node, String)]
getNodeNamesFrom [] _ = []
getNodeNamesFrom (node:nodes) count = (node, dotnodename node count) :
                                      getNodeNamesFrom nodes (count+1)

getEdgesFrom :: [(Node, String)] -> [(Node, String)] -> String
getEdgesFrom [] _ = ""
getEdgesFrom ((Node _ _ outputs, curNodename):xs) allNodes = 
  foldl helper "" allNodes ++
  getEdgesFrom xs allNodes
  where
    helper s (Node inputs _ _, nodename) = s ++ 
      if not $ null $ intersect inputs outputs 
      then curNodename ++ "->" ++ nodename ++ "\n" 
      else ""

getVerticesFrom :: [(Node, String)] -> String
getVerticesFrom [] = ""
getVerticesFrom ((Node _ op _, nodename):nodes) = dotOp nodename op ++ 
                                                  getVerticesFrom nodes

dotnodename :: Node -> Int -> String
dotnodename (Node _ (Merge _ _) _)         count = "Merge" ++ show count
dotnodename (Node _ (Fork  _ _) _)         count = "Fork" ++ show count
dotnodename (Node _ (MergeChoice _ _) _)   count = "MergeChoice" ++ show count
dotnodename (Node _ (Source _) _)          count = "Source" ++ show count
dotnodename (Node _ (Sink _) _)            count = "Sink" ++ show count
dotnodename (Node _ (Mux _ _) _)           count = "Mux" ++ show count
dotnodename (Node _ (Demux _ _) _)         count = "Demux" ++ show count
dotnodename (Node _ (IConst _ _) _)        count = "IConst" ++ show count
dotnodename (Node _ (Func (Add _)) _)      count = "Add" ++ show count
dotnodename (Node _ (Func (Sub _)) _)      count = "Sub" ++ show count
dotnodename (Node _ (Func (Mul _)) _)      count = "Mul" ++ show count
dotnodename (Node _ (Func (Div _)) _)      count = "Div" ++ show count
dotnodename (Node _ (Func (Xor _)) _)      count = "Xor" ++ show count
dotnodename (Node _ (Func (Mod _)) _)      count = "Mod" ++ show count
dotnodename (Node _ (Func (Cast _ _)) _)   count = "Cast" ++ show count
dotnodename (Node _ (Func Lt)  _)          count = "Lt" ++ show count
dotnodename (Node _ (Func Lteq)  _)        count = "Lteq" ++ show count
dotnodename (Node _ (Func Gteq)  _)        count = "Gteq" ++ show count
dotnodename (Node _ (Func Gt)  _)          count = "Gt" ++ show count
dotnodename (Node _ (Func Eq)  _)          count = "Eq" ++ show count 
dotnodename (Node _ (Func And) _)          count = "And" ++ show count
dotnodename (Node _ (Func Or)  _)          count = "Or" ++ show count
dotnodename (Node _ (Func Not) _)          count = "Not" ++ show count
dotnodename (Node _ (Func (Read _ ty)) _)  count = "Read" ++ show count ++ dottts ty
dotnodename (Node _ (Func (Write _ ty)) _) count = "Write" ++ show count ++ dottts ty
dotnodename (Node _ (Func (Dcons ty)) _)   count = "Dcons" ++ show count ++ cleanup ty
dotnodename (Node _ (CallLock _) _)        count = "CallLock" ++ show count
dotnodename (Node _ (Destruct _) _)        count = "Destruct" ++ show count
dotnodename (Node _ (CSink _) _)           count = "CSink" ++ show count
dotnodename (Node _ (Bram _ _) _)          count = "Bram" ++ show count
dotnodename (Node _ (InitBuf _) _)         count = "InitBuf" ++ show count
dotnodename (Node _ (Buffer _) _)          count = "Buf" ++ show count
dotnodename (Node _ (RBuf _) _)            count = "RBuf" ++ show count
dotnodename (Node _ (DBuf _) _)            count = "DBuf" ++ show count
dotnodename (Node _ (ToGo _) _)            count = "ToGo" ++ show count

dottts :: Type -> String
dottts (Tycon name) = name
dottts (Int' size) = "Int_" ++ show size

-- | Hack to avoid putting # in any names; this seems to mess up the dot file
cleanup :: String -> String
cleanup st = if last st == '#'
              then init st
              else st

dotOp :: String -> Op -> String
dotOp nodename (Merge _ _)         = nodename ++ "[label=\"Merge\",shape=invtrapezium];\n"
dotOp nodename (Fork  _ _)         = nodename ++ "[label=\"Fork\",shape=triangle];\n"
dotOp nodename (MergeChoice _ _)   = nodename ++ "[label=\"MergeChoice\",shape=trapezium];\n"
dotOp nodename (Source _)          = nodename ++ "[label=\"Source\",shape=plaintext];\n"
dotOp nodename (Sink _)            = nodename ++ "[label=\"Sink\",shape=plaintext];\n"
dotOp nodename (Mux _ _)           = nodename ++ "[label=\"Mux\",shape=trapezium];\n"
dotOp nodename (Demux _ _)         = nodename ++ "[label=\"Demux\",shape=invtrapezium];\n"
dotOp nodename (IConst _ _)        = nodename ++ "[label=\"IConst\",shape=rectangle];\n" 
dotOp nodename (Func (Dcons ty))   = nodename ++ "[label=\"" ++ cleanup ty ++ "\",shape=rectangle];\n"
dotOp nodename (Func (Read _ ty))  = nodename ++ "[label=\"read" ++ dottts ty ++ "\",shape=rectangle];\n"
dotOp nodename (Func (Write _ ty)) = nodename ++ "[label=\"write" ++ dottts ty ++ "\",shape=rectangle];\n"
dotOp nodename (CallLock _)        = nodename ++ "[label=\"CallLock\",shape=rectangle];\n"
dotOp nodename (Destruct _)        = nodename ++ "[label=\"Destruct\",shape=invtrapezium];\n"
dotOp nodename (CSink  _)          = nodename ++ "[label=\"Sink\",shape=rectangle];\n"
dotOp nodename (Bram _ _)          = nodename ++ "[label=\"Bram\",shape=rectangle];\n"
dotOp nodename (InitBuf _)         = nodename ++ "[label=\"InitBuf\",shape=rectangle];\n"
dotOp nodename (Buffer _)          = nodename ++ "[label=\"Buf\",shape=rectangle];\n"
dotOp nodename (RBuf _)            = nodename ++ "[label=\"RBuf\",shape=rectangle];\n"
dotOp nodename (DBuf _)            = nodename ++ "[label=\"DBuf\",shape=rectangle];\n"
dotOp nodename (ToGo _)            = nodename ++ "[label=\"ToGo\",shape=rectangle];\n"
dotOp nodename (Func op)           = nodename ++ "[label=\"" ++ showOp op ++ "\",shape=rectangle];\n"
  where
    showOp (Add _)          = "add"
    showOp (Sub _)          = "sub"
    showOp (Mul _)          = "mul"
    showOp (Div _)          = "div"
    showOp (Xor _)          = "xor"
    showOp (Mod _)          = "mod"
    showOp (Cast _ _)       = "cast"
    showOp Lt               = "lt"
    showOp Lteq             = "lteq"
    showOp Gteq             = "gteq"
    showOp Gt               = "gt"
    showOp And              = "and"
    showOp Or               = "or"
    showOp Not              = "not"
    showOp _                = "ERROR"

-- | Pretty print a Dataflow instance
pdataflow :: Dataflow -> Doc
pdataflow (Dataflow tdefs nodes) = vcat (map text sigs) $$
                                   vcat (map ptdef tdefs) $$  
                                   vcat (map (pnode tdefs) nodes)
sigs :: [String]
sigs = ["sink a: a > ;"
       ,"source a:  > a;"
       ,"merge a: a+ > a;"
       ,"mergectrl s d : d^(variants s) > s d ;"
       ,"fork a: a > a+;"
       ,"dcon a (b : (dcon a)): (dcon_fields b) > a;"
       ,"destruct a (b: (dcon a)): a > (dcon_fields b);"
       ,"mux a b: a b^(variants a) > b;"
       ,"demux a b: a b > b^(variants a);"
       ,"const a (b : a): Go > a;"
       ,"initbuf a (b : (dcon a)) : a > a ;"
       ,"initibuf a (b : a) : a > a ;"
       ,"buf a: a > a;"
       ,"dbuf a: a > a;"
       ,"rbuf a: a > a;"
       ,"togo a : a > Go ;"
       ,"tap a : a > ;"
       ,"read a b: a > b;"
       ,"write a b: a > b;"
       ,"bram a b: a > b;"
       ,"not a: a > a;"
       ,"cast a b:  a > b ;"
       ,"/* Binary operations */"
       ,"op_add a: a a > a ;"
       ,"op_sub a: a a > a ;"
       ,"op_mul a: a a > a ;"
       ,"op_div a:  a a > a ;"
       ,"op_xor a: a a > a ;"
       ,"op_mod a:  a a > a ;"
       ,"op_eq a: a a > Bool;"
       ,"op_lt a: a a > Bool;"
       ,"op_gt a: a a > Bool;"
       ,"op_lteq a: a a > Bool;"
       ,"op_gteq a: a a > Bool;"
       ,"op_and a: a a > a;"
       ,"op_or a:  a a > a;"
       ,"/* Primitive Types */"
       ,"data \\Int4# signed 4 ;"
       ,"data \\Int8# signed 8 ;"
       ,"data \\Int16# signed 16 ;"
       ,"data \\Int# signed 32 ;"
       ,"data \\Word4# unsigned 4 ;"
       ,"data \\Word8# unsigned 8 ;"
       ,"data \\Word16# unsigned 16 ;"
       ,"data \\Word# unsigned 32 ;"]

ptdef :: Tydef -> Doc
ptdef (Tydef "Int" [Codef "I#" [Int' _]]) = 
  text "data" <+> text "Int" <+> char '='
  $$ text "\\I#" <+> text "\\Int#" <+> semi 
ptdef (Tydef tcon cdefs) =
  text "data" <+> showIt tcon <+> char '='
  $$ indent (vcat $ punctuate (space <> char '|') $ map pcdef cdefs) 
  <+> semi

pcdef :: Codef -> Doc
pcdef (Codef dcon tys) = showIt dcon <+> sep (map pTy tys)

pTy :: Type -> Doc
pTy (Tycon name) = showIt name
pTy (Int' _)     = text "\\Int#" --TODO: Not indicating size, currently

pnode :: [Tydef] -> Node -> Doc
pnode tdefs (Node inputs op outputs) = 
    pPorts outs <+> equals <+> pOp tdefs op <+> 
    char '<' <+> pPorts ins <+> semi
  where
    (outs,ins) = case op of
      Destruct (dc,fields) -> let cdef = findCdef dc tdefs
                                  Codef _ tys = cdef
                                  allFields = [0..(length tys - 1)]
                              in (insertThem allFields fields outputs,inputs)
      Mux _ dcons   -> let tdef = findTdef (head dcons) tdefs
                           (choice:rest) = inputs
                           Tydef _ cdefs = tdef
                           allDcons = map getDcon cdefs
                       in (outputs, choice : insertThem allDcons dcons rest)
      Demux _ dcons -> let tdef = findTdef (head dcons) tdefs
                           Tydef _ cdefs = tdef
                           allDcons = map getDcon cdefs
                       in (insertThem allDcons dcons outputs,inputs)
      _ -> (outputs,inputs)

    -- | For each variant or field in a type or dcon, respectively,
    --   if a node doesn't match on that variant/dcon we insert a '_'. 
    --   Otherwise, insert the next port name.   
    insertThem (x : xs) (y : ys) ports
      | x == y = head ports : insertThem xs ys (tail ports)
      | otherwise = "_" : insertThem xs (y:ys) ports
    insertThem xs _ _ = replicate (length xs) "_"

   

findTdef :: Dcon -> [Tydef] -> Tydef
findTdef dc tdefs = 
  let helper = find (\(Codef dcon _) -> dcon == dc)
  in fromMaybe (error $ "No type defining " ++ dc) 
     (find (\(Tydef _ cdefs) -> isJust $ helper cdefs) tdefs)

findCdef :: Dcon -> [Tydef] -> Codef
findCdef dc tdefs = case findTdef dc tdefs of
  Tydef _ cdfs -> fromMaybe dcErr (find ((==dc) . getDcon) cdfs)
  where
    dcErr = error $ "No definition for " ++ dc
                          

pPorts :: [Id] -> Doc
pPorts = hcat . punctuate space . map showIt

pOp :: [Tydef] -> Op -> Doc
pOp tdefs op = case op of
    Merge _ ty            -> text "merge" <+> pTy ty
    Fork  _ ty            -> text "fork"  <+> pTy ty
    MergeChoice chTy dTy  -> text "mergectrl" <+> pTy chTy  <+> pTy dTy 
    Source ty             -> text "source" <+> pTy ty
    Sink ty               -> text "sink"   <+> pTy ty
    CSink ty              -> text "sink"   <+> pTy ty
    Mux ty dcons          -> text "mux"    <+> findTy dcons "mux" <+> pTy ty
    Demux ty dcons        -> text "demux"  <+> findTy dcons "demux" <+> pTy ty
    IConst num size       -> text "const" <+> showIt (mkSizeTy size) <+> int num
    Func f                -> pFunc f
    Bram tIn tOut         -> text "bram" <+> pTy tIn <+> pTy tOut
    CallLock inputTys     -> text "callLock" <+> cat (punctuate space $ 
                                                      map pTy inputTys)
    Destruct dconFields   -> text "destruct" <+> 
                             findTy [fst dconFields] "destruct" <+>
                             showIt (fst dconFields)
    InitBuf dc            -> text "initbuf" <+> findTy [dc] "initbuf" 
                                            <+> showIt dc
    Buffer ty             -> text "buf" <+> pTy ty
    RBuf ty               -> text "rbuf" <+> pTy ty
    DBuf ty               -> text "dbuf" <+> pTy ty
    ToGo ty               -> text "togo" <+> pTy ty
  where
    findTy [] s = error $ "No dcons in a " ++ s
    findTy (dc:_) _ = showIt $ case findTdef dc tdefs of
                       Tydef tc _ -> tc

    --Convert an integer constant size to an appropriate type
    mkSizeTy 32 = "Int#"
    mkSizeTy 16 = "Word16#"
    mkSizeTy 8  = "Word8#"
    mkSizeTy 4  = "Word4#"
    mkSizeTy n  = error $ "Integer constants of size " ++ show n 
                          ++ " aren't yet supported"

    pFunc :: Func -> Doc
    pFunc (Add size)       = text "op_add" <+> showIt (mkSizeTy size) 
    pFunc (Sub size)       = text "op_sub" <+> showIt (mkSizeTy size)
    pFunc (Mul size)       = text "op_mul" <+> showIt (mkSizeTy size)
    pFunc (Div size)       = text "op_div" <+> showIt (mkSizeTy size)
    pFunc (Xor size)       = text "op_xor" <+> showIt (mkSizeTy size) 
    pFunc (Mod size)       = text "op_mod" <+> showIt (mkSizeTy size)
    pFunc (Cast s1 s2)     = text "cast" <+> showIt (mkSizeTy s1) <+> showIt (mkSizeTy s2)
    pFunc Lt               = text "op_lt" <+> showIt "Int#"
    pFunc Lteq             = text "op_lteq" <+> showIt "Int#"
    pFunc Gteq             = text "op_gteq" <+> showIt "Int#"
    pFunc Gt               = text "op_gt" <+> showIt "Int#"
    pFunc Eq               = text "op_eq" <+> showIt "Int#"
    pFunc And              = text "op_and" <+> showIt "Int#"
    pFunc Or               = text "op_or" <+> showIt "Int#"
    pFunc Not              = text "op_not" <+> showIt "Int#"
    pFunc (Dcons name)     = text "dcon" <+> findTy [name] "dcon" 
                                         <+> showIt name
    pFunc (Read tIn tOut)  = text "read" <+> pTy tIn <+> pTy tOut
    pFunc (Write tIn tOut) = text "write" <+> pTy tIn <+> pTy tOut

-- | Escape an identifier if it contains non-standard characters
showIt :: String -> Doc
showIt s = if any (not . isNameChar) s
            then text $ '\\':s
            else text s
  where
    isNameChar c = isLetter c || isDigit c || c == '_'

indent :: Doc -> Doc
indent = nest 2


-- | Sanity check a dataflow network. If all checks pass return the netework,
-- otherwise return the first failed check.
verify :: Dataflow -> Either String Dataflow
verify dflow@(Dataflow types nodes) = do 
  uniquePorts nodes                 --Every port name is used exactly twice
  mapM_ (typeExistence types) nodes --All data token types have been defined
  mapM_ (opCheck types) nodes       --Verify individual node properties
  return dflow

-- | Each port name should appear exactly twice in a Dataflow network:
-- once as an output port, and once as an input port for a different
-- node (we don't currently allow direct feedback loops).
uniquePorts :: [Node] -> Either String ()
uniquePorts nodes 
  | isJust doubleIn  = Left $ showJust "Port appears twice as input: " doubleIn
  | isJust doubleOut = Left $ showJust "Port appears twice as output: " doubleOut
  | isJust mismatch  = Left $ showJust "Not specified as input and output " mismatch
  | otherwise = Right ()
  where doubleIn  = finder (/=1) ins
        doubleOut = finder (/=1) outs
        mismatch  = finder (==1) (ins ++ outs)
        finder f  = find (f . length) . group . sort
        ins = concatMap (\(Node is _ _) -> is) nodes
        outs = concatMap (\(Node _ _ os) -> os) nodes
        showJust str val = str ++ show (fromJust val)

-- | Ensure that every type and data constructor has a definition,
-- and that sets of data constructors all come from the same definition
typeExistence :: [Tydef] -> Node -> Either String ()
typeExistence types (Node _ op _) = case op of
  Merge _ ty         -> isDefined ty 
  Fork _ ty          -> isDefined ty
  MergeChoice t1 t2  -> mapM_ isDefined [t1,t2]
  Source ty          -> isDefined ty
  Sink ty            -> isDefined ty
  CSink ty           -> isDefined ty
  Mux ty constrs     -> isDefined ty >> foldM_ sameTy Nothing constrs
  Demux ty constrs   -> isDefined ty >> foldM_ sameTy Nothing constrs
  CallLock tys       -> mapM_ isDefined tys
  Destruct pat       -> void $ findDef (fst pat) types
  Bram tIn tOut      -> mapM_ isDefined [tIn,tOut]
  Func (Dcons dcon)  -> void $ findDef dcon types
  Func (Read t1 t2)  -> mapM_ isDefined [t1,t2]
  Func (Write t1 t2) -> mapM_ isDefined [t1,t2]
  ToGo ty            -> isDefined ty
  InitBuf dc         -> void $ findDef dc types
  _                  -> return () -- IConst and other Func variants
  where
    tyConstrs = map (\(Tydef tcon _) -> tcon) types

    --Check if type constructor is defined
    isDefined (Int' _   )     = return ()
    isDefined (Tycon "Word16#") = return ()
    isDefined (Tycon "Word8#") = return ()
    isDefined (Tycon "Word4#") = return ()
    isDefined (Tycon "Word#") = return ()
    isDefined (Tycon tcon) 
      | tcon `elem` tyConstrs = return ()
      | otherwise             = Left $ "Type '" ++ tcon ++ "' undefined"

    --Check if a set of data constructors belong to same type definition
    sameTy Nothing     dcon = Just <$> findDef dcon types
    sameTy (Just tcon) dcon = do 
      tcon' <- findDef dcon types
      if tcon == tcon'
        then return $ Just tcon
        else Left $ "Constructor " ++ dcon ++ 
                    " undefined in type "  ++ tcon

-- | Find the type containing a defintion for dcon
findDef :: String -> [Tydef] -> Either String Tcon
findDef dcon [] = Left $ "Constructor " ++ dcon ++ " undefined"
findDef dcon (Tydef tcon cdefs : rest) = 
  if dcon `elem` map dcDefs cdefs
   then return tcon
   else findDef dcon rest
  where dcDefs (Codef dc _) = dc

-- | Check each node's individual properties for consistency
opCheck :: [Tydef] -> Node -> Either String ()
opCheck types (Node ins op outs) = case op of 
  -- One output, inP or outP field counts number of inputs
  Merge inP _       -> check "Merge"  (portSizes outs ins inP)
  Fork outP _       -> check "Fork"   (portSizes ins outs outP)

  -- One output, number of inputs is one more than number of choices
  Mux _ constrs     -> check "Mux"  (length ins == length constrs + 1
                                         && singlePort outs)
  -- Two inputs, number of outputs equals number of choices
  Demux _ constrs   -> check "Demux"  (length outs == length constrs
                                           && length ins == 2)

  -- Two outputs, choice type has same number of variants as number of inputs
  MergeChoice chTy _ -> let (Just ty) = find ((==chTy) . Tycon . getTyCon) types 
                            varCount = length $ getVariants ty
                        in  check "MergeChoice"  (length outs == 2
                                                 && length ins == varCount)

  -- One input, one output, enough bits to express constant
  IConst num bits   -> check "IConst"  $ bitWidth num bits &&
                                             singlePort ins    &&
                                             singlePort outs
  -- No inputs, one output
  Source _          -> check "Source"  $ null ins && singlePort outs 
  -- No outputs, one input
  Sink _            -> check "Sink"    $ null outs && singlePort ins
  CSink _           -> check "CSink"   $ null outs && singlePort ins

  -- One more input than number of types (each type is an input to the locked
  -- function, but we also have a polymorphic input as an unlock signal),
  -- number of outputs equals number of types
  CallLock tys      -> check "CallLock"  (length ins == length tys &&
                                          length outs == length tys - 1)

  -- one output, input number matches function
  Func func         -> check "Func"  (singlePort outs) >> funcCheck func

  -- one input, one output
  Bram _ _          -> check "Bram" $ singlePort outs && singlePort ins
  InitBuf _         -> check "InitBuf" $ singlePort outs && singlePort ins
  Buffer _          -> check "Buffer" $ singlePort outs && singlePort ins
  RBuf _            -> check "RBuf" $ singlePort outs && singlePort ins
  DBuf _            -> check "DBuf" $ singlePort outs && singlePort ins
  ToGo _            -> check "ToGo" $ singlePort outs && singlePort ins


  -- One input, the number of outputs is equal to the
  -- total fields specified, no pattern index is out of bounds
  Destruct patterns -> check "Destruct" (singlePort ins &&
                       (length outs == totalOutFields patterns) &&
                       (patternBounds $ getCDefs $ fst patterns) patterns)
  where
    check name bl = if bl 
                     then Right () 
                     else Left $ errMsg name
    errMsg n = "A " ++ n ++ " node's definition is inconsistent"

    portSizes single many size = singlePort single && length many == size
    singlePort ports = length ports == 1
    bitWidth val bits = val <= 2 ^ bits - 1

    totalOutFields patterns = length $ snd patterns
    patternBounds cdefs (dcon,fields) = 
      let (Codef _ tys) = fromJust $ find ((==dcon) . getDcon) cdefs
          highField = maximum fields
          lowField  = minimum fields
      in null fields ||                --No fields used
         lowField >= 0 &&              --Lowest index is non-negative
         length tys >= (highField + 1) --Highest index is within bound

    getCDefs dcon = fromJust $ find (elem dcon . map getDcon) $
                    map getVariants types
    
    getVariants (Tydef _ cdefs) = cdefs

    funcCheck (Add _)        = twoInCheck "Add"   
    funcCheck (Sub _)        = twoInCheck "Sub"   
    funcCheck (Mul _)        = twoInCheck "Mul"   
    funcCheck (Div _)        = twoInCheck "Div"   
    funcCheck (Xor _)        = twoInCheck "Xor"   
    funcCheck (Mod _)        = twoInCheck "Mod"   
    funcCheck Lt             = twoInCheck "Lt"    
    funcCheck Lteq           = twoInCheck "Lteq"  
    funcCheck Gteq           = twoInCheck "Gteq"  
    funcCheck Gt             = twoInCheck "Gt"    
    funcCheck Eq             = twoInCheck "Eq"    
    funcCheck And            = twoInCheck "And"   
    funcCheck Or             = twoInCheck "Or"    
    funcCheck (Cast _ _)     = oneInCheck "Cast"   
    funcCheck (Read _ _)     = oneInCheck "Read"   
    funcCheck (Write _ _)    = oneInCheck "Write" 
    funcCheck Not            = oneInCheck "Not"   
    funcCheck (Dcons dcon)   = 
     let (Codef _ tys) = findCdef dcon types
     in check "Constructor" $ not (null ins) && --no constant constructors
                              length tys == length ins

    twoInCheck str = check str $ length ins == 2
    oneInCheck str = check str $ singlePort ins

