{-
Module : Fhw.Pass.Dataflow.BaseLine
Description : An interpreter to simulate an idealized dataflow network.

-}
module Fhw.Pass.Dataflow.BaseLine where

import Fhw.Pass.Dataflow.Heuristic (FullInfo)
import Text.PrettyPrint
import Data.List 
import qualified Data.Map.Strict as Map
import Data.Maybe
import qualified Data.Text as T
import System.IO

----------------function,name, inputs, outputs
type Node    = (String,String,[String],[String]) 
type Channel = String
type Bit     = Bool

--bit indicates if node fired in a cycle
type NodeMap = Map.Map Channel (Bit,Node) 
--bit indicates if data was consumed in a cycle
--string list models infinitie FIFO on each channel
type DataMap = Map.Map Channel [String]
type StateMap  = Map.Map Node String
type TypeList = [(String,String)]

getData :: Channel -> DataMap -> [String]
getData channel dMap = dMap Map.! channel

baseLine :: TypeList -> [FullInfo] -> IO ()
baseLine tyMap nodes = withFile "FIFO.hs" WriteMode (writeFIFO newTyMap newNodes)
  where
   newNodes = map getInfo nodes
   getInfo ((func,name,ins,_),outs,_,_) = (func,name,ins,map remSuff outs)
   remSuff = reverse . drop 3 . reverse

   sinkBufNodeInput = (\(_,_,inp,_) -> head inp) $
                      fromMaybe (error "No sinkbuf") $
                      find (\(_,o,_,_) -> o == "sinkBuf") newNodes

   getAllInputs (_,_,inputs,_) = inputs

   --Final mapping of all channel names to types
   newTyMap = fillOutMap "sinkBuf" $ foldr fillOutMap tyMap bufNames 
   names = map fst tyMap
   bufNames = filter (`notElem` ("sinkBuf":names)) $ concatMap getAllInputs newNodes

   fillOutMap name m = if buf == "sinkBuf"
                            then (name,fromMaybe (error "No sinkbufInput")  (lookup sinkBufNodeInput m)) : m
                            else (name,fromMaybe (error $ "Missing name " ++ show newName) (lookup newName m)) : m
    where
      buf | "InBuf" `isInfixOf` name = "InBuf"
          | "OutBuf" `isInfixOf` name = "OutBuf"
          | otherwise = "sinkBuf"
      newName = T.unpack $ head $ T.splitOn (T.pack buf) $ T.pack name
      

