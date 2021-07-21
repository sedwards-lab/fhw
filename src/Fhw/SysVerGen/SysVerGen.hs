{-|
Module : Fhw.SysVerGen.SysVerGen
Description : Generate System Verilog from core

Generate System Verilog from a highly stylized core module

= Reset

This code generates flip-flops with a "reset" signal.  While it might
be tempting to replace this (for FPGAs) with "initial" blocks or other kinds
of initializers, it would be really difficult to do so.

The basic problem is that the initial blocks and initial values of variables
don't run in any particular order.  An example that came up

> a = 3 :> a + 1

gets dismantled into

> a3 = I# 3
> a = a3 :> a + 1

and the I# constructor is actually a function.  While it would be possible
to generate code such as

> initial a = I#(3)

the natural thing is to instead generate

> const I# a3 = I#(3)
> initial a = a3

Since I do not want to have our code generator do selective inlining,
I have left the reset functionality intact.

The "uniquifyNames" pass needs to be run before this since the generated
SystemVerilog code doesn't respect the scoping rules in core.

The "liftConstants" pass needs to be run before this to make sure all
global constant definitions are hoisted into "let" blocks so they end up
within modules.

= Algebraic types in hardware

A recent SystemVerilog spec (IEEE 1800-2012, section 11.9) includes
tagged union types, which would be perfect for our application, but
they are unsupported by Verilator, Quartus, and probably a host of
others.

The SystemVerilog spec also has structs and unions, but Quartus (13.0)
doesn't support union types.

http://quartushelp.altera.com/13.0/mergedProjects/hdl/vlog/vlog_list_sys_vlog.htm

Thus, we will reduce algebraic data types to bitvectors.

The first few bits will hold the tag that encodes the data constructor.  This is
vacuous when there is only one data constructor for the type.

For each data constructor, we need a function that sets the tag field and glues
things together.

For case constructs, we need a way to extract the tag from an object
and a way to extract each field from each data constructor.

> data State = Foo Int Int
>           | Bar Int

> typedef logic [64:0] State;

> const logic tag_State = 1'b0;
> const logic tag_Bar = 1'b1;

> function State Foo(Int a1, Int a2);
> begin
>  Foo[0] = tag_State;
>  Foo[32:1] = a1;
>  Foo[64:33] = a2;
> end
> endfunction

> function State Bar(Int a1);
> begin
>  Bar[0] = tag_Bar;
>  Bar[32:1] = a1;
> end
> endfunction

> Int _local1 = wild5[32:1];  // Foo a _
> Int _local2 = wild5[64:33]; // Foo _ a
> Int _local3 = wild5[31:1];  // Bar a
> unique case (wild5[0])
>  tag_State : ...
>  tag_Bar : ...
> endcase

-}

module Fhw.SysVerGen.SysVerGen ( toSystemVerilog ) where

import qualified Fhw.SysVerGen.SystemVerilog as V
import Fhw.Core.Core

import Fhw.SysVerGen.AlgebraicTypes

import Data.List ( partition, find )
import Data.Maybe ( fromMaybe )
import Control.Monad.State

-- | Translate a core module into a SystemVerilog module (main entry point)
toSystemVerilog :: Module -> [V.Description]
toSystemVerilog (Module mname tdefs vdefs) =    
    [ V.Include "fhw.sv" ] ++
    typeDefs tei ++
    modules
  where
    tei = encodeTypes tdefs

    -- Partition value definitions into those destined for the root module
    -- for the package and everything else, which we'll put at the top level
    (topModuleDefs, topDefs) = partition inMod $ filter (not . isFHWFunc) 
                                                        preppedVdefs
    
    --Rename any Core-generated names that happen to be Verilog keywords
    preppedVdefs = map cleanup vdefs
    cleanup (Vdef mn ty ex) = Vdef mn ty $ mapExpr fixKeyWords ex
    fixKeyWords (Var (m,"case") t) = Var (m,"case_123") t
    fixKeyWords e = e

    modules = evalState (do
                          top <- makeTopMod mname topModuleDefs
                          others <- mapM toDesc topDefs
                          return (top:others)) (emptyEnvironment tei)
                         

    inMod v | hasFuncType v = False                -- Functions outside
    inMod (Vdef _ t _) | not (hasStream t) = False -- Scalars outside
    inMod _ = True                        -- Everything else goes in the module

