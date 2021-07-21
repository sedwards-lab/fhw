{-# OPTIONS -w #-}
{- |
Module : Lex
Description : The monadic lexical working with the Happy parser generator
-}
module Fhw.ProfileParser.Lex where

import Fhw.ProfileParser.ParseGlue
import Data.Ratio
import Data.Char


-- isAlpha == isLetter
-- | whether the input is a legal name character
isNameChar c = isAlpha c || isDigit c || (c == '_') || (c == '\'') 

-- | whether the input is a legal keyword character
isKeywordChar c = isAlpha c || (c == '_') 

-- | The monadic lexical analysis function. Refer to <http://www.haskell.org/happy/doc/html/sec-monads.html#sec-lexers threaded lexer> for more information. 
-- The function takes a continuation as an argument. The lexer is to find the next token, and pass it to this continuation to carry on with the parse.
lexer :: (Token -> P a) -- ^ The continuation
      -> P a            -- ^ The return value
lexer cont [] = cont TKEOF []
lexer cont ('\n':cs) = \line -> lexer cont cs (line+1)
lexer cont (c:cs) 
      | isSpace c = lexer cont cs
      | isLetter c || (c == '_') = lexName cont TKname (c:cs)
      | isDigit c || (c == '-') = lexNum cont (c:cs)
lexer cont ('{':cs) = cont TKobrace cs
lexer cont ('}':cs) = cont TKcbrace cs
lexer cont (';':cs) = cont TKsemicolon cs
lexer cont (':':cs) = cont TKcolon cs
lexer cont (c:cs) = failP "invalid character" [c]

-- | lexing a number
lexNum :: (Token -> P a) -> P a
lexNum cont cs =
  case cs of
     ('-':cs) ->  f (-1) cs
     _ -> f 1 cs
 where f sgn cs = 
         case span isDigit cs of
          (digits,rest) -> cont (TKinteger (sgn * read digits)) rest

-- | lexing either a @lname@ or a @uname@
lexName :: (Token -> P a) -> (String -> Token) -> P a
lexName cont cstr cs = cont (cstr name) rest
   where (name,rest) = span isNameChar cs