writeFIFO :: TypeList -> [Node] -> Handle -> IO ()
writeFIFO typeMap nodes h = hPutStrLn h $ render fifoModule
  where
    fifoModule = vcat [imports,dTypes,mainfunc,
                       simulate,hasData,dispatch
                      ,getJust,unconsumed,wrappers]
    imports = vcat $ map text ["import Fhw.Pass.Dataflow.NodeLib"
                              ,"import Data.List"
                              ,"import qualified Data.Sequence as S"
                              ,"import qualified Data.Map.Strict as Map"
                              ,"import Data.Maybe"]
    --Datatypes
    dTypes = vcat [nodeTy,stateTy]
    nodeTy = text "type Node = (String,String,[String],[String])"
    --Giant state record
    stateTy = text "data State = State " $$
              nest 5 (braces $ fsep $ punctuate comma stateParts)
    stateParts = cycles : fired : toFire : map stateFields typeMap
    cycles     = text "cycles :: Int"
    fired      = text "fired :: Map.Map Node Bool"
    toFire     = text "toFire :: S.Seq String"

    mainfunc = text "main = print $ simulate " <+> text (show nodes)

    simulate = text "simulate nodes = execute initState" $$
                nest 1 (text "where" $$
                  nest 2 localDefs)

    --Local definitions in simulate---
    localDefs = vcat [nodeIns,execute,tic,initState]

    --All node inputs
    nodeIns = text "nodeIns = nub $ concatMap (\\(_,_,ins,_) -> ins) nodes"

    --Function that drives the tic function--
    execute = text "execute state = " $$
              nest 2 
                (vcat $ map text
                        ["if not (S.null $ sinkBuf state)" 
                        --Uncomment to output both cycle count and result
                        --,"then (show (head (sinkBuf state)),cycles state)" 
                        ,"then cycles state"
                        ,"else let newState = state{ toFire = S.fromList $ mapMaybe (hasData state) nodeIns" 
                        ,"                         , cycles = cycles state + 1"
                        ,"                         , fired = Map.map (const False) (fired state)}"
                        ,"     in execute (tic newState)"])

    tic = text "tic state =" $$
          nest 2
              (vcat $ map text 
               [" if S.null (toFire state) then state" 
               ," else let (chan S.:< rest) = S.viewl $ toFire state" 
               ,"      in tic (dispatch chan state{toFire = rest})"])

    -----Function to check which channels have data-----
    hasData = text "hasData st chan" $$
              nest 2 (vcat $ concatMap makeHasData nodes) $$
              nest 2 (text "| otherwise = error $ \"No input\" ++ show chan")
    makeHasData (_,_,[],_) = []
    makeHasData (f,_,inputs,_) 
       --We should never have data here
      | f == "out" = [text "| chan ==" <+> doubleQuotes (text $ head inputs) 
                      <+> text "= Nothing"]
      | otherwise = 
        let guard inText= text "| chan ==" <+> doubleQuotes inText <+>
                          equals <+> 
                          text "if S.null" <+> parens (inText <+> text "st") <+>
                          text "then Nothing else Just" <+> doubleQuotes inText
        in map (guard . text) inputs

    -----Function to call node wrappers based on which channel has data-----
    dispatch = text "dispatch chan st" $$
               nest 2 (vcat $ concatMap makeDispatch nodes) $$
               nest 2 (text "| otherwise = error $ \"No input\" ++ show chan")
    makeDispatch (_,_,[],_) = []
    makeDispatch (func,_,inputs,_) 
      | func == "out" = [] --We should never call this function
      | otherwise = 
        let wrapName = func ++ "_" ++ intercalate "_" inputs
            alt input = text "| chan ==" <+> doubleQuotes (text input) <+>
                        equals <+> text wrapName <+> text "chan" <+> text "st"
        in map alt inputs
               

    --Initial state
    initState = text "initState = State" $$
                nest 5 (braces $ fsep $ punctuate comma emptys)
    emptys = initCycles : initFire : initToFire  : map initFields typeMap
    initCycles = text "cycles = 0"
    initFire   = text "fired = Map.fromList (zip nodes (repeat False))"
    initToFire = text "toFire = S.empty" 
    initFields (name,_) | name == "source" = text "source = S.singleton (Just Go)"
                        | otherwise = text name <+> equals <+> text "S.empty"


    --helper function
    getJust = text $ "\ngetJust s = if S.null s then Nothing else "++
                     "let (x S.:< _) = S.viewl s in x\n"
    unconsumed = text "\nunConsumed True stop = stop\nunConsumed _ _ = True\n" 
    ------Collection of wrappers for node functions needed by this network----
    wrappers = vcat $ map genWrapper nodes

