{-
Module : Fhw.Pass.Dataflow.Simulator
Description : The interface for a Dataflow Network simulator.

We simulate a Dataflow topology by converting it
into a standardized graph, inserting buffers both for 
correctness (breaking cycles, preventing deadlock) and 
optimization (balancing reconvergent paths), and simulating
the result with a standard library of Haskell functions.

We implement these networks with backpressure; nodes
must wait until their successors are ready.

-}
module Fhw.Pass.Dataflow.Simulator where

import Data.List
import Data.Maybe
import Data.Data (toConstr)
import Data.Char (toLower)
import Control.Monad (unless)
import Control.Arrow (first)

import Language.Haskell.Interpreter hiding (parens,name)

--import Debug.Trace

import Fhw.Pass.Dataflow.TicGen
import Fhw.Pass.Dataflow.Heuristic
import Fhw.Pass.Dataflow.NodeTypes
import Fhw.Pass.Dataflow.BaseLine (baseLine)

-- | Differentiate between a node with no buffers, bingyi buffers, or
-- infinite FIFOs.
data BufType = None | Single deriving (Show,Eq)

-- | Simulate a dataflow network, potentially after running our heuristic,
-- printing out the result and dumping an execution trace.
simulator :: String -> Dataflow -> IO ()
simulator simArg (Dataflow tdefs nodes)  = 
  if "FIFO" `isPrefixOf` simArg
   then baseLine (concatMap (getArgTypes tdefs) nodes) (addBuffers memLat $ map convertRep nodes)
   else do 
      result <- simulate finalNodes inputs 
      case result of
        Left (WontCompile err) -> wontCompile err
        Left err -> otherError err
        Right (cycles,r,fifoNums) -> do 
          putStrLn  $ "Total Cycles: " ++ show cycles
          printThem $ foldl combine paths initialBufs 
          unless (null fifoNums) (printThem fifoNums)
          putStrLn  $ fromJust r
  where
    --Optional memory latency argument
    memLat | any (`isPrefixOf` simArg) ["FIFO","Heur"] = drop 4 simArg
           | "strict" `isPrefixOf` simArg              = drop 6 simArg
           | otherwise                                 = simArg
    baseNodes                   = addBuffers memLat $ map convertRep nodes
    (initialBufs,newNodes)      = minimalBufs baseNodes []
    --run heuristic on topology
    paths                       = if "Heur" `isPrefixOf` simArg 
                                    then runHeuristic $ noCycles newNodes
                                    else []
    --optimizing and compulsory buffers
    total = foldl combine paths initialBufs
    --nodes to simulate
    finalNodes = map (\(a,b,_,_) -> (a,b)) $ removeSource  $
                 noCycles $
                 foldr allocRelays baseNodes total
                                                            
    inputs = ["source"]
    removeSource = filter (not . isSource)
    isSource (("source",_,_,_),_,_,_) = True
    isSource _ = False

    -- | Add the minimal allocation buffers' edges to the set of relay
    -- station edges.
    combine :: [(String,Int)] -> String -> [(String,Int)]
    combine edges edge | edge `notElem` map fst edges 
                                   = (edge,1) : edges
                       | otherwise = newEdge  : delete curEdge edges
      where
        curEdge = fromJust $ find ((==edge) . fst) edges
        newEdge = fmap (+1) curEdge --increment number of relay stations 

    -- | Add buffers to break cycles and permit progress along 
    -- reconvergent paths.
    minimalBufs ns edges = 
     let cycleEdges = feedbackArcs ns
         newNodes' = allocBuffers cycleEdges ns
         mismatched = getEdgeCandidates newNodes'
         newEdges = mismatched ++ cycleEdges
     in if null newEdges
          then (edges,ns)
          else minimalBufs (allocBuffers newEdges ns) (newEdges ++ edges)

    wontCompile = putStrLn  . concat . (:) "WontCompile error: " . map errMsg
    otherError = putStrLn . (++) "Error: " . show

