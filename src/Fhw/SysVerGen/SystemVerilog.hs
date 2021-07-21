{-|
Module : Fhw.SysVerGen.SystemVerilog
Description : The types and pretty-printing functions for System Verilog

This is a pretty-printing-focused AST library for SystemVerilog

Its structure follows from Annex A of IEEE Standard 1800-2012: SystemVerilog

It uses the Text.PrettyPrint package

Keep this as FHW-agnostic as possible, i.e., any magic names or
special constructs should be generated elsewhere.

-}

module Fhw.SysVerGen.SystemVerilog where

import Text.PrettyPrint
import Data.Char ( isAlpha, isAlphaNum )

-- import Fhw.CoreParser.Encoding( zEncodeString )

-- | The top level: a list of descriptions
data SourceText = SourceText [Description]

-- | Descriptions, such as modules, functions, and typedefs.
data Description =
  Module { name :: ModuleID,
           ports :: [Port],
           items :: [Item]
         }
  | Function Type FunctionID [Binding] Statement
  | Variable Type VariableID (Maybe Expr) -- Variable with optional initializer
--  | Typedef Type [TypeValue]
  | Typedef Type String
  | Import [ImportItem]
  | Include String  

-- | This tuple represents a Data constructor with a possibly empty list of type arguments
-- data TypeValue = TypeValue (Type,[Type])

data StructUnion = Struct | Union
data Packed = Packed | Unpacked
  
data Type = Boolean
          | Named String  -- Named type, i.e., from a typedef
          | Signed Int    -- Bit vector of given width
          | Unsigned Int  -- Bit vector of given width
          | Const Type    -- Constant
          | Enum [String] -- Enumerated type
          | StructUnion StructUnion Packed [(Type,String)] -- Aggregate
          | Array Type Int -- Array of the given size

data ImportItem = Package String -- import foo::*
                | PackageID String String -- import foo::bar

-- | A named variable with a type
type Binding = (VariableID, Type)

-- | Connections to a module
data Port = Input Binding
          | Output Binding
                
-- | Declarations and blocks within a module, such as always blocks.
data Item =
    Comment String
  | Blankline
  | ModInstance ModuleID String [Expr]
  | Reg Binding
  | Localparam Binding Expr
  | AlwaysCombinational Statement
  | AlwaysSequential Statement
  | Assign LValue Expr
  | Initial LValue Expr

{-| Destinations for assignments.
-}
data LValue = Var VariableID
            | Slice VariableID Int Int -- a[10:5]
            | Bit VariableID Int -- a[3]              
            | HierVar [VariableID] -- a.val.I#_v.a1
            | Element VariableID Expr -- a[foo]
            | LConcat [LValue] -- { a, b, c }

{-| Statements. Assignments, conditionals.
-}
data Statement =
    SeqBlock [DataDecl] [Statement]
  | IfElse [(Expr, Statement)] (Maybe Statement)
  | Case Expr [CaseItem]
  | Blocking LValue Expr    -- assignment: a = 1
  | NonBlocking LValue Expr -- assignment: b <= 2
  | CommentStmt String
  | Return Expr
  | Null -- ;

{- | A Data Declaration assigns a variable
     to an expression in the same line as its declaration.

     These can exist at the start of SeqBlocks.
-}
data DataDecl = DataDecl Type LValue Expr

-- | A branch of a Case
data CaseItem = CaseItem Expr Statement
              | Default Statement
    
{- | Expressions.  Literals, variables, operators

-}
data Expr = Literal Integer     -- TODO
          | Sized Int Integer   -- Integer literal with a size
          | String String
          | Unknown Int         -- The given number of X's
          | LValue LValue      
          | SliceE Expr Int Int -- foo[5:3]
          | BitE Expr Int       -- bar[3]  
          | Concat [Expr]       -- { e1, e2, e3 }
          | Repeat Int [Expr]   -- { 2 { e1, e2 } }
          | BinOp Expr BinOp Expr
          | UnaryOp UnaryOp Expr
          | Conditional Expr Expr Expr -- e1 ? e2 : e3
          | Call FunctionID [Expr]
            
-- | Binary operators.