-- | Generate a wrapper function for a node instance
genWrapper :: Node -> Doc
genWrapper no@(f,_,inputs,outputs) 
  | f == "source" = emptyDoc --Never "fire" the source node
  | f == "out"    = emptyDoc --Never "fire" the sink node
  | otherwise = 
    text f <> char '_' <> hcat (punctuate (char '_') (map text inputs)) <+>
    text "chan" <+> text "st" <+> equals $$
    nest 2 (text "let" $$
            nest 2 (inputLists    $$ --get inputs from state
                    funcCall      $$ --call node function
                    nodeInstance) $$ --refer to node instance
            text "in"  $$
            expr) 
 where
  inputLists = vcat $ zipWith makeInput inputs inNames
  makeInput inp var = var <+> equals <+> 
                      text inp <+> text "st"
  funcCall = parens (hcat $ punctuate comma outs) <+> equals <+> 
             text f <+> hsep (map (parens  . (text "getJust" <+>)) inNames)
                    <+> hsep (replicate (length outputs) (text "False"))
                    <+> if stateful then text "Nothing" else emptyDoc
                                  
  outs = outNames ++ stops ++ [text "outSt" | stateful]
  outNames = map ((char 'o' <>) . int) [1..length outputs]
  inNames  = map ((text "inp" <>) . int) [1..length inputs]
  stops    = map ((char 's' <>) . int) [1..length inputs]

  nodeInstance = text "node" <+> equals <+> text (show no)

  expr = text "if (fired st) Map.! node" <+> notFired $$
         text "then st " $$
         text "else st " <> braces (vcat $ punctuate comma updates)
  updates = (if f == "outBuffer" then id else (toFire:)) [fired,newInputs,newOutputs]
  fired = text "fired = Map.insert node True (fired st)"
  newInputs = vcat $ punctuate comma $ 
              zipWith3 updateIn (map text inputs) inNames stops
    where
     updateIn inp var stop = inp <+> equals <+> text "if" <+> stop <+>
                             text "|| S.null" <+> var <+>
                             text "then" <+> var <+> text "else S.drop 1" <+> var
  newOutputs = vcat $ punctuate comma $ 
               zipWith updateOut (map text outputs) outNames
    where
     updateOut out oNam = let oName = if f == "outBuffer" 
                                       then text "outSt" 
                                       else oNam
                          in out <+> equals <+> text "if" <+>
                             parens (text "isJust" <+> oName) <+> text "then" <+>
                             out <+> text "st" <+> text "S.|>" <+>  oName <+> 
                             text "else" <+> out <+> text "st"
  toFire = text "toFire =" <+> hcat (punctuate (text "S.<|") $
           map (doubleQuotes . text) outputs ++
           [text "toFire st"])

  notFired | not andFiringIn = emptyDoc
           | otherwise = 
   text "||" <+> parens (hsep $ punctuate (text "&&") $ checkConsumption : 
                         map (<+> (text "==" <+> text "Nothing")) outNames)
  checkConsumption = text "and" <+> parens (text "zipWith unConsumed"       <+> 
                     brackets (hcat $ punctuate comma $ map isNull inNames) <+>
                     brackets (hcat $ punctuate comma stops))
  isNull inp = text "not" <+> parens (text "S.null" <+> inp)

  andFiringIn = length inputs > 1 && any (`isPrefixOf` f) inFiringNodes
  inFiringNodes = ["add","sub","divide","eq","gt","lt","dcon","mux","demux"]
  stateful = any (`isPrefixOf` f) statefulNodes
  statefulNodes = ["case","fork","mergeChoice","outBuffer"
                  ,"inBuffer","callLock"]

emptyDoc :: Doc
emptyDoc = Text.PrettyPrint.empty

stateFields :: (String,String) -> Doc
stateFields (channel,ty) = text channel <+> colon <> colon <+> 
                            text "S.Seq" <+> parens (text "Maybe" <+> parens cleanTy)
  where
    cleanTy = if "Pointer" `isPrefixOf` ty
                then text "Pointer" <+> 
                     parens (text $ fromJust $ stripPrefix "Pointer_" ty)
                else text ty

  