getArgTypes :: [Tydef] -> Node -> [(String,String)]
getArgTypes tdefs (Node _ op outs) = map (first cleanup) $ case op of
  Source ty        -> zip outs [getTycon ty]          
  MergeChoice _ ty -> zip outs [getTycon ty,"Choice"]
  Merge       _ ty -> zip outs [getTycon ty]
  Demux ty _       -> zip outs (replicate (length outs) (getTycon ty))
  Mux   ty _       -> zip outs [getTycon ty]
  CallLock tys     -> zip outs (map getTycon tys)
  Fork _ ty        -> zip outs (replicate (length outs) (getTycon ty))
  IConst _ _       -> zip outs ["Int"]
  Func f           -> helper f
  Destruct dcon    -> let (Right codefs) = findTyDef (fst dcon) tdefs
                      in captureTys codefs outs [dcon]
  _                -> []
  where
   cleanup = removeHash . removeHyphen
   removeHash = map (\c -> if c == '#' then '_' else c) 
   removeHyphen = map (\c -> if c == '-' then '_' else c) 

   getTycon (Tycon tc) = tc
   getTycon _          = "Int"

   captureTys _ [] _  = []
   captureTys _ _  [] = []
   captureTys cdefs rest ((_,[]):dconRest) = captureTys cdefs rest dconRest
   captureTys cdefs (out:rest) ((dcon,num:nums):dconRest) =
    let (Codef _ tys) = fromJust $ find (\(Codef d _) -> d == dcon) cdefs
    in (out,getTycon (tys !! num)) : captureTys cdefs rest ((dcon,nums):dconRest)


   helper (Read _ ty)  = zip outs [getTycon ty]
   helper (Write _ ty) = zip outs [getTycon ty]
   helper (Dcons dcon) = let (Right t) = findDef dcon tdefs
                         in zip outs [t]
   helper oper | toConstr oper `elem` (map toConstr [Add 0,Sub 0,Mul 0,Div 0]) = zip outs ["Int"]
               | otherwise = zip outs ["Bool"]

   findTyDef :: String -> [Tydef] -> Either String [Codef]
   findTyDef dcon [] = Left $ "Constructor " ++ dcon ++ " undefined"
   findTyDef dcon (Tydef _ cdefs : rest) = 
     if dcon `elem` map dcDefs cdefs
      then return cdefs
      else findTyDef dcon rest
     where dcDefs (Codef dc _) = dc