data BinOp = Plus 		-- ^ +
           | Minus 		-- ^ \-
           | Times 		-- ^ \*
           | Divide             -- ^ /
           | Modulo             -- ^ % 
           | Equal              -- ^ ==
           | NotEqual		-- ^ !=
           | CaseEqual          -- ^ ===
           | CaseNotEqual       -- ^ !==
           | LogAnd             -- ^ &&
           | LogOr              -- ^ ||
           | Pow                -- ^ \*\*
           | LessThan		-- ^ <   
           | LessEqual          -- ^ <=
           | GreaterThan        -- ^ \>
           | GreaterEqual       -- ^ \>=
           | BitAnd             -- ^ &
           | BitOr              -- ^ |
           | BitXor		-- ^ ^
           | RightShift         -- ^ \>\>
           | LeftShift          -- ^ <<
           | ArithRight         -- ^ \>\>\>
           | ArithLeft          -- ^ <<<

-- | Unary operators.
data UnaryOp = Positive 	-- ^ +   
             | Negate           -- ^ \-  
             | LogNot           -- ^ !  
             | BitNot           -- ^ ~   
             | ReductionAnd     -- ^ &   
             | ReductionNand    -- ^ ~&  
             | ReductionOr      -- ^ |
             | ReductionNor     -- ^ ~|
             | ReductionXor     -- ^ ^
             | ReductionXnor    -- ^ ~^

type ModuleID = String
type VariableID = String
type FunctionID = String
type TypeTag = String
type TypeField = String

-- | Return the precedence level of a binary operator
binaryPrecedence :: (Num a) => BinOp -> a
binaryPrecedence op = case op of
  LogOr -> 2
  LogAnd -> 3
  BitOr -> 4
  BitXor -> 5
  BitAnd -> 6
  Equal -> 7
  NotEqual -> 7
  CaseEqual -> 7
  CaseNotEqual -> 7
  LessThan -> 8
  LessEqual -> 8
  GreaterThan -> 8
  GreaterEqual -> 8
  LeftShift -> 9
  RightShift -> 9
  ArithLeft -> 9
  ArithRight -> 9
  Plus -> 10
  Minus -> 10
  Times -> 11
  Divide -> 11
  Modulo -> 11
  Pow -> 12

-- | Return the precedence level of a unary operator
unaryPrecedence :: (Num a) => UnaryOp -> a
unaryPrecedence op = 
  case op of
    Positive -> 13
    Negate -> 13
    LogNot -> 13
    BitNot -> 13
    ReductionAnd -> 6
    ReductionNand -> 6
    ReductionXor -> 5
    ReductionXnor -> 5
    ReductionOr -> 4
    ReductionNor -> 4
  
-- | Verilogify an identifier: return an escaped identifier if necessary.
--   Quartus won't accept '*' in an identifier, even if it's escaped, so
--    we replace any '*' found with "times".
vid :: String -> Doc
-- vid s = text $ zEncodeString s
vid i = if isV i then text i else char '\\' <> text (removeStar i) <> space
  where
    isV ('_':s) = isVid s
    isV (c:s) | isAlpha c = isVid s
    isV _ = False
    isVid "" = True
    isVid ('_':s) = isVid s
    isVid ('$':s) = isVid s
    isVid (c:s) = isAlphaNum c && isVid s
    removeStar [] = []
    removeStar ('*':s) = "times" ++ removeStar s
    removeStar (c:s) = c : removeStar s

clkName :: String
clkName = "clk"

resetName :: String
resetName = "reset"

-- | Clock input (all modules have this)
clkPort :: Port
clkPort = Input (clkName, Boolean)

-- | Reset input (all modules have this)
resetPort :: Port
resetPort = Input (resetName, Boolean)

-- | Simple predicated if-then
ifThen :: Expr -> Statement -> Statement
ifThen p thn = IfElse [(p, thn)] Nothing

-- | Simple binary if-then-else
ifThenElse :: Expr -> Statement -> Statement -> Statement
ifThenElse p thn els = IfElse [(p, thn)] (Just els)


    
-- | The pretty-printing class: take something and make it a Doc
class PP a where
  pp :: a -> Doc
  
instance PP SourceText where
  pp (SourceText descs) =  vcat $ punctuate (text "\n") (map pp descs)
  