--runSimulator :: NodeMap -> DataMap -> StateMap -> TypeList -> Interpreter (String,Int)
--runSimulator nMap dMap sMap tyList = 
--   do loadModules ["src/Fhw/Pass/Dataflow/NodeLib.hs"]
--      setImportsQ [("Data.Map",Just "Map"),("Data.Maybe",Nothing)
--                  ,("Data.List",Nothing)]
--      setTopLevelModules ["Fhw.Pass.Dataflow.NodeLib"]
--      execute initData sMap (0::Int)
--  where
--    --Initialize the system 
--    initData = Map.insert "source" ["Just Go"] dMap
--    resultBuf = fromJust $ find (elem "sinkBuf" . getOuts) $ Map.keys sMap
--
--    execute dataMap stateMap n = do
--        --liftIO $ putStrLn $ show n
--        let dataChannels = map fst $ Map.toList $ 
--                           Map.filter (not . null) dataMap
--        (dMap',sMap') <- tic nMap dataMap stateMap dataChannels
--        let result = sMap' Map.! resultBuf
--            bufStates = Map.filterWithKey filledBuffer sMap'
--            newDmap  = Map.foldrWithKey prepCycle dMap' bufStates
--            newSmap  = Map.mapWithKey emptyBufs sMap'
--        if not (null result) && "Just" `isPrefixOf` result
--          then return (result,n)
--          else execute newDmap newSmap (n+1)
--
--    --Does an output buffer have a token in its state?
--    filledBuffer key val = getFunc key == "outBuffer" && "Just" `isPrefixOf` val 
--    --Move an output buffer's state onto its output channel
--    prepCycle (_,_,_,[out]) state dataMap = addToMap (out,state) dataMap 
--    prepCycle _ _ _ = error "Output buffer has unusual number of outputs"
--    --Empty output buffers' states
--    emptyBufs ("outBuffer",_,_,_) _  = "Nothing" 
--    emptyBufs _                   st = st
--
--    --Add a new value to a channel's FIFO
--    addToMap :: (Channel,String)  -> DataMap -> DataMap
--    addToMap (chan,datum) = if datum == "Nothing"
--                              then id
--                              else Map.adjust (++[datum]) chan 
--
--    tic nodeMap dataMap stateMap channels
--      | null channels = return (dataMap,stateMap)
--      | bit = tic nodeMap dataMap stateMap rest
--      | otherwise = do result <- evalExpr 
--                       let outs = collectOuts result
--                           dOuts = takeWhile notBool outs
--                           stops = getStops outs
--                           state = intercalate "," $ dropWhile (`elem` (dOuts++stops)) outs
--                           outputs = zip dests dOuts
--                           newData = flip (foldr takeConsumed) (zip keys stops) $
--                                     foldr addToMap dataMap outputs
--                           newState = if null state || Map.notMember node stateMap
--                                                    || state == stateMap Map.! node
--                                        then stateMap
--                                        else Map.adjust (const state) node stateMap
--                           newChannels = map fst (filter ((=='J') . head . snd) outputs) ++ rest
--                       if any ("Just" `isPrefixOf`) dOuts || 
--                          inputs /= map (newData Map.!) keys 
--                         then tic newNode newData newState newChannels
--                         else tic nodeMap dataMap stateMap newChannels
--      where 
--        inputs = map (dataMap Map.!) keys --input fifos
--        keys   = getIns node              --input channels
--        func   = getFunc node             --function being computed
--        dests  = getOuts node             --outupt channels
--        (bit,node) = nodeMap Map.! channel 
--
--        isFunc name = name `isPrefixOf` getFunc node 
--
--        --Mark the current node if we fire it
--        newNode = foldr (Map.adjust (const (True,node))) nodeMap keys
--        --Use a stop signal to determine if a token was consumed
--        takeConsumed :: (Channel,String) -> DataMap ->  DataMap
--        takeConsumed (chan,"False") = Map.adjust consume chan
--        takeConsumed _              = id
--        consume [] = []
--        consume (_:fifo) = fifo
--
--        --Get a channel with data on it
--        (channel:rest) = channels
--
--        getStops outs = let notData = dropWhile notBool outs
--                        in takeWhile (not . notBool) notData
--
--        --Generate expression to interpret
--        makeExpr numStops hasState ts = 
--          render $ 
--          text func                                <+> --function
--          hsep (map (parens . text) $ zipWith getIn ts inputs) <+> --arguments
--          (hsep $ intersperse space $ 
--           replicate numStops (text "False"))      <+> --stop signals
--          if hasState                                 --state
--            then if any (`isPrefixOf` func) ["case","fork","inBuffer"]
--                  then text "Nothing"
--                  else parens (text (stateMap Map.! node)) 
--            else emp     
--
--        getIn ty inp | null inp = "(Nothing" ++ ty ++ ")"
--                     | otherwise = head inp
--
--        --Build and evaluate a node expression
--        evalExpr = do ty <- typeOf func
--                      let parsedTys = cleanUp ty
--                          numStops  = length $ filter (=="Bool") parsedTys
--                          hasState  = ("Maybe" `isPrefixOf`) $ 
--                                      last $ init parsedTys
--                          argTys    = makeTySigs node inputs
--                          expr      = makeExpr numStops hasState argTys
--                          finalEx   = if isFunc "wrapNoth"
--                                       then wrapTy expr
--                                       else expr
--                      eval finalEx 
--
--        wrapTy = T.unpack .
--                 flip T.snoc ')' . 
--                 T.cons '('      .
--                 (`T.append` (T.pack ":: (Maybe (Wrapper String),Bool)")) .
--                 flip T.snoc ')' . 
--                 T.cons '('      . T.pack
--
--    -- | Add explicit type signatures to Nothing tokens for the
--    -- nodes that can't deduce Show instances
--    makeTySigs node inputs 
--     | isFunc "demux"    = map ((":: Maybe "++) . noUnders) types
--     | isFunc "callLock" = map ((":: Maybe "++) . noUnders) $ types ++ ["Int"]
--     | isFunc "mux"      = let [choiceTy,valTy] = types
--                           in map ((":: Maybe "++) . noUnders) $
--                              choiceTy : replicate (length inputs - 1) valTy 
--     | otherwise = emptySigs
--      where types = fromJust (lookup (getLab node) tyList)
--            emptySigs = replicate (length inputs) ""
--            isFunc name = name `isPrefixOf` getFunc node 
--
--    notBool t = t /= "False" && t /= "True"
--    emp = Text.PrettyPrint.empty
--    noUnders = T.unpack . foldr parenthesize T.empty . T.splitOn (T.pack "_") . T.pack
--    parenthesize ty fullTy = T.cons '(' $ flip T.snoc ')' $ T.append ty fullTy
--
--    --Collect output data from a function call
--    collectOuts = map (remParen . T.unpack) . T.splitOn (T.pack ",") . T.pack
--    remParen l | not (null l) && head l == '(' = tail l
--               | not (null l) && last l == ')' 
--                              && countParens 0 l /= (0::Int) = init l
--               | otherwise = l
--
--    countParens n [] = n
--    countParens n ('(':rest) = countParens (n+1) rest
--    countParens n (')':rest) = countParens (n-1) rest
--    countParens n (_:rest)   = countParens n     rest
--
--    --Collect types of function
--    cleanUp = map (T.unpack . T.strip) . 
--              T.splitOn (T.pack "->")  . 
--              T.filter (/='\n')        . 
--              T.pack
--
--    getLab :: Node -> String
--    getLab (_,label,_,_) = label
--    getFunc :: Node -> String
--    getFunc (func,_,_,_) = func
--    getIns :: Node -> [String]
--    getIns (_,_,ins,_) = ins
--    getOuts :: Node -> [String]
--    getOuts (_,_,_,outs) = outs


