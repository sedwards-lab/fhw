{-# OPTIONS -Wall #-}
{-# LANGUAGE DeriveDataTypeable #-}
{- |
Module : Dfc
Description : Command-line interface to the dataflow compiler.

-}
module Dfc where

import System.Environment ( getArgs )
import System.Exit ( exitFailure )
import System.Console.GetOpt ( getOpt, usageInfo,
                               OptDescr(..), ArgDescr(..),  ArgOrder(..) )
import System.IO ( stderr, hPutStrLn, hPrint )
import System.Random ( getStdGen )
import Control.Monad ( when ) -- "cabal install mtl"
import Control.Exception
import Data.Typeable
import Data.Data

import Dfc.AST
import Dfc.SAST (inputShow)
import Dfc.SAST
import Dfc.Parser.Parser (parse)

import Dfc.Verilog.VerilogGen (verilog)
import Dfc.Verilog.SystemVerilog as SV
import Dfc.Semantics.Check
import Dfc.Pass.Buffer.SBuffer(addBuffers)
import Dfc.DumpDot (dumpDot)

-- | Custom errors for the command-line program
-- 
--   To return an new error, define it here and throw it from the IO monad
data DfcError = ParseError String
                deriving (Show, Typeable)
                         
instance Exception DfcError


main :: IO ()
main = do
  -- args <- getArgs
  -- (sourceFilename, flags') <- getFlags args
  -- topMod@(Dataflow tdefs nsigs ninsts) <- parseDfc sourceFilename
  -- let df@(SDataflow _ _ nodes) = semCheck topMod
  --     newDf = addBuffers df
  -- print newDf
  -- print "Hello"
  not_main
  
not_main :: IO ()
not_main = (do
  args <- getArgs
  (sourceFilename, flags') <- getFlags args
  let flags = case flags' of
        [] -> [DumpDfc]  -- Default flag if none given
        _ -> flags'

      -- Shorthand for testing a flag
      ifFlag f = when (toConstr f `elem` map toConstr flags) 
      -- Shorthand conditional run of a pass
      runPass f p m = if toConstr f `elem` map toConstr flags then p m else m
      -- Get string associated with flag
      getFlagStr f = let fl = filter ((==toConstr f)  . toConstr) flags
                     in case fl of
                         [Buffer s]     -> s
                         [RandBuf s] -> Just s
                         _              -> Nothing
      -- Get any flag arguments
      bufArg = getFlagStr Buffer{}
      randArg = getFlagStr RandBuf{}

  -- Get random number generator 
  gen <- getStdGen

  -- Read and parse the source file  
  topMod <- parseDfc sourceFilename

  -- Run the whole pipeline
  let processedMod =
          -- runPass RandBuf{} (addBuffers randArg gen) $
          -- runPass Buffer{} (addBuffers bufArg gen) $
          -- addBuffers $ semCheck topMod
          semCheck topMod

  -- Dump the semantically checked SAST
  ifFlag DumpDfc $ print processedMod

  -- Dump the semantically checked SAST in the syntactic form
  -- the DFC compiler expects as input
  ifFlag DumpSourceDfc $ putStrLn $ inputShow processedMod

  -- Dump the SAST in .dot format (for graphviz)
  ifFlag DumpDot $ dumpDot processedMod

  let givenModuleName = concatMap (\s -> case s of ModuleName mn -> mn
                                                   _ -> "") flags
  let moduleName = case givenModuleName of "" -> "main"
                                           s -> s

  -- Generate System Verilog
  ifFlag Verilog $ print $ SV.SourceText $ verilog moduleName processedMod
  
  ) `catch` ( \e -> do
                 hPrint stderr (e :: DfcError)
                 exitFailure )

-- | Read and parse the given textual dfc file.  Throw ParseError on failure.
parseDfc :: FilePath -> IO Dataflow
parseDfc path = do
  file <- readFile path
  let res = parse file 1
  case res of
    Left err -> throw (ParseError err)
    Right m -> return m

-- | Types of command-line flags 
--
-- To add a new command-line flag, add it here and in the options list below

data Flag = Verilog
          | DumpDfc
          | DumpDot
          | DumpSourceDfc
          | ModuleName String
          | Buffer (Maybe String)
          | RandBuf String
            deriving (Eq,Typeable,Data,Show)
                   
-- | Command-line flag details for the getOpt library
--
-- Define new command-line flags here and in the Flag type above
options :: [OptDescr Flag]
options =
    [ Option "v" [] (NoArg Verilog) "Generate Synthesizable System Verilog"
    , Option "f" [] (NoArg DumpDfc) "Pretty print parsed, unprocessed dataflow"
    , Option "d" [] (NoArg DumpDot) "Generate a .dot file for visualization"
    , Option "i" [] (NoArg DumpSourceDfc) "Generate a .df file for re-compilation"
    , Option [] ["modulename"] (ReqArg ModuleName "<name>")
                 "Name of top SystemVerilog module"
    , Option [] ["buffer"] (OptArg Buffer "all|=fanin|=<number>") 
                 "Insert (potentially infinite) buffers"
    , Option [] ["randbuf"] (ReqArg RandBuf "<number>") 
                 "Insert <number> buffers on random channels"
    ]
 
-- | Process command-line flags using the getOpt library
getFlags :: [String] -> IO (String, [Flag])
getFlags args = 
    case getOpt Permute options args of
       (flags, [file], []) -> return (file, flags)
       (_, _, errs) -> cmdlnFail $ Just (concat errs) 
    where
    cmdlnFail :: Maybe String -> IO a
    cmdlnFail msg = do 
        case msg of
            Just s -> putStr $ "error: " ++ s
            _ -> return ()
        hPutStrLn stderr $ usageInfo header options
        exitFailure
        where header = "Usage: dfc [options] file"
