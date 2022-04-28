{-# OPTIONS -Wall #-}
{-# LANGUAGE DeriveDataTypeable #-}
{- |
Module : Fhw
Description : Parse the command line and do what is requested

-}
module Fhw where

import System.Environment ( getArgs )
import System.Exit ( exitFailure )
import System.Console.GetOpt ( getOpt, usageInfo,
                               OptDescr(..), ArgDescr(..),  ArgOrder(..) )
import System.IO ( stderr, hPutStrLn, hPrint )
import Control.Monad ( when ) -- "cabal install mtl"
import Control.Exception
import Text.Read
import Data.Typeable
import Data.Data
import Data.Maybe

import Fhw.Core.Core
import Fhw.CoreParser.Parser (parse)
import Fhw.Haskgen.Haskgen ( toHaskell )
import Fhw.Linker.Linker ( link )
import Fhw.SysVerGen.SysVerGen ( toSystemVerilog )
import Fhw.SysVerGen.SystemVerilog as SV

import Fhw.Pass.AnnoteTypes.AnnotateTypes
import Fhw.Pass.Monomorphise.Monomorphise
import Fhw.Pass.PackTypes.PackTypes
import Fhw.Pass.Streamify.Streamify
import Fhw.Pass.UniquifyNames.UniquifyNames ( uniquifyNames )
import Fhw.Pass.LiftConstants.LiftConstants ( liftConstants )
import Fhw.Pass.RemoveRecursion.RemoveRecursion
import Fhw.Pass.TagMemoryOps.TagMemoryOps
import Fhw.Pass.Dataflow.NodeTypes ( toDotDataflow )
import Fhw.Pass.Dataflow.Translate
import Fhw.Pass.Dataflow.MemoryInsert ( memoryInsert )
import Fhw.Pass.Dataflow.MergeMemOps ( mergeMemOps )
import Fhw.Pass.Parallelize.LiftMemops ( liftMemops )
import Fhw.Pass.LiftExpressions.LiftExpressions ( liftExpressions )
import Fhw.Pass.LiftFunction.LiftFunction ( liftFunction )
import Fhw.Pass.AddGo.AddGo ( addGo )
import Fhw.Pass.RemoveLitPat.RemoveLitPat ( removeLitPat )
import Fhw.Pass.PartitionMem.PartitionMem ( partitionMem )
import Fhw.Pass.Defunctionalization.Defunctionalization ( defunctionalization ) 
import Fhw.Pass.Defunctionalization.LambdaLift ( lambdaLift ) 
import Fhw.Pass.DuplicateTypes.DuplicateTypes ( duplicateTypes ) 
import Fhw.ProfileParser.Parser ( parseProfile )
import Fhw.ProfileParser.ProfileInfo
import Fhw.Pass.Compress.Compress
import Fhw.Pass.Dataflow.CompressChoice(compressChoice)
import Fhw.Pass.Unused.Unused (removeUnused)
-- | Custom errors for the command-line program
-- 
--   To return an new error, define it here and throw it from the IO monad
data FhwError = ParseError String
                deriving (Show, Typeable)
                         
instance Exception FhwError


main :: IO ()
main = (do
  args <- getArgs
  (sourceFilename, flags') <- getFlags args
  let flags = case flags' of
        [] -> [GenSystemVerilog]  -- Default flag if none given
        _ -> flags'
      -- Shorthand for testing a flag
      ifFlag f = when (toConstr f `elem` map toConstr flags) 
      -- Shorthand conditional run of a pass
      runPass f p (m, a) = (if toConstr f `elem` map toConstr flags then p m else m, a)
      -- Shorthand conditional run of a pass with the Analysis structure
      runAnalyzePass f p (m, a) = if toConstr f `elem` map toConstr flags 
                                    then p m a  
                                    else (m, a)
      -- Get string associated with flag
      getFlagStr f = let fl = filter ((==toConstr f)  . toConstr) flags
                     in case fl of
                         [DeadCode s]         -> Just s
                         [PackTypes s]        -> s
                         [DumpDataflow s]     -> s
                         [ProfileInput s]     -> Just s
                         _                    -> Nothing

      -- Get the string associated with LinkCore flag; there
      -- might be multiple strings, so we separate this from getFlagStr
      getLinkStr f = case f of
                  LinkCore str -> str
                  _ -> ""

      -- Get any flag arguments
      dflowArg   = fromMaybe "" $ getFlagStr DumpDataflow{}
      packFactor = maybe 1 (fromJust . readMaybe) (getFlagStr PackTypes{})
      deadStr    = fromMaybe "" $ getFlagStr DeadCode{}
      bufferFuncsOption = BufferFunctions `elem` flags
      profileArg = fromMaybe "" $ getFlagStr ProfileInput{}


      --Print core file
      printz m = print $ pmodule (if SimpleCore `elem` flags
                                  then simpleCoreStyle
                                  else externalCoreStyle) m

      --Empty Analysis structure
      emptyAna = Analysis { writeSites = []
                          , readSites  = []
                          , partitions = []}

  -- Read and parse the source file  
  topMod <- parseExternalCore sourceFilename
  -- -- Read and parse an input profile file (if given) 
  profile <- if (toConstr ProfileInput{} `elem` map toConstr flags)
                 then parseProf profileArg
                 else return $ ProfileInfo []

  -- Run the whole pipeline
  let (processedMod, analysisResults) =
          (\(m, a) -> (m, verifyAnalysis a m)) $
          -- (\(m, a) -> (removeUnused m, a)) $
          -- runPass UniquifyNames uniquifyNames $
          runAnalyzePass PartitionMem (partitionMem profile) $
          -- (\(m, a) -> (annotateTypes m, a)) $
          -- runPass LiftFunction liftFunction $
          -- runPass LambdaLift lambdaLift$
          runPass LiftConstants liftConstants $
          runAnalyzePass LiftMemops liftMemops $
          runPass LiftExpressions liftExpressions $
          runPass UniquifyNames uniquifyNames $
          (\(m, a) -> (annotateTypes m, a)) $
          runPass Addgo addGo $
          runPass LitPat removeLitPat $
          runPass Streamify streamify $
          -- runPass LiftFunction liftFunction $
          -- runPass LambdaLift lambdaLift$
          -- (\(m, a) -> (annotateTypes m, a)) $
          -- (\(m, a) -> (compress m, a)) $
          -- (\(m, a) -> (annotateTypes m, a)) $
          -- runPass LiftExpressions liftExpressions $
          runAnalyzePass Monomorphise monomorphise $
          runAnalyzePass TagMemoryOps tagMemoryOps $
          runPass LiftExpressions liftExpressions $
          runPass RemoveRecursion removeRecursion $
          runPass PackTypes{} (pack packFactor (PackDebug `elem` flags)
                                               (AllInline `elem` flags)) $
          runPass DuplicateTys duplicateTypes $
          runPass LiftFunction liftFunction $
          (\(m, a) -> (annotateTypes m, a)) $
          runPass Defunc defunctionalization $
          runPass LambdaLift lambdaLift $
          runPass UniquifyNames uniquifyNames $
          (\(m, a) -> (annotateTypes m, a)) $
          runAnalyzePass Monomorphise monomorphise $
          (topMod, emptyAna)
      --Dataflow representation
      (dFlow,finalAnalysis) =
                  (\(m,a) -> (compressChoice m, a)) $
                  runPass MemoryInsert memoryInsert $
                  runPass MergeMemOps mergeMemOps $
                  toDataflow dflowArg bufferFuncsOption analysisResults processedMod


  -- Dump Linked core file
  ifFlag LinkCore{} $ 
     printz =<< link (map getLinkStr flags) deadStr sourceFilename
  -- Dump Haskell
  ifFlag GenHaskell $ putStrLn $ toHaskell processedMod sourceFilename deadStr
  -- Dump the raw core
  ifFlag DumpRawCore $ printz processedMod
  -- Dump the dot representation of the dataflow network
  ifFlag DumpDotDataflow $ putStrLn $ toDotDataflow dFlow 
  -- Dump the Dataflow representation 
  ifFlag DumpDataflow{} $ print finalAnalysis >> print dFlow 
  -- Dump SystemVerilog
  ifFlag GenSystemVerilog $ print $ 
    SV.SourceText $ toSystemVerilog processedMod
  
  ) `catch` ( \e -> do
                 hPrint stderr (e :: FhwError)
                 exitFailure )

-- | Read and parse the given external core file.  Throw ParseError on failure.
parseExternalCore :: FilePath -> IO Module
parseExternalCore path = do
  file <- readFile path
  let res = parse file 1
  case res of
    Left err -> throw (ParseError err)
    Right m -> return m

-- | Read and parse the given profiling input file.  Throw ParseError on failure.
parseProf :: FilePath -> IO ProfileInfo
parseProf path = do
  file <- readFile path
  let res = parseProfile file 1
  case res of
    Left err -> throw (ParseError err)
    Right m -> return m 

-- | Types of command-line flags 
--
-- To add a new command-line flag, add it here and in the options list below

data Flag = DumpRawCore
          | GenHaskell
          | LinkCore String
          | DeadCode String
          | RemoveRecursion
          | Streamify
          | TagMemoryOps
          | Monomorphise
          | PackTypes (Maybe String)
          | PackDebug 
          | AllInline 
          | UniquifyNames
          | LiftConstants
          | GenSystemVerilog
          | DumpDotDataflow
          | DumpDataflow (Maybe String)
          | SimpleCore
          | LiftExpressions
          | LiftFunction
          | LiftMemops
          | Addgo 
          | LitPat
          | MemoryInsert
          | MergeMemOps
          | LambdaLift
          | Defunc
          | BufferFunctions
          | PartitionMem
          | DuplicateTys
          | ProfileInput String
          deriving (Eq,Typeable,Data,Show)
                   
-- | Command-line flag details for the getOpt library
--
-- Define new command-line flags here and in the Flag type above
options :: [OptDescr Flag]
options =
 [ Option "r" [] (NoArg DumpRawCore)      "Pretty print parsed, unprocessed (raw) core"
 , Option "h" [] (NoArg GenHaskell)       "Generate Haskell"  
 , Option "d" [] (ReqArg DeadCode "[seed1,seed2,...]") genstring  
 , Option "l" [] (ReqArg LinkCore "/absolute/path/to/external/core/libraries") "Link external core libraries to input file"  
 , Option "v" [] (NoArg GenSystemVerilog) "Generate SystemVerilog (default)"
 , Option [] ["simplified"] (NoArg SimpleCore) "Omit paths and z-encoding from core output"
 , Option [] ["uniquify"] (NoArg UniquifyNames) "Make names globally unique"
 , Option [] ["lift-constants"] (NoArg LiftConstants) "Lift global constants into local lets"
 , Option [] ["rmrec"] (NoArg RemoveRecursion) "Remove recursion"
 , Option [] ["tagmemops"] (NoArg TagMemoryOps) "Introduce abstract memory operations"
 , Option [] ["mono"] (NoArg Monomorphise) "Remove polymorphism"
 , Option [] ["pack"] (OptArg PackTypes "packing-factor") "Pack recursive datatypes"
 , Option [] ["packdebug"] (NoArg PackDebug) "When paired with --pack, call 'unpack' on final result of a packed program"
 , Option [] ["allinline"] (NoArg AllInline) "When paired with --pack, inline all recursive calls (higher performance, but much larger programs generated)"
 , Option [] ["streamify"] (NoArg Streamify) "Lift program into Stream world"
 , Option [] ["dot"] (NoArg DumpDotDataflow) "Convert the program into a dot graphviz version of the dataflow network"
 , Option [] ["dataflow"] (OptArg DumpDataflow "strict") "Convert program into Dataflow network"
 , Option [] ["lift-memops"] (NoArg LiftMemops) "Lift independent memory accesses into the same scope to enable memory-level parallelism"
 , Option [] ["lift-expressions"] (NoArg LiftExpressions) "Lift non-variable subexpressions of function calls and case scrutinies into lets"
 , Option [] ["lift-function"] (NoArg LiftFunction) "Lift let-defined function definitions into the global environment"
 , Option [] ["add-go"] (NoArg Addgo) "Introduce Go type to trigger constants"
 , Option [] ["remove-lit-pat"] (NoArg LitPat) "Remove literal pattern matching" 
 , Option [] ["mem-insert"] (NoArg MemoryInsert) "Introduce explicit memories to dataflow networks"
 , Option [] ["merge-memops"] (NoArg MergeMemOps) "Merge all reads (writes) of a single type into a single read (write) node in dataflow"
 , Option [] ["lambda-lift"] (NoArg LambdaLift) "Lift anonymous functions and binds free variables in lambda expressions"
 , Option [] ["defunc"] (NoArg Defunc) "Convert higher order functions to first order functions by adding datatypes"
 , Option [] ["buffer-functions"] (NoArg BufferFunctions) "Add buffers around function calls when generating dataflow"
 , Option [] ["partition"] (NoArg PartitionMem) "Partition on-chip memory across types"
 , Option [] ["profile-input"] (ReqArg ProfileInput "/absolute/path/to/profile/input") "Read in profiling information"
 , Option [] ["duplicate-types"] (NoArg DuplicateTys) "Apply type duplication pass to enable memory-level parallelsim"
 ]
  where genstring = "run dead code removal (requires comma-separated list of user-defined names enclosed in square brackets)"
 
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
        where header = "Usage: fhw [options] file"
