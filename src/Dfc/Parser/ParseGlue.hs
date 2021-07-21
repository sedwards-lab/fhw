{- |
Module : Dfc.ParseGlue
Description : Functions and tokens to be used in lexing and parsing

The error handling mechanism is done according to 
<http://www.haskell.org/happy/doc/html/sec-monads.html Happy's Support for Monadic Parsers>

-}
module Dfc.Parser.ParseGlue where

-- | Monad for returning a parse error.  This is built upon the "Either" type
-- and passed around in the lexer and parser.
type P a = String  -- ^ Input string to be parsed
        -> Int     -- ^ Line number
        -> Either String a        

-- | Bind operation for the error handling monad
thenP :: P a -> (a -> P b) -> P b
m `thenP`  k = \ s l -> 
  case m s l of 
    Right a -> k a s l
    Left s1 -> Left s1

-- | Return operation for the error handling monad
returnP :: a -> P a
returnP m _ _ = Right m

-- | Fail operation for the error handling monad
failP :: String -> P a
failP s s' num = Left ("Line " ++ show num ++ ", " ++ s ++ ":" ++ s')

-- | Tokens for lexing in "Lex"
data Token =
   -- keywords
   TKdata
 | TKunsigned
 | TKsigned
   -- special characters
 | TKoparen 
 | TKcparen 
 | TKeq 
 | TKcolon
 | TKsemicolon
 | TKpipe
 | TKlt
 | TKgt
 | TKplus
 | TKcarat
   -- identifiers
 | TKname String 
 | TKcname String
   -- integer literal
 | TKinteger Int 
   -- EOF
 | TKEOF