convertRep :: Node -> FullInfo
convertRep (Node ins op outs) = case op of
  Source    _         -> makeNode "source" "source" True
  Sink _              -> makeNode "out"    "out"    False
  CSink _             -> makeNode "sinkOut"    (concat ins ++ "_csink") False
  IConst num _        -> let newNum = if num < 0 then "neg"++ tail (show num) else show num
                         in makeNode ("iconst" ++ newNum) (newNum ++ concat inputs) False
  Fork ports _        -> let func = "fork" ++ show ports
                             name = uniquify "_fork"
                         in makeOutNode func name [[1..ports]]
  MergeChoice ports _ -> let func = "mergeChoice" ++ show ports
                             name = concat outputs ++ "_mergeChoice"
                         in makeOutNode func name [[1,2]]
  Merge       ports _ -> let func = "merge" ++ show ports
                             name = concat outputs ++ "_merge"
                         in makeNode func name False
  Func (Dcons name)   -> let func = "dcon_" ++ cleanup name
                             n = concat inputs ++ "_dcon"
                             firings = if length ins == 1 
                                        then [] else [[1..length ins]]
                         in makeInNode func n firings
  Func (Write ty _)   -> let func = "write_" ++ getTyName ty
                             name = concat inputs ++ "_write"
                         in makeNode func name False
  Func (Read  ty _)   -> let func = "read_" ++ getTyName ty
                             name = concat inputs ++ "_read"
                         in makeNode func name False
  Func (Add _)         -> makeNode "add" (concat inputs ++ "_add") False
  Func (Sub _)         -> makeNode "sub" (concat inputs ++ "_sub") False
  Func (Div _)         -> makeNode "divide" (concat inputs ++ "_divide") False
  Func Eq             -> makeNode "eq"  (concat inputs ++ "_eq") False
  Func Gt             -> makeNode "gt"  (concat inputs ++ "_gt") False
  Func Lt             -> makeNode "lt"  (concat inputs ++ "_lt") False
  Func Lteq           -> makeNode "lteq"(concat inputs ++ "_lteq") False
  Demux _ dcons       -> let func = "demux_" ++ concatMap cleanup dcons
                             n = concat inputs ++ "_demux"
                         in makeInNode func n [[1,2]]
  Mux   _ dcons       -> let func = "mux_" ++ concatMap cleanup dcons
                             n = concat inputs ++ "_mux"
                             dataPorts = map ((:[]) . (+1)) [1..length dcons]
                             inFirings = map (1:) dataPorts
                         in makeInNode func n inFirings
  Destruct choice     -> let choiceStr (dc,nums) = cleanup dc ++ intercalate "_" (map show nums)
                             func = "destruct_" ++ choiceStr choice
                             n    = concat inputs ++ "_destruct"
                             dOuts = tail outputs --first output is always a choice
                             portIndices = map (+1) [1..length dOuts]
                             (_,outFiringsm) = caseFirings portIndices choice
                             outFirings = fromJust outFiringsm
                         in makeOutNode func n [outFirings]
  CallLock _          -> let func = "callLock_" ++ show (length outs)
                             n    = concat inputs ++ "_callLock"
                         in makeNode func n True
  _ -> error $ "Can't handle " ++ show op ++ " yet"
  where 
    uniquify = (concat inputs ++)
    cleanup = removeHash . removeHyphen
    removeHash = map (\c -> if c == '#' then '_' else c) 
    removeHyphen = map (\c -> if c == '-' then '_' else c) 

    getTyName (Tycon s) = s
    getTyName (Int' _) = "Int"

    -- If a pattern generates n variable bindings, the next n output port 
    -- indices (along with port 1 for the "choice" output) will be in an
    -- 'out-firing set'
    caseFirings :: [Int] -> (String,[Int]) -> ([Int],Maybe [Int])
    caseFirings portIndices (_,[])    = (portIndices,Nothing)
    caseFirings portIndices (_,ports) = (drop (length ports) portIndices
                                        ,Just $ 1 : take (length ports) portIndices)

    makeNode    f n s         = ((f,n,inputs,s),outputs,[],[])
    -- Nodes with out-firing rules will be stateful, while those with
    -- in-firing are not (we don't have any in-firing nodes that are
    -- also out-firing)
    makeOutNode f n firings = ((f,n,inputs,True),outputs,[],firings)
    makeInNode  f n firings = ((f,n,inputs,False),outputs,firings,[])

    inputs = map (removeHyphen . removeHash) ins
    outputs = map ((++"Out") . removeHyphen . removeHash) outs

addBuffers :: String -> [FullInfo] -> [FullInfo]
addBuffers memLat nodeInfo = concatMap go nodeInfo
  where
   --Generate latency from string if it exists, set to 1 as default
   latency = maybe 1 fst (listToMaybe $ reads memLat)

   go (node,outs,inFiring,outFiring) 
    | outNode = [newbuf,outN]
    | otherwise = newNode : bufs
    where
      (f,name,inputs,_) = node
      outNode = name == "out"

      -- | Modify input for sink node
      outN = ((f,name,["sinkBuf"],False),[],[],[])
      bufInfo = (("outBuffer","sinkBuf",inputs,True),["sinkBufOut"],[],[])
      -- | Special buffer for sink node
      newbuf = bufferNodeInput bufInfo
                               (`isBuffed` nodeInfo)
                               (const False)


      newNode = bufferNodeInput (node,outs,inFiring,outFiring)
                                (`isBuffed` nodeInfo)
                                (const False)
      bufs | "source" `isPrefixOf` f = concatMap (makeBufs 1 "Bingyi") outs
           | any (`isPrefixOf` f) ["write","read"] = concatMap (makeBufs latency "Bingyi") outs
           | otherwise = []

   isBuffed name = isJust . find (\((f,_,_,_),outs,_,_) ->
                            name `elem` map remOutSuf outs && isBufferable f)
   isBufferable f =  any (`isPrefixOf` f) ["source","write","read"]
   
---- | Put infinite FIFOs on each output channel
--addFIFOs :: [FullInfo] -> [FullInfo]
--addFIFOs = concatMap go
--  where 
--   go (node,outs,inFiring,outFiring) = newNode : bufs
--    where
--      (_,_,inputs,_) = node
--
--      newNode = bufferNodeInput (node,outs,inFiring,outFiring)
--                                (const False)
--                                (if any ("in_" `isPrefixOf`) inputs
--                                   then const False
--                                   else const True)
--      bufs = concatMap (makeBufs "FIFO") outs


-- | Rename an input if it now comes from a buffer or FIFO 
bufferNodeInput :: FullInfo -> (String -> Bool) -> (String -> Bool) -> FullInfo
bufferNodeInput node bingyi infinite = ((f,n,newInputs,s),outs,i,o)
  where
    ((f,n,inputs,s),outs,i,o) = node
    newInputs = map renameBuf inputs
    renameBuf origName | bingyi origName = orig ++ "InBuf" ++ orig
                       | infinite origName = orig ++ "InfBuf" ++ orig
                       | otherwise = origName
      where orig = unbuffedName origName

-- | Construct either a pair of Bingyi buffers or an infinite FIFO
makeBufs :: Int -> String -> String -> [FullInfo]
makeBufs latency version outputName =
  if version == "Bingyi"
   then [makeBuf "Out",makeBuf "In"]
   else [makeBuf "Inf"]
  where
    makeBuf ty = ((map toLower ty ++ "Buffer" ++ suf
                 ,bufName ty, [makeInput ty], True)
                 ,[bufName ty ++ "Out"],[],[])
      --Turning an outBuffer into a high latency, pipelined
      --modeling tool
      where suf | ty == "Out" && latency > 1 = show latency
                | otherwise = ""

    makeInput "In"  = unbuffedOut ++ "OutBuf" ++ unbuffedOut
    makeInput _     = outName
    bufName ty = unbuffedOut ++ ty ++ "Buf" ++ unbuffedOut

    outName = if "Out" `isSuffixOf` outputName
                then remOutSuf outputName
                else outputName

    unbuffedOut = unbuffedName outName

-- | Allocate Bingyi buffers on a set of edges to break cycles or
-- prevent deadlock
allocBuffers :: [String] -> [FullInfo] -> [FullInfo]
allocBuffers edges nodes = newNodes
  where
    newNodes = foldl toModify nodes edges

    toModify :: [FullInfo] -> String -> [FullInfo]
    toModify nodeList edge = 
      let iNode      = fromJust $ find (elem edge . getIns) nodeList
          bufs       = makeBufs 1 "Bingyi" edge
          newINode   = bufferNodeInput iNode (== edge) (const False)
      in newINode : bufs ++ delete iNode nodeList

    getIns ((_,_,inputs,_),_,_,_) = inputs

allocRelays :: (String,Int) -> [FullInfo] -> [FullInfo]
allocRelays edge nodes = newNodes
  where
    newNodes = alloc edge nodes

    alloc (_,0)      nodeList = nodeList
    alloc (name,num) nodeList = 
      let iNode      = fromJust $ find (elem name . getIns) nodeList
      in if "Buffer" `isInfixOf` getFunc iNode
          then let nextEdge   = remOutSuf $ getOutEdge iNode
               in alloc (nextEdge,num) nodeList
          else let [oBuf,iBuf] = makeBufs 1 "Bingyi" name
                   newINode   = bufferNodeInput iNode (== name) (const False)
                   nextEdge   = remOutSuf $ getOutEdge iBuf
               in alloc (nextEdge,num-1) (newINode : oBuf : iBuf : delete iNode nodeList)

    getIns ((_,_,inputs,_),_,_,_) = inputs
    getOutEdge (_,outs,_,_) = head outs
    getFunc ((func,_,_,_),_,_,_) = func

------------------------
---- Helper functions
------------------------

-- | If a name had "Buf" inserted in the middle, return the original,
-- unbuffered name.
unbuffedName :: String -> String
unbuffedName name | "OutBuf" `isInfixOf` name = helper "Out"
                  | "InfBuf" `isInfixOf` name = helper "Inf"
                  | otherwise = name
  where
    helper ty =
      reverse (takeWhile (not . (ty `isSuffixOf`)) $ inits name) !! 2

-- | Remove "Out" suffix from output names
remOutSuf :: String -> String
remOutSuf = reverse . drop 3 . reverse

-- | Remove specific output suffixes so all outputs from a node
-- have the same name.
remSuffix :: String -> String
remSuffix i = if "_" `isInfixOf` i && not ("in" `isPrefixOf` i)
                then takeWhile (/='_') i
                else i

say :: String -> Interpreter ()
say = liftIO . putStrLn

printThem :: (Show a) => [a] -> IO ()
printThem = putStrLn . intercalate "\n" . map show

