{- |
Module : Fhw.CoreParser.ParseGlue
Description : Defined several minor elements to be used in lexing and parsing

The error handling mechanism is done according to 
<http://www.haskell.org/happy/doc/html/sec-monads.html Happy's Support for Monadic Parsers>

-}
module Fhw.CoreParser.ParseGlue where

-- | Type for returning a parse error.  This is build upon the "Either" type
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
failP s s' _ = Left (s ++ ":" ++ s')

-- | Tokens for lexing in "Lex"
data Token =
   TKmodule 
 | TKdata 
 | TKforall 
 | TKrec 
 | TKlet 
 | TKin 
 | TKcase 
 | TKof 
 | TKcast
 | TKnote 
 | TKexternal
 | TKlabel
 | TKwild
 | TKoparen 
 | TKcparen 
 | TKobrace
 | TKcbrace
 | TKhash
 | TKeq 
 | TKcoloncolon 
 | TKstar 
 | TKrarrow 
 | TKlambda
 | TKbiglambda
 | TKat 
 | TKdot
 | TKcolon
 | TKquestion
 | TKsemicolon
 | TKname String 
 | TKcname String
 | TKinteger Integer 
 | TKrational Rational
 | TKstring String 
 | TKchar Char 
 | TKsym
 | TKtrans
 | TKunsafe
 | TKleft
 | TKright
 | TKinst
 | TKpercent
 | TKEOF
 | TKeqkd
