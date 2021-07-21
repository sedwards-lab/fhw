{
{-# OPTIONS -w #-}
{- |
Module : Fhw.CoreParser.Parser
Description: Parse an External Core file into a module.  The type of
    each Var is set to UndefinedTy.
-}
module Fhw.CoreParser.Parser ( parse ) where

import Data.Ratio
import System.IO
import System.IO.Unsafe

import Fhw.Core.Core
import Fhw.CoreParser.ParseGlue
import Fhw.CoreParser.Lex (lexer)
import Fhw.CoreParser.Encoding
import Debug.Trace

import Data.List (groupBy)
}

-- directives
%name parse                 -- ^ the name of the parsing function Happy generates
%tokentype { Token }        -- ^ the type of tokens parser accepts

%token                      -- ^ all the possible tokens
 '%module'      { TKmodule }
 '%data'        { TKdata }
 '%forall'      { TKforall }
 '%rec'         { TKrec }
 '%let'         { TKlet }
 '%in'          { TKin }
 '%case'        { TKcase }
 '%of'          { TKof }
 '%external'    { TKexternal }
 '%sym'         { TKsym }
 '%trans'       { TKtrans }
 '%unsafe'      { TKunsafe }
 '%left'        { TKleft }
 '%right'       { TKright }
 '%inst'        { TKinst }
 '%_'           { TKwild }
 '%'            { TKpercent }
 '('            { TKoparen }
 ')'            { TKcparen }
 '{'            { TKobrace }
 '}'            { TKcbrace }
 '#'            { TKhash}
 '='            { TKeq }
 '::'           { TKcoloncolon }
 '*'            { TKstar }
 '->'           { TKrarrow }
 '\\'           { TKlambda}
 '@'            { TKat }
 '.'            { TKdot }
 ':'            { TKcolon }
 '?'            { TKquestion}
 ';'            { TKsemicolon }
 NAME           { TKname $$ }           
 CNAME          { TKcname $$ }              -- ^ capital name
 INTEGER        { TKinteger $$ }
 STRING         { TKstring $$ }
 CHAR           { TKchar $$ }
 ':=:'          { TKeqkd }

-- | P: type constructor for the monad
-- thenP: bind operation of the monad
-- returnP: return operation of the monad
%monad { P } { thenP } { returnP }
%lexer { lexer } { TKEOF }


%%

-- ^ production rules for the grammar
module  :: { Module }
    : '%module' mname tdefs vdefgs               { Module $2 $3 $4 }

tdefs   :: { [Tdef] }
    : {- empty -}       {[]}
    | tdef ';' tdefs    {$1:$3}

tdef    :: { Tdef }
    : '%data' qcname tbinds '=' '{' cons '}'     { Data $2 $3 $6 }

tbind   :: { Tbind }
    :  name { ($1,Klifted) }
    |  '(' name '::' akind ')'
        { ($2,$4) }

tbinds  :: { [Tbind] }
    : {- empty -}   { [] }
    | tbind tbinds  { $1:$2 }

vbind   :: { Vbind }
    : '(' name '::' ty')'   { ($2,$4) }

vbinds  :: { [Vbind] }
    : {-empty -}    { [] }
    | vbind vbinds  { $1:$2 }

bind    :: { Bind }
    : '@' tbind     { Tb $2 }
    | vbind     { Vb $1 }

binds1  :: { [Bind] }
    : bind      { [$1] }
    | bind binds1   { $1:$2 }

attbinds :: { [Tbind] }
    : {- empty -}         { [] }
    | '@' tbind attbinds  { $2:$3 }

akind   :: { Kind }
    : '*'       {Klifted}   
    | '#'       {Kunlifted}
    | '?'       {Kopen}
    | '(' kind ')'  { $2 }
    | bty ':=:' bty {Keq $1 $3}

kind    :: { Kind }
    : akind     { $1 }
    | akind '->' kind 
        { Karrow $1 $3 }

cons    :: { [Cdef] }
    : {- empty -}   { [] }
    | con           { [$1] }
    | con ';' cons  { $1:$3 }

con :: { Cdef }
    : qcname attbinds atys  { Constr $1 $2 $3 }

atys    :: { [Ty] }
    : {- empty -} { [] }
    | aty atys      { $1:$2 }

aty :: { Ty }
    : name       { Tvar $1 }
    | qcname     { Tcon $1 }
    | '(' ty ')' { $2 }

bty :: { Ty }
    : aty   { $1 }
    | bty aty { Tapp $1 $2 }

ty  :: { Ty }
    : bty   {$1}
    | bty '->' ty 
        { tArrow $1 $3 }
    | '%forall' tbinds '.' ty 
        { foldr Tforall $4 $2 }
        | '%sym' ty
                { SymCoercion $2 }
        | '%trans' aty ty
                { TransCoercion $2 $3 }
        | '%unsafe' aty ty
                { UnsafeCoercion $2 $3 }
        | '%left' ty
                { LeftCoercion $2 }
        | '%right' ty
                { RightCoercion $2 }
        | '%inst' aty ty
                { InstCoercion $2 $3 }

vdefgs  :: { [Vdef] }
    : {- empty -}           { [] }
    | vdefg ';' vdefgs      { $1 ++ $3 }

vdefg   :: { [Vdef] }
    : '%rec' '{' vdefs1 '}'  { $3 }
    |  vdef                  { [$1] }

vdefs1  :: { [Vdef] }
    : vdef      { [$1] }
    | vdef ';' vdefs1 { $1:$3 }

vdef    :: { Vdef }
    : qname '::' ty '=' exp 
        { Vdef $1 $3 $5 }

aexp :: { Exp }
    : qname         { Var $1 UndefinedTy }
    | qcname        { Dcon $1 UndefinedTy }
    | lit           { Lit $1 }
    | '(' exp ')'   { $2 }

fexp :: { Exp }
    : fexp aexp      { App $1 $2 }
    | fexp '@' aty   { Appt $1 $3 }
    | aexp           { $1 }

exp :: { Exp }
    : fexp                                        { $1 }
    | '\\' binds1 '->' exp                        { Lam $2 $4 }
    | '%let' vdefg '%in' exp                      { Let $2 $4 }
    | '%case' aty aexp '%of' vbind '{' alts1 '}'  { Case $3 $5 $2 $7 }
-- Very hacky: if we ever manage to eliminate all %external
-- tokens in the standard libraries, this can go
    | '%external' NAME STRING aty                 { Lit (Literal (Lint 0) $4) }

alts1   :: { [Alt] }
    : alt       { [$1] }
    | alt ';' alts1 { $1:$3 }

alt :: { Alt }
    : qcname attbinds vbinds '->' exp        { Acon $1 $2 $3 $5 } 
    | lit '->' exp                           { Alit $1 $3 }
    | '%_' '->' exp                          { Adefault $3 }

lit :: { Lit }
    : '(' INTEGER '::' aty ')'
            { Literal (Lint $2) $4 }
    | '(' INTEGER '%' INTEGER '::' aty ')'
            { Literal (Lrational ($2 % $4)) $6 }
    | '(' '(' INTEGER ')' '%' INTEGER '::' aty ')'
            { Literal (Lrational ($3 % $6)) $8 }
    | '(' CHAR '::' aty ')'
        { Literal (Lchar $2) $4 }
    | '(' STRING '::' aty ')'
        { Literal (Lstring $2) $4 }

name    :: { String }
    : NAME            { zDecodeString $1 }

cname   :: { String }
    : CNAME           { zDecodeString $1 }
         
mname   :: { Mname }
    : pkgName ':' cname
	{ let (parentNames, childName) = splitModuleName $3 in
                 (M ($1, parentNames, childName)) }

pkgName :: { Pname }
        : NAME    { P (zDecodeString $1) }
        | CNAME   { P (zDecodeString $1) }

qname   :: { (Maybe Mname, String) }
        : name              { (Nothing, $1) }
        | mname '.' name    { (Just $1,$3) }

qcname  :: { (Maybe Mname, String) }
        : cname             { (Nothing, $1) }
        | mname '.' cname   { (Just $1,$3) }



{

-- | only used for '%label', external label currently
-- tAddrzh = Tcon $ (Just primMname, "Addrzh")

-- | Reporting the parser error together with the line number
happyError :: P a 
happyError s l = failP (show l ++ ": Parse error\n") (take 100 s) l


-- | seperate the module name from its hierarchy name
splitModuleName :: String -> ([String], String)
splitModuleName mn = 
   let parts   = filter (notElem '.') $ groupBy 
                    (\ c1 c2 -> c1 /= '.' && c2 /= '.') 
  	            mn in
     (take (length parts - 1) parts, last parts)

}

