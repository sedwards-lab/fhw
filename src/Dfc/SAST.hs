{-
Module : Dfc.SAST
Description : The types defining the semantic abstract syntax tree for a 
              dataflow network. This SAST is generated by running our semantic
              checks against a parsed dataflow network.

-}
module Dfc.SAST where

import Dfc.AST 
import Data.List (intercalate,intersperse)
import Data.Char (isLetter, isDigit)
import Text.PrettyPrint

-- | A semantically-checked dataflow network.
--
-- The node instances and associated channels are all consistent.
--
-- Each channel is point-to-point, i.e., it appears exactly once as an
-- input to a node and exactly once as an output.
data SDataflow = SDataflow [Tdef] [Nsig] [SNode]
  deriving (Eq)

-- | A node instance: a name (mux, merge, etc.),
-- a list of type arguments, and structured lists of typed input and output
-- channels (in that order)
data SNode = SNode String [SArg] [Chan] [Chan]
  deriving (Eq)

-- | An argument to the instance of a node that isn't an input or output channel
data SArg = STyArg Tcon -- ^ A type constructor (a specific type)
          | SLitArg Int -- ^ Integer literal, e.g., for a constant         
          | SDconArg Dcon -- ^ A data constructor
          -- | SVector [Tcon] -- ^ A vector of types
  deriving (Eq)

-- | A channel on an instance
data Chan = Bind Channel Tcon -- ^ Named channel with a type 
          | Group [Chan] -- ^ Group of channels derived, e.g., from the + operator
          deriving (Ord,Show,Eq)

instance Show SDataflow where
  -- TODO: show sigs, too
  show (SDataflow tdefs _ nodes) = let onLines = intercalate "\n" in
                                       (onLines (map show  tdefs) ++ "\n" ++ 
                                        onLines (map show nodes))

instance Show SNode where
  show node = render $ pNode node

instance Show SArg where
  show arg = render $ pArg arg

-- | Get the name of a node
getName :: SNode -> String
getName (SNode name _ _ _) = name

getInputs :: SNode -> [Chan]
getInputs (SNode _ _ inputs _) = inputs

getOutputs :: SNode -> [Chan]
getOutputs (SNode _ _ _ outputs) = outputs

-- | Return all names from a potential group of channels
getChanNames :: Chan -> [String]
getChanNames (Bind "_" _) = [] --ignore wildcards
getChanNames (Bind n _) = [n]
getChanNames (Group chans) = concatMap getChanNames chans

pNode :: SNode -> Doc
pNode (SNode name args ins outs) = text name <+> parens tArgs <+> colon <+> 
                                   spaced (map pChan ins) <+> char '>' <+> 
                                   spaced (map pChan outs)
  where
    spaced = hcat . intersperse space
    tArgs = commafy (map pArg args)

pChan :: Chan -> Doc
pChan (Bind chan ty) = parens (text chan <> comma <> text ty)
pChan (Group chans)  = brackets (commafy $ map pChan chans)

pArg :: SArg -> Doc
pArg (STyArg tc) = text "Ty" <+> text tc
pArg (SLitArg num) = text "Lit" <+> int num
pArg (SDconArg dc) = text "Dcon" <+> text dc

commafy :: [Doc] -> Doc
commafy = cat . punctuate comma

-- | Pretty print a Dataflow instance in the form the Dfc compiler 
--   expects as input
inputShow :: SDataflow -> String
inputShow (SDataflow tdefs _ nodes) =
  onLines signature_list ++
  onLines (map ((++" ;") . inpTdef) tdefs) ++ "\n" ++
  onLines (map inpNode nodes)
  where
    onLines = intercalate "\n"
    inpNode (SNode name args ins outs) = 
      render $ printChans outs <+> equals <+> text name <+> hsep (map printArg args)
                               <+> text "<" <+> printChans ins <+> text ";"
    printChans chans' = let chans = map chanName $ concatMap flatten' chans'
                            chanName (Bind ch _) = showIt ch
                            chanName _ = empty
                        in hcat $ intersperse space chans
    printArg (STyArg ty) = showIt ty
    printArg (SLitArg num) = int num
    printArg (SDconArg dc) = showIt dc

    rShow = render . showIt
    inpTdef (Unsigned tc bits) = "data " ++ rShow tc ++ " unsigned " ++ show bits
    inpTdef (Signed tc bits) = "data " ++ rShow tc ++ " signed " ++ show bits
    inpTdef (Tdef tc vars) = "data " ++ rShow tc ++ " = " ++ 
                          intercalate " | " (map (render . showVar) vars) 

    showVar (Variant dc tys) = showIt dc <+> (hcat $ intersperse space $ map showIt tys) 

-- | Escape an identifier if it contains non-standard characters
showIt :: String -> Doc
showIt s = if any (not . isNameChar) s
            then text $ '\\':s
            else text s
  where
    isNameChar c = isLetter c || isDigit c || c == '_'

-- | Flatten a potential Group of channels into a list of simple Binds
flatten' :: Chan -> [Chan]
flatten' (Group chans) = concatMap flatten' chans
flatten' chan = [chan]

signature_list :: [String]
signature_list = ["sink a: a > ;"
       ,"source a:  > a;"
       ,"merge a: a+ > a;"
       ,"mergectrl s d : d^(variants s) > s d ;"
       ,"fork a: a > a+;"
       ,"dcon a (b : (dcon a)): (dcon_fields b) > a;"
       ,"destruct a (b: (dcon a)): a > (dcon_fields b);"
       ,"mux a b: a b^(variants a) > b;"
       ,"demux a b: a b > b^(variants a);"
       ,"const a (b : a): Go > a;"
       ,"initbuf a (b : (dcon a)) : a > a ;"
       ,"initibuf a (b : a) : a > a ;"
       ,"buf a: a > a;"
       ,"dbuf a: a > a;"
       ,"rbuf a: a > a;"
       ,"togo a : a > Go ;"
       ,"tap a : a > ;"
       ,"read a b: a > b;"
       ,"write a b: a > b;"
       ,"bram a b: a > b;"
       ,"not: Bool > Bool;"
       ,"/* Binary operations */"
       ,"op_add a: a a > a ;"
       ,"op_sub a: a a > a ;"
       ,"op_mul a: a a > a ;"
       ,"op_div a:  a a > a ;"
       ,"op_mod a:  a a > a ;"
       ,"op_eq a: a a > Bool;"
       ,"op_lt a: a a > Bool;"
       ,"op_gt a: a a > Bool;"
       ,"op_lteq a: a a > Bool;"
       ,"op_gteq a: a a > Bool;"
       ,"op_and: Bool Bool > Bool;"
       ,"op_or:  Bool Bool > Bool;"]