-- | show on the top-level renders the whole thing
instance Show SourceText where
  show = render . pp

instance PP Description where
  pp (Module {name = n, ports = p, items = i}) =
    hang (text "module" <+> vid n <> lparen) 2 (
      vcat (punctuate comma $ map pp p) $$
      rparen <> semi $$
      vcat (map pp i)
      ) $$
    text "endmodule"

  pp (Function returnType funcID bindings contents) =
    text "function" <+> pp returnType <+> vid funcID 
    <+> parens (hsep (punctuate comma $ map ppBind bindings))
    <> semi $+$ nest 2 (pp contents) $$ text "endfunction"

  pp (Typedef t n) = text "typedef" <+> pp t <+> vid n <> semi

  pp (Variable ty var ini) = -- Variable declarations
    pp ty <+> vid var <+> case ini of
                            Just e -> equals <+> pp e <> semi
                            Nothing -> empty 

  pp (Import imports) = -- package imports
    text "import" <+> hsep (punctuate comma $ map pp imports) <> semi

  pp (Include fn) = text "`include" <+> doubleQuotes (text fn)

instance PP ImportItem where
  pp (Package n) = vid n <> text "::*"
  pp (PackageID n i) = vid n <> text "::" <> vid i

typeToTags :: Type -> Int -> Doc
typeToTags (Named n) i = vid (n ++ "_tag_"++(show i))
typeToTags _ _ = error "unnamed typevalue in typeValueToTag"

typeToTag :: Type -> Doc
typeToTag (Named n) = vid (n ++ "_tag")
typeToTag _ = error "unnamed typevalue in typeValueToTag"
    
instance PP Port where
  pp (Input bind) = text "input" <+> ppBind bind
  pp (Output bind) = text "output" <+> ppBind bind
  
ppBind :: Binding -> Doc
ppBind (var, t) = pp t <+> vid var <> arrayDimension
    where
      arrayDimension = case t of
                         (Array _ size) -> downToZero size
                         _ -> empty

ppDataDecl :: DataDecl -> Doc
ppDataDecl (DataDecl ty lval ex) = pp ty <+> pp lval <+> equals <+> pp ex <> semi

downToZero :: Int -> Doc
downToZero w = brackets $ int (w - 1) <> colon <> char '0'

instance PP Type where
  pp Boolean = text "logic"
  pp (Named n) = vid n
  pp (Signed w) = text "signed" <+> downToZero w
  pp (Unsigned w) = text "logic" <+> downToZero w
  pp (Const t) = text "const" <+> pp t
  pp (Enum ids) = text "enum" <+> braces (sep $ punctuate comma $ map vid ids)
  pp (StructUnion su p fields) =
    hang (su' <+> p' <+> lbrace) 2 (vcat $ map field fields) $$ rbrace
      where
        su' = text $ case su of Struct -> "struct"
                                Union -> "union"
        p' = case p of Packed -> text "packed"
                       Unpacked -> empty
        field (t, i) = pp t <+> vid i <> semi
  pp (Array t _) = pp t -- Dimensions appear after the name being bound

instance PP Item where
  pp (Comment s) = text "/*" <+> text s <+> text "*/"
  pp Blankline = text ""
  pp (Reg binding) = ppBind binding <> semi
  pp (Assign lval expr) =
      text "assign" <+> pp lval <+> equals <+> pp expr <> semi
  pp (Initial lval expr)  =
      text "initial" <+> pp lval <+> equals <+> pp expr <> semi
  pp (AlwaysSequential statement) =
      text "always_ff" <+>
           char '@' <> parens (text "posedge" <+>  text clkName) $$
      nest 2 (pp statement)
  pp (ModInstance modID identifier args) = 
    vid modID <+> vid identifier <>
        parens (hsep $ punctuate comma (map pp args)) <> semi
  pp (AlwaysCombinational stmt) = text "always_comb" $$ nest 2 (pp stmt)
                              
  pp _                    = error "SystemVerilog: unsupported item" -- TODO

instance PP LValue where
  pp (Var var) = vid var
  pp (Slice var high low) = vid var <> brackets (int high <> colon <> int low)
  pp (Bit var bit) = vid var <> brackets (int bit)
  pp (Element var index) = vid var <> brackets (pp index)
  pp (HierVar vars) = hcat $ punctuate (char '.') (map vid vars)
  pp (LConcat args) = braces $ sep $ punctuate comma $ map pp args

