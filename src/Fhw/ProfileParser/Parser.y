{
{-# OPTIONS -w #-}
{- |
Module : Fhw.ProfileParser.Parser
Description: Parse an External Core file into a module.  The type of
    each Var is set to UndefinedTy.
-}
module Fhw.ProfileParser.Parser ( parseProfile ) where

import Data.Ratio
import System.IO
import System.IO.Unsafe

import Fhw.Core.Core
import Fhw.ProfileParser.ProfileInfo
import Fhw.ProfileParser.ParseGlue
import Fhw.ProfileParser.Lex (lexer)
import Debug.Trace

import Data.List (groupBy)
}

-- directives
%name parseProfile          -- ^ the name of the parsing function Happy generates
%tokentype { Token }        -- ^ the type of tokens parser accepts

%token                      -- ^ all the possible tokens
 '{'            { TKobrace }
 '}'            { TKcbrace }
 ':'            { TKcolon }
 ';'            { TKsemicolon }
 NAME           { TKname $$ }           
 INTEGER        { TKinteger $$ }

-- | P: type constructor for the monad
-- thenP: bind operation of the monad
-- returnP: return operation of the monad
%monad { P } { thenP } { returnP }
%lexer { lexer } { TKEOF }


%%

profile : info { ProfileInfo $1 } 

info : '{' members '}' { reverse $2 }
     
members : pair { [$1] }
        | members  pair { $2 : $1 }

pair : NAME ':' value ';' { ($1, $3) }

value : info    { MetaInfo (ProfileInfo $1) }
      | INTEGER { MetaInt $1 }



{

-- | Reporting the parser error together with the line number
happyError :: P a 
happyError s l = failP (show l ++ ": Parse error\n") (take 100 s) l


}

