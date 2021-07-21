{
{-# OPTIONS -w #-}
{- |
Module : Dfc.Parser.Parser
Description: Parse a Dfc file into an AST.
-}
module Dfc.Parser.Parser ( parse ) where

import System.IO

import Dfc.AST
import Dfc.Parser.ParseGlue
import Dfc.Parser.Lex (lexer)
}

-- directives
%name parse           -- ^ the name of the parsing function Happy generates
%tokentype { Token }  -- ^ the type of tokens parser accepts

%token                -- ^ all the possible tokens
   data    { TKdata }
   signed  { TKsigned }
   unsigned { TKunsigned }
   '('     { TKoparen }
   ')'     { TKcparen }
   '='     { TKeq }
   ':'     { TKcolon }
   ';'     { TKsemicolon }
   '|'     { TKpipe }
   '>'     { TKgt }
   '<'     { TKlt }
   '+'     { TKplus }
   '^'     { TKcarat }
   NAME    { TKname $$ }           
   CNAME   { TKcname $$ }       
   INTEGER { TKinteger $$ }

-- | P: type constructor for the monad
-- thenP: bind operation of the monad
-- returnP: return operation of the monad
%lexer { lexer } { TKEOF }
%monad { P } { thenP } { returnP }

%%

dataflow : items { buildDf $1 }

items : {- empty -} { ([],[],[]) }
      | items tdef ';'  { addtdef $1 $2 }
      | items nsig ';'  { addnsig $1 $2 }
      | items ninst ';' { addninst $1 $2 }

tdef : data CNAME '=' variants     { Tdef $2 (reverse $4) }
     | data CNAME unsigned INTEGER { Unsigned $2 $4 }
     | data CNAME signed INTEGER   { Signed $2 $4 }

variants : variant { [$1] } 
         | variants '|' variant { $3 : $1 }

variant : CNAME types { Variant $1 (reverse $2) }

types : {- empty -} { [] }
      | types type  { $2 : $1 }

type : CNAME { $1 }

nsig : NAME params ':' sigtys '>' sigtys { Nsig $1 $2
                                                (reverse $4)
                                                (reverse $6) }

params : {- empty -}  {[]}
       | NAME params { Var $1 : $2 }
       | '(' NAME ':' sigty ')' params { Typed $2 $4 : $6 }

sigtys : {- empty -} {[]}
       | sigtys sigty { $2 : $1 }

sigty : type           { SigType $1 }
      | aty            {  $1 }
      | '(' tyexp ')'  {  $2 }

aty : aty  op { Op $1 $2 }
    | NAME    { Aexp $1 }

tyexp : tyexp op { Op $1 $2 }
      | tyexp2   { $1 }
tyexp2: tyexp2 tyexp3 { Func $1 $2 }
      | tyexp3        { $1 }
tyexp3: NAME          { Aexp $1 }
      | CNAME         { SigType $1 }
      | '(' tyexp ')' { $2 } 

op : '+' { Plus }
   | '^' '(' tyexp ')' { Carat $3 }

ninst : channels '=' NAME args '<' channels { Node  $1 
                                                    $3
                                                    (reverse $4)
                                                    $6 }

args : {- empty -} { [] }
     | args arg    { $2 : $1 }

arg : INTEGER { LitArg $1 }
    | CNAME   { UserArg  $1 } -- user-defined type or data constructor
       
channels : NAME channels { $1 : $2 }
         | {- empty -}   { [] }

{

-- | Reporting the parser error together with the line number
happyError :: P a
happyError s l = failP ("Parse error") (take 100 s) l

buildDf :: ([Tdef], [Nsig], [Ninst]) -> Dataflow
buildDf (t, s, i) = Dataflow (reverse t) (reverse s) (reverse i)

addtdef :: ([Tdef], [Nsig], [Ninst]) -> Tdef -> ([Tdef], [Nsig], [Ninst])
addtdef (t, s, i) tt = (tt:t, s, i)

addnsig :: ([Tdef], [Nsig], [Ninst]) -> Nsig -> ([Tdef], [Nsig], [Ninst])
addnsig (t, s, i) ss = (t, ss:s, i)

addninst :: ([Tdef], [Nsig], [Ninst]) -> Ninst -> ([Tdef], [Nsig], [Ninst])
addninst (t, s, i) ii = (t, s, ii:i)

}
