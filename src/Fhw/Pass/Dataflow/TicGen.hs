module Fhw.Pass.Dataflow.TicGen where

import Text.PrettyPrint
import System.IO
import Data.List
import Data.Maybe
import Control.Applicative
import Language.Haskell.Interpreter hiding (parens,name)

-- | Each node is specified by the name of the function
-- describing its firing rules, a unique name, a list of its inputs, 
-- and a flag indicating whether the node is stateful.
type NodeInfo = (String,String,[String],Bool)
type Outputs = [String]

-- | Simulate a dataflow graph
simulate :: [(NodeInfo,Outputs)] -> [String] ->
            IO (Either InterpreterError (Int,Maybe String,[(String,Maybe Int)]))
simulate nodes inputs = do
 withFile "Tic.hs" WriteMode (writeTics nodes inputs)
 runInterpreter runSimulator 

-- | Generate the "Tic" module, which contains the definitions for a simulation
-- function and a tic function.
writeTics :: [(NodeInfo,[String])] -> [String] -> Handle -> IO ()
writeTics nodeInfo inputNames h = hPutStrLn h $ render ticModule
  where 
    ticModule = vcat $ map text ("module Tic where":imports) ++ 
                       [getNumsDef,getResultDef,simulateDef,ticDef]

    imports = map ("import "++) ["Fhw.Pass.Dataflow.NodeLib"
                                ,"Data.List"
                                ,"Data.Maybe"
                                ,"Control.Applicative"
                                ,"System.IO"
                                ,"qualified Data.Map as Map"]


    -- State variable names
    stateVars = map genStateVars $ filter needsState nodeInfo 
    needsState ((_,_,_,hasState),_) = hasState
    genStateVars ((_,name,_,_),_) = name++"St"

    stateTuple = bigTxtTuple $ map text stateVars
    newStateTuple = bigTxtTuple $ map (text . (++"\'")) stateVars
    bigTxtTuple contents = let (pre,post) = splitAt tupLength contents
                           in if length contents <= tupLength
                            then txtTuple contents
                            else parens $
                                 txtTuple pre <> comma <> bigTxtTuple post
    tupLength = 62 --Maximum tuple size GHC can handle

    getNumsDef = hsep [text "getNums",infStatePat,equals
                      ,brackets $ fcat $ intersperse comma infStateNums] 
      where
        infStateNums = map getFirst $ filter ("InfBuf" `isInfixOf`) stateVars
        getFirst sv = parens (doubleQuotes (text sv) <> comma <> 
                              text "fmap" <+> text "fst" <+> text sv)
        infStatePat = bigTxtTuple $ map tupInfSt stateVars
        tupInfSt st = if "InfBuf" `isInfixOf` st
                        then text st
                        else char '_'

    -- Function to extract results from a State tuple
    getResultDef = hsep [text "getResult",resultPat,equals,resultTup]
      where
      resultTup = case length results of
                    0 -> error "Could not find any \"out\" nodes in network"
                    1 -> text (head results ++ "St")
                    _ -> txtTuple $ map (text . (++"St")) results

      --Pattern match to extract results from State tuple
      resultPat = bigTxtTuple $ map (text . onlyResults . remStSuffix) stateVars
      onlyResults stateVar = if stateVar `elem` results
                              then stateVar ++ "St"
                              else "_"


      --Names of result ports from circuit
      results = map getResultName $ filter isOutNode nodeInfo
      getResultName ((_,_,[result],_),_) = result
      getResultName _ = error "Too many results"

    simulateDef = hsep [text "simulate",text "stopAt100"
                       ,hsep (map text inputNames),text "handle"
                       ,equals,text "do"] $$
                  nest 1 (printUtilText nameList $$
                          ticRun True $$
                          text "let num = 0" $$
                          checkAndReturn $$
                          text "where" $$
                          hsep [text "execute",text "num",text "st",equals 
                               ,text "if stopAt100 && num >= 100 then return"
                               ,parens (text "num" <> comma <> text "fmap show" <+>
                                        char '$' <+> text "getResult st" <> comma
                                        <> text "getNums st")
                               ,text "else",text "do"] $$
                          nest 1 (ticRun False $$ checkAndReturn))
                  
      where
        nameList = brackets $ fsep $ intersperse comma $ 
                   map (doubleQuotes . text) orderedSignals
        ticRun firstRun = hsep [newStText,text "<-",text "tic",text "handle"
                               ,if firstRun then strAndTup else text "st"
                               ,bigTxtTuple $ if firstRun 
                                              then callWrap inputNames
                                              else makeNothings inputNames]
        checkAndReturn = hsep [text "if",text "isJust"
                              ,parens (text "getResult" <+> newStText)] $$
                         nest 1 (hsep [text "then",text "return"
                                      ,parens (text "num" <> comma <> 
                                               text "fmap show" <+> char '$' 
                                               <+> text "getResult newState"
                                               <> comma <> text "getNums newState")] $$
                                 hsep [text "else",text "execute"
                                      ,parens (text "num + 1"),newStText])
        newStText = text "newState"

        callWrap = map (parens . (text "Just" <+>) . text)
        strAndTup = bigTxtTuple (makeNothings stateVars)
        makeNothings = flip replicate (text "Nothing") . length
                  
    ticDef = hang (hsep [text "tic",text "handle",stateTuple
                        ,txtTuple $ map (text . (++"Out")) inputNames
                        ,equals,text "do"]) 1 $
             printUtilText (text "utilStr") $$
             hsep [text "return",text "newState"] $$ 
             text "where" $$
             text "utilStr =" <+> 
             --Uncomment for debugging
             --text "map (take 30)" <+>
             strList $$
             fcat defs $$
             text "newState" <+> equals <+> newStateTuple
      where
        strList = brackets $ fcat $ intersperse comma $
                  map ((text "show" <+>) . text) orderedSignals

    printUtilText s = hsep [text "hPutStrLn",text "handle",char '$'
                           ,text "intercalate",doubleQuotes comma,s] 

    --All stop and data signals
    orderedSignals = concatMap orderStops (remStops outsAndStops)
    outsAndStops = reverse outsAndStops'
    ((stopMap,outsAndStops'),defs) = mapAccumL makeDefs ([],[]) nodeInfo

    -- Functions for reordering our signals so each stop is next to the
    -- appropriate data signal
    remStops = filter (not . isPrefixOf "stop")
    orderStops signal = signal : filter (==fromJust (lookup signal stopMap))
                                 outsAndStops

    makeDefs (curStopMap,strs) ((func,name,inputs,hasState),outs) =
      ((stopMap',newStr),
      txtTuple (outputs ++ outStops ++ newState) <+>
      fsep [equals,text func,fsep (map (text . (++"Out")) inputs)
           ,fsep (map text inStops),if hasState then text curState else emp])
     where
      stopMap' = zip outs inStops ++ curStopMap
      newStr = outs ++ outStopNames ++ strs 
      outputs = map text outs
      outStops = map text outStopNames
      outStopNames = map (makeStop name) [1..(length inputs)]

      newState = [text $ (++"\'") curState | hasState]

      inStops = map (getInStop . removeOut) outs
      getInStop outName = concat $ mapMaybe (findNumStop outName) nodeInfo 
      findNumStop outname ((_,n,ins,_),_) = 
        (makeStop n . (+1)) <$> elemIndex outname ins
      makeStop nodeName num = "stop" ++ nodeName ++ show num
      removeOut i = if "Out" `isSuffixOf` i
                      then remOutSuffix i
                      else i
      curState = let s = filter ((== name) . remStSuffix) stateVars
                 in if null s
                    then error $ "No state name found for " ++ name
                    else head s

    -- Helper Functions ---
    isOutNode (("out",_,_,_),_) = True
    isOutNode _ = False
    txtTuple = parens . fcat . intersperse comma
    remStSuffix = reverse . drop 2 . reverse
    remOutSuffix = reverse . drop 3 . reverse
    emp = Text.PrettyPrint.empty

-- | Run the simulation
runSimulator :: Interpreter (Int,Maybe String,[(String,Maybe Int)])
runSimulator = 
   do loadModules ["src/Fhw/Pass/Dataflow/NodeLib.hs","Tic.hs"]
      setImportsQ [("Data.Map",Just "Map"),("Data.Maybe",Nothing)
                  ,("Data.List",Nothing)]
      setTopLevelModules ["Tic"]
      let expr = "withFile \"Dataflow.csv\" WriteMode $ simulate " 
                 ++ render (inputDoc ["False","Go"])
      
      r <- interpret expr (as :: IO (Int,Maybe String,[(String,Maybe Int)]))
      liftIO r
  where
    inputDoc inExprs = hsep $ map (parens . text) inExprs
