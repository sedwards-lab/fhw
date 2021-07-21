{- |
Module : Fhw.Haskgen.Haskgen 
Description : Translates an external core AST to Haskell

All of the functions in this module translate a component of the external core grammar
to an equivalent, legal Haskell construct.

Both Haskgen and DeadCode make a number of simplifications and modifications to 
Core code to make it more manageable. Any of these could lead to issues down the road,
so I'll list them here as a quick reference if/when things start breaking:

Issue                           Solution
----------                      ----------
Generated files were including  Omitting these user-level definitions and just using
definitions for primitives      those supplied by Prelude
like Int, Char, :, etc. w/o     
including all their class 
derivations

Leaving the type specifiation  Omitting the type specification from the variable definition
for variables defined in Let   if defined in a Let expression
expressions was causing some
"type variable mismatch"
erros

-}


module Fhw.Haskgen.Haskgen ( toHaskell ) where

import Fhw.Core.Core
import Data.List
import Data.Char
import Numeric
import Fhw.Haskgen.DeadCode
--import Debug.Trace

import Text.PrettyPrint

-- |First we do dead code removal of given core module, then
-- |we call the top-level translation function.
toHaskell :: Module -> String -> String -> String 
toHaskell topmod filename seed = 
  let repl ',' = ' '
      repl '[' = ' '
      repl ']' = ' '
      repl c   = c
      seedlist = words $ map repl seed
      newmod = if seed == "" 
                then topmod 
                else removeCode topmod seedlist --dead code removal
  in render $ topTranslate newmod filename

-- |Translate an external core module to a haskell program, represented as a Pretty-Printing Document.  
topTranslate :: Module -> String -> Doc
topTranslate (Module _ tdefs vdefs) name = 
  vcat langPragmas <> text "\n"  -- LANGUAGE pragmas
  $$ text ("module " ++ filename ++ "gen where")  -- name of generated file 
  $$ vcat (map (text . (++) "import ") imports) <> text "\n"  --import statements
  $$ vcat (map tTyDef tdefs) --Type definitions
  $$ vcat (map fst vdefpairs)  --Variable definitions
  $$ vcat (map (text.head) ((group.sort) (concatMap snd vdefpairs))) --External function calls
  where 
    vdefpairs = map tVarDef vdefs
    filename = takeWhile (/= '.') $ if hasslash 
                then tail . drop lastslash $ name
                else name
    lastslash = (last . elemIndices '/') name
    hasslash = '/' `elem` name
    langPragmas = map insertPragma pragmas
    insertPragma str =  braces $ text $ "-# LANGUAGE " ++ str ++ " #-"
    pragmas = ["MagicHash"
              ,"UnboxedTuples"
              ,"TemplateHaskell"
              ,"ExistentialQuantification"
              ,"ForeignFunctionInterface"
              ,"BangPatterns"
              ,"RankNTypes"] 
    imports = ["GHC.Prim"
              ,"GHC.Types"
              ,"GHC.Integer.GMP.Internals"
              ,"GHC.Word ( Word32(W32#) )"
              ,"Prelude (Integer)"] 

isNotTyClass :: Qual Tcon -> Bool
isNotTyClass (Just (M (P "ghc-prim",["GHC"],"Classes")),_) = False
isNotTyClass _ = True

-- |Type definition.
tTyDef :: Tdef -> Doc
tTyDef (Data tc@(_,tycon) tys cdefs) =     
    if fixVar tycon `elem` primtypes || isPrim tc && isNotTyClass tc
      then empty 
      else text "data" <+> pname tycon <+> hsep (map tTyBind tys)
           <+> equals <+>
           cat (punctuate (text " | " ) $ map tConstrDef cdefs)
    where primtypes = ["Stream", "Integer", "Word32"]

-- |constructor definition
tConstrDef :: Cdef -> Doc
tConstrDef  (Constr (_, dcon) binds types) 
  | null binds = restOfDef dcon types
  | otherwise = text "forall" <+> hsep (map tTyBind binds) 
                <+> char '.' <+> restOfDef dcon types
    where restOfDef d t = pname d <+> sep (map (parens.tType) t)

-- |top level variable definition
tVarDef :: Vdef -> (Doc,[String])
tVarDef (Vdef (Just (M (_,_,leaf)),_) _ _) 
  | ":Main" `isPrefixOf` leaf = (empty,[]) -- avoid generating the extra ":Main" function