-- | Generate the "top module" containing all non-func vdefs as local variables
makeTopMod :: Mname -> [Vdef] -> CodeGenMonad V.Description
makeTopMod mname@(M (_, _, mid)) vdefs = do
  tei <- getTEI
  let mainQualVar = (Just mname, "main")
      mainDef = getVDef mainQualVar vdefs
      (outputPort, _) = vdefPorts tei mainDef
  mapM_ vdefInModule $ filter (\(Vdef qv _ _) -> qv /= mainQualVar) vdefs
  topVdefInModule mainDef
  buildModule mid [outputPort, V.clkPort, V.resetPort]
    
-- | Translate a functional variable definition into a SysVer Description.
toDesc :: Vdef -> CodeGenMonad V.Description

toDesc v@(Vdef var ty _) | hasStream ty || isFunctionTy ty =
  do
    tei <- getTEI
    let mname = qualName var
        (out, ins) = vdefPorts tei v
        ports = out : [V.clkPort, V.resetPort] ++ ins
    topVdefInModule v
    buildModule mname ports

toDesc vd =
    error $ "toDesc: don't know how to handle " ++ show vd

-- | Generate code for a variable definition in a module: an assignment
-- without a definition for the variable (e.g., an output port)
topVdefInModule :: Vdef -> CodeGenMonad ()
topVdefInModule (Vdef var _ e) = do
      vexp <- expr e
      addItem $ V.Assign (V.Var (qualName var)) vexp

-- | Generate code for a variable definition in a module:
--  Just a named variable bound to the expression for it
vdefInModule :: Vdef -> CodeGenMonad ()
vdefInModule v@(Vdef var ty _) = do
  addItem $ V.Reg (qualName var, vTypeOf ty)
  topVdefInModule v

{- ****************** The Code Generation Monad *************************** -}

-- | Environment used during code generation: a source of fresh names,
-- | a place to accumulate SystemVerilog items (declarations, assignemnts)
-- | encoding information for the types
data CodeGenerationEnvironment = CodeGenerationEnvironment {
      nextFreshID :: Int
    , generatedItems :: [V.Item]
    , typeEncodingInfo :: TypeEncodingInfo
    }

emptyEnvironment :: TypeEncodingInfo -> CodeGenerationEnvironment
emptyEnvironment tei = CodeGenerationEnvironment { nextFreshID = 1
                                                 , generatedItems = []
                                                 , typeEncodingInfo = tei
                                                 }

type CodeGenMonad = State CodeGenerationEnvironment

-- | Return a fresh name
freshName :: CodeGenMonad String
freshName = do
  s <- get
  let n = nextFreshID s
  put s { nextFreshID = n + 1 }
  return $ "_local" ++ show n

-- | Add a newly generated item to the accumulated collection
addItem :: V.Item -> CodeGenMonad ()
addItem i = do
  s <- get
  put s { generatedItems = i : generatedItems s }

-- | Create a module from the generated items and clear them
buildModule :: V.ModuleID -> [V.Port] -> CodeGenMonad V.Description
buildModule mid ports = do
  s <- get
  let items = generatedItems s
  put s { generatedItems = [] }
  return V.Module { V.name = mid
                  , V.ports = ports
                  , V.items = reverse items }

-- | Get type encoding information
getTEI :: CodeGenMonad TypeEncodingInfo
getTEI = do
  s <- get
  return $ typeEncodingInfo s

-- | Declare a new variable and bind it to an expression
bindVar :: Vbind -> V.Expr -> CodeGenMonad ()
bindVar (var, typ) vexpr = do
  --Catch weird external core error where it generates a keyword name as a var
  let newVar = if var == "case" then "case_123" else var
  addItem $ V.Reg (newVar, vTypeOf typ)
  addItem $ V.Assign (V.Var newVar) vexpr

{- ------ Code Generation for Expressions (inside the monad) -------- -}