--writeFIFO :: TypeList -> [FullInfo] -> [((String,String),String)] -> Handle -> IO ()
--writeFIFO typeDefs nodes funcNamesAndTys h = hPutStrLn h $ render fifoModule
--  where
--    caseString = vcat $ map callFunc funcNamesAndTys
--    callFunc ((func,name),ty) 
--      | any (`isPrefixOf` func) ["merge","demux","mux"] = text $ "| func == \"" ++ func ++ "\" = show $ " 
--                            ++ func ++ "Help (inputs ++ stops)"
--      | otherwise = text $ "| func == \"" ++ func ++ "\" = show $ " 
--                            ++ func ++ "Help (inputs ++ stops)"
--
--    fifoModule = 
--      vcat [text "module FIFO where"
--           ,text "import Fhw.Pass.Dataflow.NodeLib"
--           ,text "import Text.PrettyPrint"
--           ,text "import Data.List "
--           ,text "import qualified Data.Map.Strict as Map"
--           ,text "import Data.Maybe"
--           ,text "import qualified Data.Text as T"
--           ,text "type Node    = (String,String,[String],[String]) "
--           ,text "type Channel = String"
--           ,text "type Bit     = Bool"
--           ,text "type NodeMap = Map.Map Channel (Bit,Node) "
--           ,text "type DataMap = Map.Map Channel [String]"
--           ,text "type StateMap  = Map.Map Node String"
--           ,text "type TypeList = [(String,[String])]"
--           ,text "getData :: Channel -> DataMap -> [String]"
--           ,text "getData channel dMap = dMap Map.! channel"
--           ,text "simulate tyList nodes = print $ execute initData sMap (0::Int)" 
--           ] $$
--      nest 1 (vcat 
--       [text "where"
--       ,text "newNodes = map getInfo nodes"
--       ,text "getInfo ((func,name,ins,st),outs,_,_) = ((func,name,ins,map remSuff outs),st)"
--       ,text "remSuff = reverse . drop 3 . reverse"
--       ,text "(nMap,dMap,sMap) = "
--       ,text "  foldr buildMaps (Map.empty,Map.empty,Map.empty) newNodes"
--       ,text "buildMaps (node@(func,_,ins,_),st) (nMap,dMap,sMap) = "
--       ,text "  (foldr (flip Map.insert (False,node)) nMap ins"
--       ,text "  ,foldr (flip Map.insert []) dMap ins"
--       ,text "  ,if st && all (not . (`isPrefixOf` func)) [\"case\",\"fork\",\"inBuffer\"]"
--       ,text "      then Map.insert node \"Nothing\" sMap else sMap)"
--       ,text "initData = Map.insert \"source\" [\"Just Go\"] dMap"
--       ,text "resultBuf = fromJust $ find (elem \"sinkBuf\" . getOuts) $ Map.keys sMap"
--       ,text "execute dataMap stateMap n = "
--       ,text "    let dataChannels = map fst $ Map.toList $ "
--       ,text "                       Map.filter (not . null) dataMap"
--       ,text "        (dMap',sMap') = tic nMap dataMap stateMap dataChannels"
--       ,text "        result = sMap' Map.! resultBuf"
--       ,text "        bufStates = Map.filterWithKey filledBuffer sMap'"
--       ,text "        newDmap  = Map.foldrWithKey prepCycle dMap' bufStates"
--       ,text "        newSmap  = Map.mapWithKey emptyBufs sMap'"
--       ,text "    in if not (null result) && \"Just\" `isPrefixOf` result"
--       ,text "      then n"
--       ,text "      else execute newDmap newSmap (n+1)"
--       ,text "filledBuffer key val = getFunc key == \"outBuffer\" && \"Just\" `isPrefixOf` val "
--       ,text "prepCycle (_,_,_,[out]) state dataMap = addToMap (out,state) dataMap "
--       ,text "prepCycle _ _ _ = error \"Output buffer has unusual number of outputs\""
--       ,text "emptyBufs (\"outBuffer\",_,_,_) _  = \"Nothing\" "
--       ,text "emptyBufs _                   st = st"
--       ,text "addToMap :: (Channel,String)  -> DataMap -> DataMap"
--       ,text "addToMap (chan,datum) = if datum == \"Nothing\""
--       ,text "                          then id"
--       ,text "                          else Map.adjust (++[datum]) chan "
--       ,text "tic nodeMap dataMap stateMap channels"
--       ,text "  | null channels = (dataMap,stateMap)"
--       ,text "  | bit = tic nodeMap dataMap stateMap rest"
--       ,text "  | otherwise = let result = evalExpr " 
--       ,text "                    outs = collectOuts result"
--       ,text "                    dOuts = takeWhile notBool outs"
--       ,text "                    stops = getStops outs"
--       ,text "                    state = intercalate \",\" $ dropWhile (`elem` (dOuts++stops)) outs"
--       ,text "                    outputs = zip dests dOuts"
--       ,text "                    newData = flip (foldr takeConsumed) (zip keys stops) $"
--       ,text "                              foldr addToMap dataMap outputs"
--       ,text "                    newState = if null state || Map.notMember node stateMap"
--       ,text "                                             || state == stateMap Map.! node"
--       ,text "                                 then stateMap"
--       ,text "                                 else Map.adjust (const state) node stateMap"
--       ,text "                    newChannels = map fst (filter ((=='J') . head . snd) outputs) ++ rest"
--       ,text "                in if any (\"Just\" `isPrefixOf`) dOuts || "
--       ,text "                      inputs /= map (newData Map.!) keys "
--       ,text "                     then tic newNode newData newState newChannels"
--       ,text "                     else tic nodeMap dataMap stateMap newChannels"
--       ,text "  where "
--       ,text "    inputs = map (dataMap Map.!) keys --input fifos"
--       ,text "    keys   = getIns node              --input channels"
--       ,text "    func   = getFunc node             --function being computed"
--       ,text "    dests  = getOuts node             --outupt channels"
--       ,text "    (bit,node) = nodeMap Map.! channel "
--       ,text "    isFunc name = name `isPrefixOf` getFunc node "
--       ,text "    newNode = foldr (Map.adjust (const (True,node))) nodeMap keys"
--       ,text "    takeConsumed :: (Channel,String) -> DataMap ->  DataMap"
--       ,text "    takeConsumed (chan,\"False\") = Map.adjust consume chan"
--       ,text "    takeConsumed _              = id"
--       ,text "    consume [] = []"
--       ,text "    consume (_:fifo) = fifo"
--       ,text "    (channel:rest) = channels"
--       ,text "    getStops outs = let notData = dropWhile notBool outs"
--       ,text "                    in takeWhile (not . notBool) notData"
--       ,text "    --Generate expression to interpret"
--       ,text "    makeExpr numStops hasState ts = "
--       ,text "      render $ "
--       ,text "      text func                                <+> --function"
--       ,text "      hsep (map (parens . text) $ zipWith getIn ts inputs) <+> --arguments"
--       ,text "      (hsep $ intersperse space $ "
--       ,text "       replicate numStops (text \"False\"))      <+> --stop signals"
--       ,text "      if hasState                                 --state"
--       ,text "        then if any (`isPrefixOf` func) [\"case\",\"fork\",\"inBuffer\"]"
--       ,text "              then text \"Nothing\""
--       ,text "              else parens (text (stateMap Map.! node)) "
--       ,text "        else emp     "
--       ,text "    getIn ty inp | null inp = \"(Nothing\" ++ ty ++ \")\""
--       ,text "                 | otherwise = head inp"
--       ,text "    evalExpr "
--       --                         ty <- typeOf func"
--       --,text "                  let parsedTys = cleanUp ty"
--       --,text "                      numStops  = length $ filter (==\"Bool\") parsedTys"
--       --,text "                      hasState  = (\"Maybe\" `isPrefixOf`) $ "
--       --,text "                                  last $ init parsedTys"
--       --,text "                      argTys    = makeTySigs node inputs"
--       --,text "                      expr      = makeExpr numStops hasState argTys"
--       --,text "                      finalEx   = if isFunc \"wrapNoth\""
--       --,text "                                   then wrapTy expr"
--       --,text "                                   else expr"
--       --,text "                  eval finalEx "
--       ,text "    wrapTy = T.unpack ."
--       ,text "             flip T.snoc ')' . "
--       ,text "             T.cons '('      ."
--       ,text "             (`T.append` (T.pack \":: (Maybe (Wrapper String),Bool)\")) ."
--       ,text "             flip T.snoc ')' . "
--       ,text "             T.cons '('      . T.pack"
--       ,text "makeTySigs node inputs "
--       ,text " | isFunc \"demux\"    = map ((\":: Maybe \"++) . noUnders) types"
--       ,text " | isFunc \"callLock\" = map ((\":: Maybe \"++) . noUnders) $ types ++ [\"Int\"]"
--       ,text " | isFunc \"mux\"      = let [choiceTy,valTy] = types"
--       ,text "                       in map ((\":: Maybe \"++) . noUnders) $"
--       ,text "                          choiceTy : replicate (length inputs - 1) valTy "
--       ,text " | isFunc \"wrapNoth\" = map ((\":: Maybe \"++) . noUnders) types"
--       ,text " | otherwise = emptySigs"
--       ,text "  where types = fromJust (lookup (getLab node) tyList)"
--       ,text "        emptySigs = replicate (length inputs) \"\""
--       ,text "        isFunc name = name `isPrefixOf` getFunc node "
--       ,text "notBool t = t /= \"False\" && t /= \"True\""
--       ,text "emp = Text.PrettyPrint.empty"
--       ,text "noUnders = T.unpack . foldr parenthesize T.empty . T.splitOn (T.pack \"_\") . T.pack"
--       ,text "parenthesize ty fullTy = T.cons '(' $ flip T.snoc ')' $ T.append ty fullTy"
--       ,text "collectOuts = map (remParen . T.unpack) . T.splitOn (T.pack \",\") . T.pack"
--       ,text "remParen l | not (null l) && head l == '(' = tail l"
--       ,text "           | not (null l) && last l == ')' "
--       ,text "                          && countParens 0 l /= (0::Int) = init l"
--       ,text "           | otherwise = l"
--       ,text "countParens n [] = n"
--       ,text "countParens n ('(':rest) = countParens (n+1) rest"
--       ,text "countParens n (')':rest) = countParens (n-1) rest"
--       ,text "countParens n (_:rest)   = countParens n     rest"
--       ,text "cleanUp = map (T.unpack . T.strip) . "
--       ,text "          T.splitOn (T.pack \"->\")  . "
--       ,text "          T.filter (/='\\n')        . "
--       ,text "          T.pack"
--       ,text "getLab :: Node -> String"
--       ,text "getLab (_,label,_,_) = label"
--       ,text "getFunc :: Node -> String"
--       ,text "getFunc (func,_,_,_) = func"
--       ,text "getIns :: Node -> [String]"
--       ,text "getIns (_,_,ins,_) = ins"
--       ,text "getOuts :: Node -> [String]"
--       ,text "getOuts (_,_,_,outs) = outs"])