tVarDef (Vdef (_,var) ty expr) = (vdef,foreignexp)
    where 
      (v,expres,foreignexp) = defComponents (var,expr)
      vdef = v <+> colon <> colon <+> tType ty  --type signature
             $+$ v <+> equals <+> expres        --body of definition 


-- |types
tType :: Ty -> Doc
tType (Tvar tvar) = pname tvar
tType (Tcon (_,tcon)) = pname tcon
tType (Tapp (Tapp (Tcon (_, "->")) ty1) ty2) = tbType ty1 <+> text "->" <+> tType ty2 
tType (Tapp ty1 ty2) = tType ty1 <+> parens (tType ty2)
tType (Tforall bind ty) = foldl (<+>) empty [text "forall"
                                            ,tTyBind bind
                                            ,char '.'
                                            ,parens (tType ty)]
tType _ = text "Other type" 
-- ^ I don't cover coercions yet, but haven't run into them and don't know
-- ^ how to make them show up in a core file...

-- |basic types
tbType :: Ty -> Doc
tbType (Tapp (Tapp (Tcon (_, "->")) ty1) ty2) = 
  parens $ tbType ty1 <+> text "->" <+> tType ty2
tbType ty = tType ty

-- |Add type annotations if defined
annotateType :: Ty -> Doc -> Doc
annotateType ty d | noTypeVars ty = 
  parens $ d <+> colon <> colon <+> tType ty
annotateType _ d = d

-- |Return True if type doesn't contain any type variables (or UndefinedTy)
noTypeVars :: Ty -> Bool
noTypeVars UndefinedTy = False
noTypeVars (Tvar _) = False
noTypeVars (Tapp ty1 ty2) = noTypeVars ty1 && noTypeVars ty2
noTypeVars (Tforall _ _) = False
noTypeVars _ = True

-- |expressions
tExp :: Exp -> (Doc,[String])
tExp (Appt ex _)                  = tExp ex
tExp (Lit lit)                    = (tLiteral lit, [])
tExp (Dcon (_,dcon) _)            = (pname dcon, [])
tExp (Var (_,var) ty)             = (annotateType ty $ pname var, [])
tExp (Let vdefs expr) = 
  let vdefpairs = map tLetVarDef vdefs 
      ex = tExp expr
      doc = text "let" <+> vcat (map fst vdefpairs)
            $+$ text "in" <+> fst ex
      extFuncs = concatMap snd vdefpairs ++ snd ex
  in (parens doc,extFuncs)

tExp (App ex1 ex2) = 
  let result1 = tExp ex1
      result2 = tExp ex2
      doc = sep [fst result1, parens $ nest 1 $ fst result2]
      extFuncs = snd result1 ++ snd result2
  in (parens doc, extFuncs) 

tExp (Lam binds expr) =  
  let args = hsep $ map tBind binds
      ex = tExp expr
      doc = if isEmpty args
              then fst ex
              else parens $ text "\\" <+> sep [args <+> text "->",fst ex]
      extFuncs = snd ex
  in (doc, extFuncs)

tExp (Case expr (var, _) _ cases) = 
  let result =  map (\x -> tCases (x,var)) newcases
      newcases = case head cases of --Need to put default case at end of list
                    (Adefault _) -> tail cases ++ [head cases]
                    _ -> cases
      ex = tExp expr
      doc = parens $ text "case" <+> fst ex <+> text "of"
            $+$ vcat (map fst result)
      extFuncs = concatMap snd result ++ snd ex
  in (doc, extFuncs)


-- |local variable definition (we omit types for these)
tLetVarDef :: Vdef -> (Doc,[String])
tLetVarDef (Vdef (_,var) _ expr) = 
  let (v,expres,foreignexp) = defComponents (var,expr)
  in (v <+> equals <+> expres, foreignexp)


-- |variable bindings
tBind :: Bind -> Doc
tBind (Vb (var,_)) = pname var
tBind _ = empty 

-- |type bindings
tTyBind :: Tbind -> Doc
tTyBind (ty, _) = pname ty