-- | Generate System Verilog code for a given expression
expr :: Exp -> CodeGenMonad V.Expr

-- Literals
expr (Lit l) = return $ litToLit l

-- Bare variable reference
expr (Var v _) = return $ V.LValue $ V.Var $ qualName v

-- expr (Var v t) = do
--   resultName <- freshName
--   addItem $ V.Reg (resultName, typeToType t) Nothing
--   instanceName <- freshName
--   let modArgs = [V.LValue (V.Var resultName)
--                 ,V.LValue (V.Var V.clkName)
--                 ,V.LValue (V.Var V.resetName)]
--   addItem $ V.ModInstance (qualName v) instanceName modArgs
--   return $ V.LValue (V.Var resultName)

-- Function call
expr e@(App _ _) = do
  let (f, args, targs) = collectArgs e
  invoke f args targs
    where
      invoke :: Exp -> [Exp] -> [Ty] -> CodeGenMonad V.Expr

      -- FHW Primitives
      invoke (Var v _) [ex] _ | isFHWName v "repeat" =          expr ex
      invoke (Var v _) (f:args@[_]) _ | isFHWName v "map" =     invoke f args []
      invoke (Var v _) (f:args@[_,_]) _ | isFHWName v "zipWith" =  invoke f args []
      invoke (Var v _) (f:args@[_,_,_]) _ | isFHWName v "zipWith3" =invoke f args []

      -- A register
      invoke (Dcon dc _) [reset, d] _ | isFHWName dc ":>" = do
        resetExpr <- expr reset
        dExpr <- expr d
        ffVarName <- freshName
        let ffVarExpr = V.Var ffVarName
            reseti = V.NonBlocking ffVarExpr resetExpr
            normali = V.NonBlocking ffVarExpr dExpr
            resetp = V.LValue $ V.Var V.resetName
        -- TODO: is the type of reset the right thing to use here?
        -- trace "Dcon :>" $
        addItem $ V.Reg (ffVarName, vTypeOf (exprType reset))
        addItem $ V.AlwaysSequential $ V.ifThenElse resetp reseti normali
        return $ V.LValue ffVarExpr

      -- A memory block
      invoke (Var v _) args@[numWordsExpr, _, write, addr, wdata] _
          | isFHWName v "memory#" = do

            addItem $ V.Comment $ "memory#: " ++ show args

            let memWordType = vTypeOf $ exprType wdata

            let numWords =
                    case numWordsExpr of
                      Lit (Literal (Lint n) _) -> n
                      _ -> error $ "expr: unknown memory size in expression "
                                   ++ show numWordsExpr

            memoryArray <- freshName
            addItem $ V.Reg (memoryArray,
                             V.Array memWordType (fromIntegral numWords))

            qVar <- freshName                   
            addItem $ V.Reg (qVar, memWordType) -- TODO: initial value?

            writeExpr <- expr write
            addrExpr <- expr addr
            wdataExpr <- expr wdata

            let qVarExpr = V.Var qVar
                addrVar = case addrExpr of
                             V.LValue (V.Var vv) -> vv
                             _ -> error "memory#: can't read address var"

                addrExpr' = V.LValue $ V.Var addrVar -- TODO?

                entryLvalue = V.Element memoryArray addrExpr'
                
                writeAssign = V.NonBlocking entryLvalue wdataExpr
                
                writeVar = case writeExpr of
                             V.LValue (V.Var vv) -> vv
                             _ -> error "memory#: can't read write enable var"
                
                writePredicate = V.LValue $ V.Var writeVar -- TODO?

                writeStmt = V.IfElse [(writePredicate, writeAssign)] Nothing
                readStmt = V.NonBlocking qVarExpr $ V.LValue entryLvalue

            addItem $ V.AlwaysSequential $ V.SeqBlock [] [writeStmt, readStmt]
            
            return $ V.LValue qVarExpr

-- TODO: the memory function should turn into something like
-- a :> operator that works on arrays.  Follow the memory template from
-- Altera et al.