instance PP Statement where
  pp (SeqBlock dataDecls stmts) =
      hang (text "begin") 2 
               (vcat (map ppDataDecl dataDecls ++ map pp stmts))
               $$ text "end"
  pp (Blocking lval expr) = pp lval <+> text "=" <+> pp expr <> semi
  pp (NonBlocking lval expr) = pp lval <+> text "<=" <+> pp expr <> semi
  pp (Case ex caseItems) =
      hang (text "unique" <+> text "case" <+> parens (pp ex)) 2
               (vcat (map pp caseItems)) $$ text "endcase"
  pp (Return ex) = text "return" <+> pp ex <> semi
  pp Null = semi

  pp (IfElse ((e1, s1):preds) elseCase) =
    hang (text "if" <+> parens (pp e1)) 2 (pp s1) $$
    vcat (map elseif preds) $$ (case elseCase of
                                     Nothing -> empty
                                     Just s -> hang (text "else") 2 (pp s))
      where
        elseif (e,s) = hang (text "else if" <+> parens (pp e)) 2 (pp s)
  pp (IfElse [] (Just s)) = pp s
  pp (IfElse [] Nothing) = empty

  pp (CommentStmt s) = text $ "// " ++ s


instance PP CaseItem where
  pp (CaseItem ex stmt) = hang (pp ex <> colon) 2 (pp stmt)
  pp (Default stmt) = hang (text "default" <> colon) 2 (pp stmt)

-- TODO: Take precedence into account
instance PP Expr where
  pp (LValue lval)      = pp lval
  pp (Literal i)        = int $ fromInteger i
  pp (Unknown size)     = int size <> text "'bx"
  pp (Sized size value) = (if value < 0 then char '-' else empty) <>
     int size <> char '\'' <> char 'd' <> int (fromInteger $ abs value)
  pp (SliceE ex hi lo)  = pp ex <> brackets (int hi <> colon <> int lo)
  pp (BitE ex bit)  = pp ex <> brackets (int bit)
  pp (BinOp ex1 op ex2) = parens $ pp ex1 <+> pp op <+> pp ex2
  pp (UnaryOp op ex) = parens $ pp op <+> pp ex
  pp (Call funcID exprs)=
     vid funcID <> parens ( hsep (punctuate comma (map pp exprs)))
  pp (String str)       = vid str
  pp (Concat args) = braces $ sep $ punctuate comma $ map pp args
  pp (Repeat n args) = braces $ int n <+> pp (Concat args)
  pp (Conditional p e1 e2) =
      parens $ vcat [pp p <+> char '?' <+> pp e1 <+> char ':'
                    , pp e2]

instance PP BinOp where
  pp Plus         = char '+' 
  pp Minus 	  = char '-'   
  pp Times 	  = char '*'   
  pp Divide       = char '/'   
  pp Modulo       = char '%'   
  pp Equal        = text "=="  
  pp NotEqual	  = text "!="  
  pp CaseEqual    = text "===" 
  pp CaseNotEqual = text "!==" 
  pp LogAnd       = text "&&"  
  pp LogOr        = text "||"  
  pp Pow          = text "**"  
  pp LessThan	  = char '<'   
  pp LessEqual    = text "<="  
  pp GreaterThan  = char '>'   
  pp GreaterEqual = text ">="  
  pp BitAnd       = char '&'   
  pp BitOr        = char '|'   
  pp BitXor	  = char '^'   
  pp RightShift   = text ">>"  
  pp LeftShift    = text "<<"  
  pp ArithRight   = text ">>>" 
  pp ArithLeft    = text "<<<" 


instance PP UnaryOp where
  pp Positive      = char '+' 
  pp Negate 	   = char '-'   
  pp LogNot 	   = char '!'   
  pp BitNot        = char '~'   
  pp ReductionAnd  = char '&'   
  pp ReductionNand = text "~&"  
  pp ReductionOr   = char '|'
  pp ReductionNor  = text "~|"
  pp ReductionXor  = char '^'
  pp ReductionXnor = text "~^" 