-- |alternatives in a case statement
tCases :: (Alt,String) -> (Doc,[String])
tCases (alt,var) = (hang (pname var <> char '@' <> pat <+> text "->") 
                    2 (fst texpr), snd texpr)
  where 
    pat = case alt of
      --ignoring type arguments
      (Acon (_,"(# #)") _ [v] _) -> parens $ insertSingletonArg v
      (Acon (_,dcon) _ vars _) -> parens (pname dcon <+> hsep (map (tBind.Vb) vars))
      (Alit lit _)             -> parens (tLiteral lit)
      (Adefault _)             -> char '_'
    texpr = case alt of
      (Acon _ _ _ expr) -> tExp expr 
      (Alit _ expr)     -> tExp expr 
      (Adefault expr)   -> tExp expr 

    {-
      In core, unboxed singletons can appear as data constructors applied
      to an argument as a pattern, such as "(# #) x". 
      However, an expression of this form is apparently illegal 
      in Haskell; the argument must be inside the
      singleton constructor: "(# x #)". 

      This function does this argument insertion.
    -}
    insertSingletonArg (v,_) = text "(#" <+> pname v <+> text "#)"


-- |Literals
tLiteral :: Lit -> Doc
tLiteral (Literal cl t) = tclit cl t

-- |Core of the literal type 
tclit :: CoreLit -> Ty -> Doc
tclit core ty = 
  let helper f num = if num < 0 && render (tType ty) == "Word#"
                     then parens (f num) else (text . show . f) num
  in (case core of
        (Lint i)  -> helper integer i
        (Lrational r) -> helper rational r 
        (Lchar c) -> text (if isAlphaNum c then "\'" ++ [chr $ ord c] ++ "\'"
                          else "\'\\x" ++ showHex (ord c) "" ++ "\'")
        (Lstring s) -> pstring s) <> opthash (render (tType ty))
  where opthash "Word#" = text "##"
        opthash "Double#" = text "##"
        opthash xs = text (if last xs == '#' then "#" else "")

defComponents :: (Var,Exp) -> (Doc,Doc,[String])
defComponents (var,expr) = (v,expres,foreignexp)
  where
      v = pname var
      expres = fst $ tExp expr
      foreignexp = snd $ tExp expr 

--convert names (e.g. vars, dcons, etc.) to Docs
pname :: String -> Doc
pname s = text $ fixVar s

--convert Haskell strings into Docs
pstring :: String -> Doc
pstring s = doubleQuotes(text (escape s))

-- Stole this function from Fhw.Core.Core. Not entirely sure if this will
-- break a haskell program...
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

--Rework external core names to comply with Haskell lexical standards.
--Also renaming some entities that are already defined and have a ton of
--structure surrounding them e.g. Int, :, []
fixVar :: String -> String
fixVar var 
  | var == "case" = "case_123" --Ensure that randomly generated names aren't keywords
  | var == "$" = "(" ++ var ++ ")"
  | isTuple prevar = prevar  
  | any permitChar prevar = case newvar of
                            "Num" -> "TNum"
                            _ -> if hasHash then newvar ++ "#" else newvar
  | otherwise = "(" ++ prevar ++ (if hasHash then "#" else "") ++ ")"
    where permitChar x = isLetter x || isDigit x || x == '_' || x == '\''
          prevar' = if hasHash then init var else var
          prevar = (filter . flip notElem) "$" prevar'
          newvar = (filter permitChar . convertSpecialChars) prevar
          isTuple [] = False
          isTuple x = head x == '(' && last x == ')' 
                      && all (`elem` ",# ") (tail.init $ x)
          hasHash = any permitChar var && last var == '#'

--Used to rename reserved symbols and names to avoid conflicts
convertSpecialChars :: String -> String
convertSpecialChars [] = []
convertSpecialChars ('[':']':rest) = "ListFHW" ++ convertSpecialChars rest
convertSpecialChars ('(':'#':rest) = "Unboxed" ++ convertTuple 0 rest
convertSpecialChars ('(':rest) = convertTuple 0 rest
convertSpecialChars (c:rest) = renameChar c ++ convertSpecialChars rest

convertTuple :: Int -> String -> String
convertTuple _ [] = []
convertTuple _ ('(':rest) = convertTuple 0 rest
convertTuple n (',':rest) = convertTuple (n+1) rest
convertTuple n ('#':rest) = convertTuple n rest
convertTuple n (')':rest) = "Tuple" ++ show n ++ convertSpecialChars rest
convertTuple _ (c:_) = error $ "Unexpected character " ++ [c] ++ " within a tuple-like string."

--Helps out convertSpecialChars function
renameChar :: Char -> String
renameChar '+' = "plus"
renameChar '-' = "minus"
renameChar '*' = "times"
renameChar '/' = "slash"
renameChar '=' = "equals"
renameChar '>' = "greater"
renameChar '<' = "less"
renameChar ':' = "ConsFHW"
renameChar c   = [c]
