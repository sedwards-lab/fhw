{-# OPTIONS -w #-}
{- |
Module : Dfc.Parser.Lex
Description : The monadic lexer for a dataflow specification
              working with the Happy parser generator.
-}
module Dfc.Parser.Lex where

import Dfc.Parser.ParseGlue
import Data.Char
import Data.List (isPrefixOf)

-- | The monadic lexical analysis function. Refer to 
-- <http://www.haskell.org/happy/doc/html/sec-monads.html#sec-lexers threaded lexer> 
-- for more information. 
-- The function takes a continuation as an argument. The lexer is to find 
-- the next token, and pass it to this continuation to carry on with the parse.
lexer :: (Token -> P a) -- ^ The continuation
      -> P a            -- ^ The return value
lexer cont [] = cont TKEOF []
lexer cont ('\n':cs) = \line -> lexer cont cs (line+1)
lexer cont ('/':'*':cs) = lexComment cont cs
lexer cont ('d':'a':'t':'a':cs) = cont TKdata cs
lexer cont ('u':'n':'s':'i':'g':'n':'e':'d':cs) = cont TKunsigned cs
lexer cont ('s':'i':'g':'n':'e':'d':cs) = cont TKsigned cs
lexer cont ('(':cs) = cont TKoparen cs
lexer cont (')':cs) = cont TKcparen cs
lexer cont ('=':cs) = cont TKeq cs
lexer cont (';':cs) = cont TKsemicolon cs
lexer cont (':':cs) = cont TKcolon cs
lexer cont ('|':cs) = cont TKpipe cs
lexer cont ('<':cs) = cont TKlt cs
lexer cont ('>':cs) = cont TKgt cs
lexer cont ('+':cs) = cont TKplus cs
lexer cont ('^':cs) = cont TKcarat cs
lexer cont ('\\':c:cs) 
  | isUpper c || isPrimConst (c:cs) = lexEscape cont TKcname (c:cs)
  | otherwise = lexEscape cont TKname (c:cs)
lexer cont (c:cs) 
      | isSpace c = lexer cont cs
      | isUpper c = lexName cont TKcname (c:cs)
      | isLower c || (c == '_') = lexName cont TKname (c:cs)
      | isDigit c || (c == '-') = lexNum cont (c:cs)
lexer cont (c:cs) = failP "invalid character" [c]

-- | Check if an identifier begins with special symbols corresponding
-- to a special Haskell constructor
isPrimConst :: String -> Bool
isPrimConst str = any (`isPrefixOf` str) [":", "[]", "()"] || isTuple str
  where
    isTuple ('(':cs) = head (dropWhile (==',') cs) == ')'
    isTuple _ = False

-- | Lexing an escaped identifier, which includes all characters
-- following a '\' until reaching a space.
lexEscape :: (Token -> P a) -> (String -> Token) -> P a
lexEscape cont toToken cs = cont (toToken name) rest
  where (name,rest) = break isSpace cs

-- | Lexing a comment, which continues until reaching '*/'.
lexComment :: (Token -> P a) -> P a
lexComment cont ('*':'/':cs) = lexer cont cs
lexComment cont (_:cs) = lexComment cont cs

-- | Lexing a (possibly signed) integer.
lexNum :: (Token -> P a) -> P a
lexNum cont cs =
  case cs of
     ('-':cs') -> f (-1) cs'
     _ -> f 1 cs
 where f sgn cs = 
         case span isDigit cs of
          (digits,rest) -> cont (TKinteger $ sgn * read digits) rest

-- | lexing either a @lname@ or a @uname@
lexName :: (Token -> P a) -> (String -> Token) -> P a
lexName cont cstr cs = cont (cstr name) rest
   where (name,rest) = span isNameChar cs
         isNameChar c = isAlpha c || isDigit c || (c == '_')

