{-# OPTIONS -w #-}
{- |
Module : Lex
Description : The monadic lexical working with the Happy parser generator
-}
module Fhw.CoreParser.Lex where

import Fhw.CoreParser.ParseGlue
import Data.Ratio
import Data.Char


-- | data structure for the tokens


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
lexer cont ('-':'>':cs) = cont TKrarrow cs
lexer cont (':':'=':':':cs) = cont TKeqkd cs
lexer cont (c:cs) 
      | isSpace c = lexer cont cs
      | isLower c || (c == '_') = lexName cont TKname (c:cs)
      | isUpper c = lexName cont TKcname (c:cs)
      | isDigit c || (c == '-') = lexNum cont (c:cs)
lexer cont ('%':(c1:cs)) | not (isKeywordChar c1) = cont TKpercent (c1:cs)
lexer cont ('%':cs) = lexKeyword cont cs
lexer cont ('\'':cs) = lexChar cont cs
lexer cont ('\"':cs) = lexString [] cont cs 
lexer cont ('#':cs) = cont TKhash cs
lexer cont ('(':cs) = cont TKoparen cs
lexer cont (')':cs) = cont TKcparen cs
lexer cont ('{':cs) = cont TKobrace cs
lexer cont ('}':cs) = cont TKcbrace cs
lexer cont ('=':cs) = cont TKeq cs
lexer cont (':':':':cs) = cont TKcoloncolon cs
lexer cont ('*':cs) = cont TKstar cs
lexer cont ('.':cs) = cont TKdot cs
lexer cont ('\\':cs) = cont TKlambda cs
lexer cont ('/':'\\':cs) = cont TKbiglambda cs
lexer cont ('@':cs) = cont TKat cs
lexer cont ('?':cs) = cont TKquestion cs
lexer cont (';':cs) = cont TKsemicolon cs
lexer cont (':':cs) = cont TKcolon cs
lexer cont (c:cs) = failP "invalid character" [c]

-- | lexing a character surrounded by ''
lexChar :: (Token -> P a) -> P a
lexChar cont ('\\':'x':h1:h0:'\'':cs)
	| isHexEscape [h1,h0] =  cont (TKchar (hexToChar h1 h0)) cs
lexChar cont ('\\':cs) = failP "invalid char character" ('\\' : take 10 cs)
lexChar cont ('\'':cs) = failP "invalid char character" "'"
lexChar cont ('\"':cs) = failP "invalid char character" "\""
lexChar cont (c:'\'':cs) = cont (TKchar c) cs

-- | lexing a string surrounded by \"\"
lexString :: String -> (Token -> P a) -> P a
lexString s cont ('\\':'x':h1:h0:cs) 
	| isHexEscape [h1,h0] = lexString (s++[hexToChar h1 h0]) cont cs
lexString s cont ('\\':'&':cs) = lexString s cont cs
lexString s cont ('\\':cs) = failP "invalid string character" "\\"
lexString s cont ('\'':cs) = failP "invalid string character" "'"
lexString s cont ('\"':cs) = cont (TKstring s) cs
lexString s cont (c:cs) = lexString (s++[c]) cont cs

-- | Whether all the characters are lower or digits of hexadecimal numbers
isHexEscape :: String -> Bool
isHexEscape = all (\c -> isHexDigit c && (isDigit c || isLower c))

-- | Convert a the hexical number into the corresponding character
hexToChar :: Char -> Char -> Char
hexToChar h1 h0 = chr $ digitToInt h1 * 16 + digitToInt h0

-- | lexing a number
lexNum :: (Token -> P a) -> P a
lexNum cont cs =
  case cs of
     ('-':cs) ->  f (-1) cs
     _ -> f 1 cs
 where f sgn cs = 
         case span isDigit cs of
          (digits,'.':c:rest) | isDigit c -> 
	     cont (TKrational (numer % denom)) rest'
	       where (fpart,rest') = span isDigit (c:rest)
		     denom = 10 ^ length fpart
		     numer = sgn * (read digits * denom + read fpart)
          (digits,rest) -> cont (TKinteger (sgn * read digits)) rest

-- | lexing either a @lname@ or a @uname@
lexName :: (Token -> P a) -> (String -> Token) -> P a
lexName cont cstr cs = cont (cstr name) rest
   where (name,rest) = span isNameChar cs

-- | lexing a keyword following a % sign
lexKeyword :: (Token -> P a) -> P a
lexKeyword cont cs = 
   case span isKeywordChar cs of
      ("module",rest) -> cont TKmodule rest
      ("data",rest)  -> cont TKdata rest
      ("forall",rest) -> cont TKforall rest	
      ("rec",rest) -> cont TKrec rest	
      ("let",rest) -> cont TKlet rest	
      ("in",rest) -> cont TKin rest	
      ("case",rest) -> cont TKcase rest	
      ("of",rest) -> cont TKof rest	
      ("external",rest) -> cont TKexternal rest
      ("sym",rest) -> cont TKsym rest
      ("trans",rest) -> cont TKtrans rest
      ("unsafe",rest) -> cont TKunsafe rest
      ("left",rest) -> cont TKleft rest
      ("right",rest) -> cont TKright rest
      ("inst",rest) -> cont TKinst rest
      ("_",rest) -> cont TKwild rest
      _ -> failP "invalid keyword" ('%':cs) 