-- http://www.altera.com/literature/hb/qts/qts_qii51007.pdf
-- Page 12-14, QuartusII 51007, 2014.08.18
--
-- always @(posedge clk) begin
--    if (we) mem[waddr] <= d;
--    q <= mem[raddr];
-- end
--
--  \ghc-prim:GHC.Types.Int mymemory [0:7];
--
--  always_ff @(posedge clk) begin
--     if (\main:Memory1.main5 .tag == \ghc-prim:GHC.Types.True_tagv )
--       mymemory[ \main:Memory1.main3 .val.\base:GHC.Word.W16#_v .a1 ] <=
--          \main:Memory1.main1 ;
--     main <= mymemory[\main:Memory1.main3 .val.\base:GHC.Word.W16#_v .a1 ];
--  end


      -- Monomorphic data constructor: call its function
      invoke (Dcon d _) args [] = do argExprs <- mapM expr args
                                     tei <- getTEI
                                     return $ dconExpr tei d argExprs

      -- Polymorphic data constructor: call its function
      -- TODO: can we avoid this?  Can Monomorphise take care of this?
--      invoke (Dcon d _) args targs = do
--                     argExprs <- mapM expr args
--                     return $ V.Call (polyDcFuncName d targs) argExprs

      -- Everything else: a module instance
      invoke (Var v funcType) args [] = do
        resultName <- freshName
        -- trace ("Var " ++ show vv) $
        addItem $ V.Reg (resultName, vTypeOf funcType)
        argExprs <- mapM expr args
        let modArgs =
                V.LValue (V.Var resultName) :
                V.LValue (V.Var V.clkName) :
                V.LValue (V.Var V.resetName) :
                argExprs
        instanceName <- freshName
        addItem $ V.ModInstance (qualName v) instanceName modArgs
        return $ V.LValue (V.Var resultName)

      invoke f _ _ = error $ "expr: unexpected function " ++ show f
  
-- Degenerate pattern match: a single default case.  Bind the scrutinee
-- in case the body of the default needs it, but otherwise just return it.
expr (Case scrutinee scruitBind _ [Adefault e]) = do
    scruit_expr <- expr scrutinee
    bindVar scruitBind scruit_expr
    expr e

-- Degenerate pattern match: a single data constructor
expr (Case scruitnee scruitBind@(scruit_var, _) _ [Acon dcon [] vbinds body]) =
  do
    scruit_expr <- expr scruitnee
    bindVar scruitBind scruit_expr
    bindFields (V.LValue $ V.Var scruit_var) dcon vbinds
    expr body
  
-- Pattern match: bind a bunch of variable names and instantiate an
-- always_combinational block with a System Verilog case
expr (Case scrutinee scruitBind@(scruit_var, scruit_typ) typ alts) =
    do
      scruit_expr <- expr scrutinee
      bindVar scruitBind scruit_expr
      retvarname <- freshName
      addItem $ V.Reg (retvarname, vTypeOf typ)
      alts' <- mapM (altToCaseItem retvarname scruit_var) alts
      -- If we're checking a primitive type, we'd better be comparing
      -- literals; otherwise, it's an algebraic type and we're checking the
      -- type tag

      tei <- getTEI

      let defaultCase (Adefault _:_) = [] -- Default already there; ignore
          defaultCase (_:rest) = defaultCase rest 
          defaultCase [] = [V.Default $ V.Blocking (V.Var retvarname) $ unknownVal tei typ]
                                            
      let scrutineeExpr =
              if isPrimType scruit_typ then V.LValue $ V.Var scruit_var
              else tagExpr tei (V.LValue $ V.Var scruit_var) (tcon scruit_typ)

      addItem $ V.AlwaysCombinational $ V.Case scrutineeExpr (defaultCase alts ++ alts')

      return $ V.LValue (V.Var retvarname)
          where
            -- TODO: Terrible, Terrible hack.  Need to know what's an Int

            isPrimType (Tcon (Just (M(P "ghc-prim", ["GHC"], "Prim")), "Int#")) = True
            isPrimType _ = False

expr e@(Appt _ _) = error $ "expr: unexpected Appt " ++ show e

-- Let: Generate code for each of the bound variables, then the body
expr (Let vdefs e) = do
            mapM_ vdefInModule vdefs
            expr e

-- A bare data constructor: if we see it here, it should have no arguments
expr (Dcon d _) = do
                  tei <- getTEI
                  return $ dconExpr tei d []

-- If we see lambda terms at this point, just discard the formal arguments.
-- We assume they were already gathered and named
expr (Lam _ e) = expr e

-- Case alternative: becomes a System Verilog "case" construct
altToCaseItem :: V.VariableID -> V.VariableID -> Alt -> CodeGenMonad V.CaseItem
altToCaseItem retvarname scruit_var (Acon dcon _ vbinds body) =
    do
      ex <- expr body
      bindFields (V.LValue $ V.Var scruit_var) dcon vbinds
      -- mapM_ (vbindToDecl scruit_var dcon) (zip vbinds [1..]) -- TODO!!!
      let bodyStmt = V.Blocking (V.Var retvarname) ex
      tei <- getTEI
      return $ V.CaseItem (tagVal tei dcon) bodyStmt

altToCaseItem retvarname _ (Alit lit body) =
    do
      ex <- expr body
      let bodyStmt = V.Blocking (V.Var retvarname) ex
      return $ V.CaseItem (litToLit lit) bodyStmt

altToCaseItem retvarname _ (Adefault body) =
    do
      ex <- expr body
      let bodyStmt = V.Blocking (V.Var retvarname) ex
      return $ V.Default bodyStmt

bindFields :: V.Expr -> Qual Dcon -> [Vbind] -> CodeGenMonad ()
bindFields scruitExpr dcon vbinds = do
  tei <- getTEI
  let fields = fieldExprs tei dcon scruitExpr
  mapM_ assign $ zip fields vbinds
      where
        assign (fieldExpr, vbind) = bindVar vbind fieldExpr


{-  TODO !!!
vbindToDecl :: V.VariableID -> Qual Dcon -> ((Var, Ty), Int) -> CodeGenMonad ()
vbindToDecl scruit_var dcon ((var, typ), index) =
  addItem $ V.Reg (var, vTypeOf typ) $
     Just $ V.LValue $ V.HierVar [scruit_var, dcValFieldName,
                                  dcFieldName dcon, genParam index]
-}

{- ------------------------------ IO helper ------------------------------ -}

-- | Return the output and input IO ports for a Vdef
vdefPorts :: TypeEncodingInfo -> Vdef -> (V.Port, [V.Port])

-- A function type: gather the type arguments and match them up with the
-- bindings
vdefPorts _ (Vdef var funcType (Lam b _)) | isFunctionTy funcType =
      (V.Output (qualName var, vTypeOf outputType), map toInputPort inputs)
   where
     toInputPort (Vb (v, _), t) = V.Input (v, vTypeOf t)
     toInputPort (Tb _, _) = error "vdefPorts: type argument?"
     inputs = zip b inTypes
     (outputType, inTypes) = collectArgTypes funcType

-- A non-function type: just an output
vdefPorts _ (Vdef v t@(Tcon _) _) = (V.Output (qualName v, vTypeOf t), [])
vdefPorts _ (Vdef v t _) = (V.Output (qualName v, vTypeOf t), [])

{- ------------------------------ Helpers ------------------------------ -}

-- |Check if a qualified var is a given FHW  function
isFHWName :: Eq a => Qual a -> a -> Bool
isFHWName (Just mname,leaf) fhwName | mname == fhwPackage = leaf == fhwName
isFHWName _ _ = False

-- | Given a primitive core type, return its number of bits
bitsOfType :: Ty -> Int
bitsOfType _ = 32 -- TODO: a stand-in

litToLit :: Lit -> V.Expr
litToLit (Literal (Lint l) ty) = V.Sized (bitsOfType ty) l -- TODO
litToLit l = error $ "litToLit: unsupported literal " ++ show l

-- | Find a top-level vardef by its name (return error if not found)
getVDef :: Qual Var -> [Vdef] -> Vdef
getVDef var vdefs =
  fromMaybe (error $ "No top-level vdef exists with name " ++ show var)
  (find (hasSameVarName var) vdefs)

-- | True if a type involves any Streams
hasStream :: Ty -> Bool
hasStream (Tcon (_,"Stream")) = True
hasStream (Tapp t1 t2) = hasStream t1 || hasStream t2
hasStream (Tforall _ t) = hasStream t
hasStream _ = False

fhwPackage :: Mname
fhwPackage = M (P "fhw-0.0.0.1",["FHW"],"Prim")

-- | Check if a variable definition is just redefining a FHW library function
isFHWFunc :: Vdef -> Bool
isFHWFunc (Vdef (Just mname,_) _ _) | mname == fhwPackage = True
isFHWFunc _ = False

-- | Check if a type represents a function
hasFuncType :: Vdef -> Bool
hasFuncType (Vdef _ ty _) = case ty of
                              (Tapp (Tapp (Tcon (_, "->")) _) _) -> True
                              (Tforall _ _) -> True
                              _ -> False

-- | Determine if a variable definition has a given name
hasSameVarName :: Qual Var -> Vdef -> Bool
hasSameVarName var (Vdef defname _ _) = var == defname

{-

import Data.List 
import Data.Maybe (fromMaybe)
-- import Data.Char (intToDigit)

import qualified Data.Array as Array
import qualified Data.Map.Strict as Map
import Data.Graph ( buildG, topSort ) 

-- import Debug.Trace

-- | Translate a core module into a SystemVerilog module (main entry point)
toSystemVerilog :: Module -> [V.Description]
toSystemVerilog (Module mname tdefs vdefs) =    
    [ V.Include "fhw.sv"
    ]
    ++ typeDefs
    ++ map toDesc topDefs
    ++ topmod
  where
    tdefs' = sortTdefs $ filter (not . isFHWType) tdefs
    typeDefs = concatMap typeDefForTypeDef tdefs'
    notFHW = filter (not . isFHWFunc) vdefs -- Discard FHW primitives

    -- Partition value definitions into those destined for the root module
    -- for the package and everything else, which we'll put at the top level
    (defsForMod, topDefs) = partition inMod notFHW


    inMod v | hasFuncType v = False                -- Functions outside
    inMod (Vdef _ t _) | not (hasStream t) = False -- Scalars outside
    inMod _ = True                        -- Everything else goes in the module

    topmod = makeTopMod mname defsForMod vdefs

{- ************************** Type-related functions ******************** -}

-- | Topologically sort a list of type defintions so that each type depends only
-- on earlier ones in the list

-- trace ("graph: " ++ show edges ++ "\ngives order " ++ show order) $

sortTdefs :: [Tdef] -> [Tdef]
sortTdefs tdefs = map tdefFor order                  
    where
      order = reverse $ topSort graph
      graph = buildG (1, nTypes) edges
      edges = concat $ map tdefEdges tdefs

      nTypes = length tdefs

      -- Array from indexes to Tdefs
      indexToTdef = Array.array (1, nTypes) (zip [1..] tdefs)
      tdefFor i = indexToTdef Array.! i

      -- Map from Tcon to indexes
      tconToIndex = Map.fromList $ map (\ (i,td) -> (tcon td, i)) $
                    Array.assocs indexToTdef
      indexOf tc = case Map.lookup tc tconToIndex of
                     Just i -> i
                     Nothing -> 0 -- Primitive types

      -- Extract the tcon being defined from a type definition
      tcon :: Tdef -> Qual Tcon
      tcon (Data tc _ _) = tc
      tcon (Newtype tc _ _ _) = tc

      -- Integer edge information for a Tdef
      -- trace ("New type " ++ show tc ++ "\ngives " ++ show tedges)
      tdefEdges :: Tdef -> [(Int, Int)]
      tdefEdges (Data tc _ cds) = tedges
          where
            tedges = concat $ map cdefToEdges cds
            sourceIndex = indexOf tc
            cdefToEdges :: Cdef -> [(Int, Int)]
            cdefToEdges (Constr _ _ tys) =
                zip (repeat sourceIndex) $ -- Turn into (src, dst) pairs
                    filter ((<) 0) $       -- ignore unknown types
                           map indexOf $   -- convert to indices
                           concat $ map tycons tys -- all the successors

            tycons :: Ty -> [Qual Tcon]
            tycons (Tvar _) = []
            tycons (Tcon tt) = [tt]
            tycons (Tapp t1 t2) = tycons t1 ++ tycons t2
            tycons (Tforall _ t) = tycons t
            tycons t =
                error $ "tycons: unsupported type declaration " ++ show t
      tdefEdges (Newtype tc1 tc2 _ _) = [(indexOf tc1, indexOf tc2)]

-- | Translate a type definition into a tagged union type with constructor
-- functions
typeDefForTypeDef :: Tdef -> [V.Description]

typeDefForTypeDef (Data tcon [] cdefs) =
    V.Typedef (V.Enum tagValues) tagEnumTypeName :
    V.Typedef
       (V.StructUnion V.Struct V.Packed tagsPayload) typeName :
    constructors
  where
    -- Suppress the payload field if there are no non-nullary data
    -- constructors (e.g., essentially just an enum)
    tagsPayload = tagField : case cdefs' of [] -> []
                                            _ -> [payloadField]
    typeName = tcTypeName tcon
    tagValues = map (\ (Constr dc _ _) -> dcTagName dc) cdefs
    tagEnumTypeName = tcTagTypeName tcon
    tagField = (V.Named tagEnumTypeName, dcTagFieldName)
    payloadField = (V.StructUnion V.Union V.Packed (map unionField cdefs'),
                     dcValFieldName)
    -- Suppress including fields for nullary data constructors
    cdefs' = filter (\c -> case c of Constr _ _ [] -> False ;
                                     _ -> True) cdefs
    unionField :: Cdef -> (V.Type, String)
    unionField (Constr dc [] typs) = --trace "unionField\n" $
       (V.StructUnion V.Struct V.Packed
            $ map (\(n, t) -> (typeToType t, genParam n)) (zip [1..] typs),
              dcFieldName dc)
    unionField c = error $ "toTaggedUnion: unsupported constructor " ++ show c

    constructors = map (genDataConstructor tcon) cdefs

typeDefForTypeDef tdef =
    error $ "typeDefForTypeDef: unsupported type definition " ++ show tdef

-- | Generate a function for a data constructor
genDataConstructor :: Qual Tcon -> Cdef -> V.Description
genDataConstructor tcon (Constr dcon [] typeFields) = 
  V.Function (V.Named $ tcTypeName tcon) funcname
             formalArgs
             (V.SeqBlock [] (setTagStmt : setFieldStmts))
    where
      funcname = dcFuncName dcon
      numFields = length typeFields
      argNames = map (\n -> 'z' : show n) [(1::Int)..numFields]
      fieldNames = map genParam [1..numFields]

      formalArgs = --trace "genDataConstructor" $
                   zip argNames (map typeToType typeFields)

      setTagStmt = V.Blocking (V.HierVar [funcname, dcTagFieldName])
                   $ V.LValue $ V.Var $ dcTagName dcon

      setFieldStmts = map setFieldStmt $ zip argNames fieldNames
      setFieldStmt (argName, fieldName) =
          V.Blocking (V.HierVar [funcname, dcValFieldName,
                                 dcFieldName dcon, fieldName])
               $ V.LValue $ V.Var argName

genDataConstructor tcon _ =
    error $ "genDataConstructor: unsupported data constructor " ++ show tcon

-- | Name of the function for a data constructor.  Note: in core,
--  type constructors, data constructors, and variables reside in
--  separate namespaces, so we add a prefix to make data constructor
--  (functions) distinct.
dcFuncName :: Qual Dcon -> String
dcFuncName dc = "dc_" ++ qualName dc

-- | Name of a function for a polymorphic data constructor
polyDcFuncName :: Qual Dcon -> [Ty] -> String
polyDcFuncName dc targs = dcFuncName dc ++ (concat $ map toTypeName targs)
    where
      toTypeName :: Ty -> String
      toTypeName (Tcon tt) = "_" ++ tcTypeName tt
      toTypeName t =
          error $ "polyDcFuncName: unexpected type argument " ++ show t

-- | Name of the enumeration for the tag of a data constructor
dcTagName :: Qual Dcon -> String
dcTagName dc = qualName dc ++ "_tagv"

-- | Name of the enumeration type of a type constructor
tcTagTypeName :: Qual Tcon -> String
tcTagTypeName tc = qualName tc ++ "_tags"

tcTypeName :: Qual Tcon -> String
tcTypeName tc = qualName tc

dcFieldName :: Qual Dcon -> String
dcFieldName dc = qualName dc ++ "_v"

dcValFieldName :: String
dcValFieldName = "val"

dcTagFieldName :: String
dcTagFieldName = "tag"           

{- *********************** Code Generation ****************************** -}

-- | Generate the "top module" containing all non-func vdefs as local variables
makeTopMod :: Mname -> [Vdef] -> [Vdef] -> [V.Description]
makeTopMod _ [] _ = [] --No non-function vdefs are present in the Core program
makeTopMod mname@(M (_,_,mid)) defs vdefs =
    [V.Module {V.name = mid, V.ports = ports, V.items = items}]
  where
    mainQualVar = (Just mname, "main")
    mainDef = getVDef mainQualVar vdefs
    notMainDefs = filter (not . hasSameVarName mainQualVar) defs
    (outputPort, _) = ioForVdef mainDef
    ports = [outputPort, V.clkPort, V.resetPort]
--    ports = getTopIO mainDef ++ [V.clkPort, V.resetPort]
--    getTopIO (Vdef var ty ex) = getIO (qualName var) ty ex
    items = reverse $ generatedItems $ execState (do
               mapM_ vdefInModule notMainDefs
               topVdefInModule mainDef  -- Don't define main output variable
            ) emptyEnvironment


-- | Verilog type name for a Core type
typeToType :: Ty -> V.Type

typeToType (Tcon tc) = V.Named (tcTypeName tc)

typeToType (Tapp _ t) = typeToType t -- Strip type applications, e.g., Stream

typeToType UndefinedTy = V.Named "undefinedType"
-- error "typeToType : found an UndefinedType"
--    V.Named "ghc-prim:GHC.Prim.Int#" -- TODO: horrible hack

typeToType t@_ = error $ "typeToType: unsupported type " ++ show t





genParam :: Int -> String
genParam n = 'a' : show n




-- | Translate a functional variable definition into a SysVer Description.
toDesc :: Vdef -> V.Description

toDesc v@(Vdef var ty _) | hasStream ty || isFunctionTy ty =
    V.Module mname ports items
  where
    mname = qualName var
    (out, ins) = ioForVdef v
    ports = out : [V.clkPort, V.resetPort] ++ ins
    items = reverse $ generatedItems $ execState (topVdefInModule v) emptyEnvironment

-- A non-function type with no streams: make a top-level constant
toDesc (Vdef var (Tcon tc) ex) =   
    V.Variable (V.Const (V.Named $ tcTypeName tc)) (qualName var)
     $ Just $ evalState (expr ex) emptyEnvironment

toDesc (Vdef var t ex) = error $ "toDesc: unsupported Vdef " ++
                         qualName var ++ "  " ++ show t ++ "  " ++ show ex



-}

{-
  Helper Functions

  The following functions aid in the translation process, 
  but don't do any actual translation themselves.
-}

{-

-- |Determine if a variable definition has a given name
hasSameVarName :: Qual Var -> Vdef -> Bool
hasSameVarName var (Vdef defname _ _) = qualName var == qualName defname

-- |Check if a type represents a function
hasFuncType :: Vdef -> Bool
hasFuncType (Vdef _ ty _) = case ty of
                              (Tapp (Tapp (Tcon (_, "->")) _) _) -> True
                              (Tforall _ _) -> True
                              _ -> False
  
fhwPackage :: Mname
fhwPackage = M (P "fhw-0.0.0.1",["FHW"],"Prim")


isFHWType :: Tdef -> Bool
isFHWType (Data (Just mname,_) _ _) | mname == fhwPackage = True
isFHWType (Data (_, "Bool") _ _) = True -- TODO: Sloppy: suppress the ghc-prim type
isFHWType (Newtype (Just mname,_) _ _ _) | mname == fhwPackage = True
                                                               
isFHWType _ = False

-}

