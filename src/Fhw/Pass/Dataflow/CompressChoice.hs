{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LambdaCase #-}
module Fhw.Pass.Dataflow.CompressChoice where

import Fhw.Pass.Dataflow.NodeTypes
import Fhw.Core.Core
import Control.Monad
import Prelude
import Debug.Trace
import qualified Data.Map as Map
import qualified Data.Set as Set

import Fhw.Pass.Dataflow.Supply

threshold = 64


--need environment of types in order to know if type exists
compressChoice :: Dataflow -> Dataflow
compressChoice df@(Dataflow tydefs nodes) =
    -- do

    -- forM nodes (\x -> if not (isMergeFine x) then 
    --     do print "Not fine"
    --        print x
    --        print $ mkMergeChoice x nodes 
    --     else print "")
    -- print (compressChoiceHelper nodes df)
    let result@(Dataflow newTydefs newNodes) = runSupplyVars $ compressChoiceHelper nodes 0 df
        resultClear = Dataflow (filter (\tyDef -> isTypeUsed tyDef newNodes) newTydefs) newNodes 
        in
    resultClear
    where
        compressChoiceHelper :: [Node] -> Int -> Dataflow -> Supply [Char] Dataflow
        compressChoiceHelper frontier n df@(Dataflow tydefs nodes) = case frontier of
            [] -> return df
            (f:fs) -> if not (isMergeFine f) then do
                                                (newNodes, newTypes) <-  (mkMergeChoice f nodes n)
                                                let newDf = foldl (\acc (k,v) -> replace k v acc) nodes (Map.toList newNodes)
                                                    newTdefs =  Set.toList $ Set.union (Set.fromList tydefs) (Set.fromList newTypes)
                                                compressChoiceHelper newDf (n+1) (Dataflow newTdefs newDf)
                                           else compressChoiceHelper fs n df

        replace ::  Node -> [Node] -> [Node] -> [Node]
        replace what with nodes = case nodes of
            (n:ns) -> if n == what then (with ++ ns)
                      else n : (replace what with ns)
            [] -> error "Bad replace'"

findTydef :: Tcon -> [Tydef] -> Maybe Tydef
findTydef tcon [] = Nothing
findTydef tcon (ty@(Tydef tcon' codefs):tys) = if tcon == tcon' then Just ty
                                               else findTydef tcon tys

isTypeUsed :: Tydef -> [Node] -> Bool
isTypeUsed tyDef@(Tydef tcon codefs) nodes = case nodes of
                [] -> False
                (n@(Node _ op _):ns) -> case op of
                    (Merge _ ty) -> isTypeUsedHelper tyDef ty || isTypeUsed tyDef ns
                    (Fork _ ty) -> isTypeUsedHelper tyDef ty || isTypeUsed tyDef ns
                    (MergeChoice ty_left ty_right) -> (isTypeUsedHelper tyDef ty_left || isTypeUsedHelper tyDef ty_right) || isTypeUsed tyDef ns
                    (Mux ty _) -> isTypeUsedHelper tyDef ty || isTypeUsed tyDef ns
                    (Demux ty _) -> isTypeUsedHelper tyDef ty || isTypeUsed tyDef ns
                    (Func func) -> case func of
                        (Read ty_left ty_right) -> (isTypeUsedHelper tyDef ty_left || isTypeUsedHelper tyDef ty_right) || isTypeUsed tyDef ns
                        (Write ty_left ty_right) -> (isTypeUsedHelper tyDef ty_left || isTypeUsedHelper tyDef ty_right) || isTypeUsed tyDef ns
                        (Dcons dcon) -> any (\codef@(Codef dcon' _) -> dcon == dcon') codefs || isTypeUsed tyDef ns
                        _ -> isTypeUsed tyDef ns
                    (Destruct (dcon, _)) -> any (\codef@(Codef dcon' _) -> dcon == dcon') codefs || isTypeUsed tyDef ns
                    (Source ty) -> isTypeUsedHelper tyDef ty || isTypeUsed tyDef ns
                    (Sink ty) -> isTypeUsedHelper tyDef ty || isTypeUsed tyDef ns
                    (CSink ty) -> isTypeUsedHelper tyDef ty || isTypeUsed tyDef ns
                    (CallLock tys) -> any (isTypeUsedHelper tyDef ) tys || isTypeUsed tyDef ns
                    (InitBuf dcon) -> any (\codef@(Codef dcon' _) -> dcon == dcon') codefs || isTypeUsed tyDef ns
                    (ToGo ty) -> isTypeUsedHelper tyDef ty || isTypeUsed tyDef ns
                    (Bram ty_left ty_right) -> (isTypeUsedHelper tyDef ty_left || isTypeUsedHelper tyDef ty_right) || isTypeUsed tyDef ns
                    (Buffer ty) -> isTypeUsedHelper tyDef ty || isTypeUsed tyDef ns
                    (RBuf ty) -> isTypeUsedHelper tyDef ty || isTypeUsed tyDef ns
                    (DBuf ty) -> isTypeUsedHelper tyDef ty || isTypeUsed tyDef ns
                    _ -> isTypeUsed tyDef ns

            where
        isTypeUsedHelper td ty = case ty of
                (Int' _) -> False
                (Tycon ty') -> getTyCon td == ty'

isMergeFine :: Node -> Bool
isMergeFine node@(Node inputs (MergeChoice _ _) _) = length inputs <= threshold
isMergeFine _ = True

--typically to return demux, also fork and mux
getNodeByInput :: String -> [Node] -> [Node] -> Maybe [Node]
getNodeByInput id frontier nodes = case frontier of
        [] -> Nothing
        (f@(Node ins _ _):fs) -> if id `elem` ins then
                                    case f of
                                        (Node _ (Fork i ty) outputs) -> do
                                            afterFork <- forM outputs (\o -> getNodeByInput o nodes nodes)
                                            return (f : (concat afterFork))
                                        _ -> Just [f]
                                 else getNodeByInput id fs nodes

mkMergeChoice merge@(Node inputs (MergeChoice chType inType) outputs) nodes n =

    do
        let go _ frontier types [] = return (frontier, types)
            go num frontier types rest = do
                let (inputs', rest') = splitAt threshold rest
                    chType' = "C" ++ show (length inputs')
                    chCons = [Codef ("C" ++ show j ++ "_" ++ show (length inputs')) [] | j <- [1 .. length inputs']]
                    chTdef = Tydef chType' chCons
                    -- outputs' = map (\x -> x ++ show num) outputs
                    -- outputs' = [inputs' !! 0 ++ "Choice_" ++ show num, inputs' !! 0 ++ "Data_" ++ show num]
                choiceO <- (newVar)
                dataO <- newVar
                let
                    newMerge = Node inputs' (MergeChoice (Tycon chType') inType) [choiceO ++ "_Choice_" ++ (show n) ++ "_" ++ (show num), dataO ++ "_Data_" ++ (show n) ++ "_" ++ (show num)]
                go (num + 1) (newMerge : frontier) (chTdef : types) rest'

        (newMerges, newTypes) <- go 0 [] [] inputs


    -- let (newMerges, newTypes) = go 0 [] [] inputs
        let
            (newMergesDataOutputs, newMergeChoices, newMergeTypes) = unzip3[(dataO,choiceO,choiceT) | merge@(Node _ (MergeChoice choiceT _) [choiceO, dataO]) <- newMerges]
            chType' = Tycon $ "C" ++ show (length newMergesDataOutputs)
            mergeCollector = Node newMergesDataOutputs (MergeChoice chType' inType) outputs
            targets = case getNodeByInput (outputs !! 0) nodes nodes of
                    Just x -> x
                    Nothing -> error "target not found"
            -- fork after mergectrl only need to change type of input to chType'
            forks = filter (\y -> case y of
                                Node _ (Fork _ _) _ -> True
                                _ -> False) targets
            demuxes = filter (\y -> case y of
                                Node _ (Demux _ _) _ -> True
                                _ -> False) targets
            muxes = filter (\y -> case y of
                                Node _ (Mux _ _) _ -> True
                                _ -> False) targets
            newForks =  map (\f@(Node inputs (Fork inputsNum _) outputs) -> [Node inputs (Fork inputsNum chType') outputs]) forks
            -- targetDemux = case getNodeByInput (outputs !! 0) nodes of
            --         Just x -> x
            --         Nothing -> error "demux not found"


        newDemuxes <- case forks of
            [] -> forM demuxes (`mkDemux` newMergeChoices )

            [f@(Node input (Fork numOuts inputType) outputs)] -> do
                bottomForks <- forM (zip newMergeChoices newMergeTypes) (\(choice, choiceT) -> do
                --     -- each choice needs a fork with number of fork above outputs
                        newForkOuts <- forM [1 .. numOuts] (\x -> do var <- newVar
                                                                     return (var ++ "_Fork"))

                        return $ Node [choice] (Fork numOuts choiceT) newForkOuts)
                --         -- for each demux (and mux) that are for successors 
                result <- forM (zip [0 .. (numOuts - 1)] demuxes) (\(i,d) -> mkDemux d [outs !! i | fork@(Node _ (Fork _ _) outs) <- bottomForks])
                return (bottomForks : result)

        newMuxes <- case forks of
            [] -> forM muxes (`mkMux` newMergeChoices)

            [f@(Node input (Fork numOuts inputType) outputs)] -> do
                bottomForks <- forM (zip newMergeChoices newMergeTypes) (\(choice, choiceT) -> do
                --     -- each choice needs a fork with number of fork above outputs
                        newForkOuts <- forM [1 .. numOuts] (\x -> do var <- newVar
                                                                     return (var ++ "_Fork"))

                        return $ Node [choice] (Fork numOuts choiceT) newForkOuts)
                --         -- for each demux (and mux) that are for successors 
                result <- forM (zip [0 .. (numOuts - 1)] muxes) (\(i,m) -> mkMux m [outs !! i | fork@(Node _ (Fork _ _) outs) <- bottomForks])
                return (bottomForks : result)


        let
            newMerges' = mergeCollector : newMerges
            replaceForks = zip forks newForks
            replaceDemuxes = zip demuxes (concat newDemuxes : replicate (length demuxes - 1) [])
            replaceMuxes =  zip muxes (concat newMuxes : replicate (length muxes - 1) [])
            replaceMap = Map.fromList $ concat [replaceForks, replaceDemuxes, replaceMuxes]
            chCons = [Codef ("C" ++ show j ++ "_" ++ show (length newMergesDataOutputs)) [] | j <- [1 .. length newMergesDataOutputs]]
            chTdef = Tydef ("C" ++ show (length newMergesDataOutputs)) chCons
                                                                
        return  (Map.insert merge newMerges' replaceMap, chTdef : newTypes)

-- Old demux with a lot of (> threshold) outputs
-- inputs are old merge choice and data
mkDemux demux@(Node inputs (Demux chType dcons) outputs)  choicesBot =

    do
        let go frontier [] = frontier
            go frontier rest =
                let (outputs', rest') = splitAt threshold rest
                    -- chType' = "C_" ++ show (length outputs')
                    newDemux = Node inputs (Demux chType ["C" ++ (show j) ++ "_" ++ (show $ length outputs') | j <- [1 .. length outputs']] ) outputs' in
                        go (newDemux : frontier) rest'

            newDemuxes = go [] outputs

        newDemuxOutputs <- forM newDemuxes (\x -> newVar)
    -- fix unique names
        let
            -- dataInput = inputs !! 1
            -- newDemuxOutputs = [dataInput ++ "_Compressed_" ++ (show i) | i <- [1 .. (length newDemuxes)]]
            newDemux = Node inputs (Demux chType ["C" ++ (show j) ++ "_" ++ (show $ length newDemuxes) | j <- [1 .. (length newDemuxes)]]) newDemuxOutputs
            -- chType' = Tycon $ "C_" ++ show (length newMergesDataOutputs)
            -- mergeCollecter = Node newMergesDataOutputs (MergeChoice chType' inType) outputs where
            newDemuxesBot = [Node [ch,in'] (Demux chType dcons) outputs | (newDemux@(Node inputs (Demux chType dcons) outputs), ch, in') <- zip3 newDemuxes choicesBot newDemuxOutputs]



        return (newDemux : newDemuxesBot)

mkMux mux@(Node inputs (Mux chType dcons) outputs) choicesBot =
    do
        let go frontier [] = return frontier
            go frontier rest = do

                dataO <- newVar

                let (inputs', rest') = splitAt threshold rest
                    -- chType' = "C_" ++ show (length outputs')
                    newMux = Node inputs' (Mux chType ["C" ++ (show j) ++ "_" ++ (show $ length inputs') | j <- [1 .. length inputs']] ) [dataO ++ "_Mux"]

                go (newMux : frontier) rest'

        newMuxes <- go [] (tail inputs)

        -- newMuxOutputs <- forM newDemuxes (\x -> newVar)
    -- fix unique names
        let
            -- dataInput = inputs !! 1
            newMuxInputs = [dataO | mux@(Node _ (Mux _ _) [dataO]) <- newMuxes]
            newMux = Node ((inputs !! 0) : newMuxInputs) (Mux chType ["C" ++ (show j) ++ "_" ++ (show $ length newMuxes) | j <- [1 .. (length newMuxes)]]) outputs
            -- chType' = Tycon $ "C_" ++ show (length newMergesDataOutputs)
            -- mergeCollecter = Node newMergesDataOutputs (MergeChoice chType' inType) outputs where
            newMuxesTop = [Node (ch:inputs) (Mux chType dcons) outputs | (mux@(Node inputs (Mux chType dcons) outputs), ch) <- zip newMuxes choicesBot]



        return (newMux : newMuxesTop)