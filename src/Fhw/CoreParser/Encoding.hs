{-# OPTIONS -fno-warn-name-shadowing #-}
{- |
Module : Fhw.CoreParser.Encoding
Description : Define the facilities for name encoding and decoding
-}
module Fhw.CoreParser.Encoding (zDecodeString, 
       			        zEncodeString, 
	                        EncodedString,
                                UserString) where

import Data.Char
import Data.Maybe
import Numeric

-- tjc: TODO: Copied straight out of Encoding.hs.
-- Ugh, maybe we can avoid this copy-pasta...

-- -----------------------------------------------------------------------------
-- The Z-encoding

{- 
This is the main name-encoding and decoding function.  It encodes any
string into a string that is acceptable as a C name.  This is done
right before we emit a symbol name into the compiled C or asm code.
Z-encoding of strings is cached in the FastString interface, so we
never encode the same string more than once.

The basic encoding scheme is this.  

* Tuples (,,,) are coded as Z3T

* Alphabetic characters (upper and lower) and digits
    all translate to themselves; 
    except 'Z', which translates to 'ZZ'
    and    'z', which translates to 'zz'
  We need both so that we can preserve the variable/tycon distinction

* Most other printable characters translate to 'zx' or 'Zx' for some
    alphabetic character x

* The others translate as 'znnnU' where 'nnn' is the decimal number
        of the character

    Before      After
    --------------------------
    Trak        Trak
    foo_wib     foozuwib
    >       zg
    >1      zg1
    foo#        foozh
    foo##       foozhzh
    foo##1      foozhzh1
    fooZ        fooZZ   
    :+      ZCzp
    ()      Z0T 0-tuple
    (,,,,)      Z5T 5-tuple  
    (# #)           Z1H     unboxed 1-tuple (note the space)
    (#,,,,#)    Z5H unboxed 5-tuple
        (NB: There is no Z1T nor Z0H.)
-}

-- | As the user typed it
type UserString = String    
-- | Encoded form
type EncodedString = String 

-- | z encoding a string by calling the 'encodeCh' function
zEncodeString :: UserString         -- ^ string to be z encoded
              -> EncodedString      -- ^ string after z encoding
zEncodeString cs = fromMaybe (go cs) (maybeTuple cs)
      where go = foldr ((++) . encodeCh) []

-- | True for chars that don't need encoding
unencodedChar :: Char -> Bool   
unencodedChar 'Z' = False
unencodedChar 'z' = False
unencodedChar c   = isAsciiLower c || isAsciiUpper c || isDigit c 

-- | z encoding of a character
encodeCh :: Char -> EncodedString
encodeCh c | unencodedChar c = [c] -- Common case first

-- Constructors
encodeCh '('  = "ZL"   -- Needed for things like (,), and (->)
encodeCh ')'  = "ZR"   -- For symmetry with (
encodeCh '['  = "ZM"
encodeCh ']'  = "ZN"
encodeCh ':'  = "ZC"
encodeCh 'Z'  = "ZZ"

-- Variables
encodeCh 'z'  = "zz"
encodeCh '&'  = "za"
encodeCh '|'  = "zb"
encodeCh '^'  = "zc"
encodeCh '$'  = "zd"
encodeCh '='  = "ze"
encodeCh '>'  = "zg"
encodeCh '#'  = "zh"
encodeCh '.'  = "zi"
encodeCh '<'  = "zl"
encodeCh '-'  = "zm"
encodeCh '!'  = "zn"
encodeCh '+'  = "zp"
encodeCh '\'' = "zq"
encodeCh '\\' = "zr"
encodeCh '/'  = "zs"
encodeCh '*'  = "zt"
encodeCh '_'  = "zu"
encodeCh '%'  = "zv"
encodeCh c    = 'z' : if isDigit (head hex_str) then hex_str
                             else '0':hex_str
  where hex_str = showHex (ord c) "U"
  -- TODO: we could improve the encoding here in various ways.
  -- eg. strings of unicode characters come out as 'z1234Uz5678U', we
  -- could remove the 'U' in the middle (the 'z' works as a separator).

    -- showHex = showIntAtBase 16 intToDigit
    -- needed prior to GHC 6.2 because Numeric.showHex added a "0x" prefix

-- | The reverse of 'zEncodeString'
zDecodeString :: EncodedString -> UserString
zDecodeString [] = []
zDecodeString ('Z' : d : rest) 
  | isDigit d = decodeTuple   d rest
  | otherwise = decodeUpper   d : zDecodeString rest
zDecodeString ('z' : d : rest)
  | isDigit d = decodeNumEsc d rest
  | otherwise = decodeLower   d : zDecodeString rest
zDecodeString (c   : rest) = c : zDecodeString rest

-- | z decoding an upper letter
decodeUpper :: Char -> Char
decodeUpper 'L' = '('
decodeUpper 'R' = ')'
decodeUpper 'M' = '['
decodeUpper 'N' = ']'
decodeUpper 'C' = ':'
decodeUpper 'Z' = 'Z'
decodeUpper ch  = {-pprTrace "decodeUpper" (char ch)-} ch
            
-- | z decoding a lower letter
decodeLower :: Char -> Char
decodeLower 'z' = 'z'
decodeLower 'a' = '&'
decodeLower 'b' = '|'
decodeLower 'c' = '^'
decodeLower 'd' = '$'
decodeLower 'e' = '='
decodeLower 'g' = '>'
decodeLower 'h' = '#'
decodeLower 'i' = '.'
decodeLower 'l' = '<'
decodeLower 'm' = '-'
decodeLower 'n' = '!'
decodeLower 'p' = '+'
decodeLower 'q' = '\''
decodeLower 'r' = '\\'
decodeLower 's' = '/'
decodeLower 't' = '*'
decodeLower 'u' = '_'
decodeLower 'v' = '%'
decodeLower ch  = {-pprTrace "decodeLower" (char ch)-} ch

-- | Characters not having a specific code are coded as z224U (in hex)
decodeNumEsc :: Char -> EncodedString -> UserString
decodeNumEsc d = go (digitToInt d)
  where
    go n (c : rest) | isHexDigit c = go (16*n + digitToInt c) rest
    go n ('U' : rest)           = chr n : zDecodeString rest
    go n other = error ("decodeNumEsc: " ++ show n ++  ' ':other)

decodeTuple :: Char -> EncodedString -> UserString
decodeTuple d = go (digitToInt d)
  where
    -- NB. recurse back to zDecodeString after decoding the tuple, because
    -- the tuple might be embedded in a longer name.
    go n (c : rest) | isDigit c = go (10*n + digitToInt c) rest
    go 0 ('T':rest) = "()" ++ zDecodeString rest
    go n ('T':rest) = '(' : replicate (n-1) ',' ++ ")" ++ zDecodeString rest
    go 1 ('H':rest) = "(# #)" ++ zDecodeString rest
    go n ('H':rest) = '(' : '#' : replicate (n-1) ',' ++ "#)" ++ zDecodeString rest
    go n other = error ("decodeTuple: " ++ show n ++ ' ':other)

{-
Tuples are encoded as
    Z3T or Z3H
for 3-tuples or unboxed 3-tuples respectively.  No other encoding starts 
    Z<digit>

* "(# #)" is the tycon for an unboxed 1-tuple (not 0-tuple)
  There are no unboxed 0-tuples.  

* "()" is the tycon for a boxed 0-tuple.
  There are no boxed 1-tuples.
-}

maybeTuple :: UserString -> Maybe EncodedString

{- The original maybeTuple function has been renamed "maybeTupleHelp"
    and is defined below this function. 

   Instead of just checking if the passed string is a lone tuple, this
   function now checks if a tuple is located at the end of a string
   and encodes it accordingly. This change had to be made as a result
   of the renaming process carried out in Fhw.Linker.Linker, which
   deals with qualified names containing tuples.
-}
maybeTuple str = let prefix = takeWhile (/= '(') str 
                     suffix = dropWhile (/= '(') str
                  in if prefix == str then Nothing else
                     let tup = maybeTupleHelp suffix in
                      case tup of
                        Nothing -> Nothing
                        Just tupstr -> Just (zEncodeString prefix ++ tupstr)

--This was the original maybeTuple function. 
maybeTupleHelp :: UserString -> Maybe EncodedString
maybeTupleHelp "(# #)" = Just "Z1H"
maybeTupleHelp ('(' : '#' : cs) = case countCommas (0::Int) cs of
                                 (n, '#' : ')' : rest) -> Just (('Z' : shows (n+1) "H") ++ zEncodeString rest)
                                 _                  -> Nothing
maybeTupleHelp "()" = Just "Z0T"
maybeTupleHelp ('(' : cs)       = case countCommas (0::Int) cs of
                                 (n, ')' : rest) -> Just (('Z' : shows (n+1) "T") ++ zEncodeString rest)
                                 _            -> Nothing
maybeTupleHelp _                = Nothing

countCommas :: Int -> String -> (Int, String)
countCommas n (',' : cs) = countCommas (n+1) cs
countCommas n cs     = (n,cs)

