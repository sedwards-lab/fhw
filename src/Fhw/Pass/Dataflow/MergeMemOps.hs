{- |

Module : Fhw.Pass.Dataflow.MergeMemOps
Description : Merge all reads (writes) for each heap type into a single
              read (write) node.

This pass finds all abstract Read (Write) nodes for each heap type in a dataflow
graph and, if there is more than one such node for a given type, collects them
all into a buffered mergectrl node (paired with a demux) so only one such Read
(Write) node is required.

This is done to have fewer memory connections to the envrionment, so we can
quickly experiment with different memory systems (particularly,
garbage-collected ones) at the SystemVerilog level.

-}

module Fhw.Pass.Dataflow.MergeMemOps ( mergeMemOps ) where

import Fhw.Pass.Dataflow.NodeTypes
import Fhw.Core.Core (Tcon,Dcon)

import Data.Maybe
import Data.List
--import Debug.Trace

mergeMemOps :: Dataflow -> Dataflow
mergeMemOps (Dataflow tdefs nodes) 
  | null pntrTys = Dataflow tdefs nodes --No pointers => no memory operations
  | otherwise    = case verify $ Dataflow newTdefs newNodes of
                    Left err -> error $ "Problem with memop merging: " ++ err
                    Right _ -> Dataflow newTdefs newNodes
  where
    newTdefs = newChoiceTys ++ tdefs
    newNodes = concat memNetworks ++ nonMemNodes
    nonMemNodes = filter (`notElem` concat memNodeSets) nodes

    newChoiceTys = mkChoiceTdef merges tdefs
    merges = filter isMergeChoice $ concat memNetworks
    
    -- Create a buffered merge-demux pair for the appropriate types
    memNetworks = map mkInterfaces memNodeSets 

    -- Find all the pointer types in our network, and each set of read/write
    -- nodes desling with that type. 
    (pntrTys, memNodeSets) = findMemConstructs nodes


-- | If we've added any MergeChoices with a new choice type, generate
-- definitions for those type
mkChoiceTdef :: [Node] -> [Tydef] -> [Tydef]
mkChoiceTdef [] _ = [] 
mkChoiceTdef mergeChoices tdefs = map mkTy undefChTys
  where
    mkTy chTy = let chNum = tail chTy
                in Tydef chTy $ map (flip Codef []) $
                                mkChoiceDcs (read chNum :: Int)
    undefChTys = filter (`notElem` map getTyCon tdefs) choiceTys
    choiceTys = nub $ mapMaybe getChoice mergeChoices
    getChoice (Node _ (MergeChoice (Tycon chTy) _) _) = Just chTy
    getChoice _ = Nothing

-- | Collect all abstract pointer types, and for each, find all Read and 
--   Write nodes that operate on that pointer type.
findMemConstructs :: [Node] -> ([Tcon], [[Node]])
findMemConstructs nodes = let ptrTys = nub $ mapMaybe getTys nodes
                          in (ptrTys, map (\pTy -> filter (usesPntr pTy) nodes) ptrTys)
  where
    getTys (Node _ (Func (Read (Tycon ptr) _))  _) = Just ptr
    getTys (Node _ (Func (Write _ (Tycon ptr))) _) = Just ptr
    getTys _                                       = Nothing

    usesPntr pntrTy (Node _ (Func (Read (Tycon ptr) _))  _) = ptr == pntrTy
    usesPntr pntrTy (Node _ (Func (Write _ (Tycon ptr))) _) = ptr == pntrTy
    usesPntr _      _                                       = False

-- | Given a set of Read/Write nodes for a given heap type, generate 
--   mergeChoice and demux nodes to route arguments/results to/from 
--   multiple call sites.
mkInterfaces :: [Node] -> [Node]
mkInterfaces nodes = readNodes ++ writeNodes
  where
    readNodes  = mkNodes isRead  "read"  objPtrTy      (Tycon memTy)
    writeNodes = mkNodes isWrite "write" (Tycon memTy) objPtrTy

    --DFC's backend can currently only encode datatypes with 64 variants
    --or less, so we can't have a MergeChoice with more than that number
    --of inputs. We cluster read/write channels for a given type into sets
    --of 64, distribute these clusters among MergeChoice/Demux pairs, then
    --recurse on these new node pairs (as they will then need to be merged
    --and demuxed)
    mkNodes f prefix tyIn tyOut = 
      if length allInputs <= 1
        then currentNodes
        else go (0::Integer) (zip allInputs allOutputs) []
      where
        go _ [] [] = []
        --The final two nodes get buffered and wrap around a single Read (or
        --Write) node.
        go _ [] [Node mIns (MergeChoice choiceTy _) _,
                 Node _ (Demux _ choices) dOuts] = 
                  [Node mIns (MergeChoice choiceTy tyIn) [mergeSel,mergeOut]
                  ,Node [mergeSel] (Buffer choiceTy) [selBuf]
                  ,Node [mergeOut] (Buffer tyIn) [dInBuf]
                  ,Node [dInBuf] (Func 
                        ((if prefix == "read" then Read else Write) tyIn tyOut)) 
                        [result]
                  ,Node [result] (Buffer tyOut) [dOutBuf]
                  ,Node [selBuf,dOutBuf] (Demux tyOut choices) dOuts]
        go n [] interfaceNodes = let newIns = mapMaybe getMergeOuts interfaceNodes
                                     newOuts = mapMaybe getDemuxIns interfaceNodes
                                 in interfaceNodes ++ 
                                    go (n+1) (zip newIns newOuts) []
        go n ioPairs interfaceNodes = 
          let (encodableSet,restPairs) = splitAt 64 ioPairs 
              (inputs, outputs) = unzip encodableSet
              choiceTy = Tycon $ 'C' : show choiceNum
              choiceNum = length inputs
              choices = mkChoiceDcs choiceNum 
              mkName s = s ++ show n
              newNodes = Node inputs (MergeChoice choiceTy tyIn) 
                                     [mkName mergeSel, mkName mergeOut] :
                         Node [mkName mergeSel,mkName dOutBuf] 
                              (Demux tyOut choices) outputs : interfaceNodes
          in go (n+1) restPairs newNodes
        mergeOut = prefix ++ "data_" ++ memTy
        mergeSel = prefix ++ "Merge_choice_" ++ memTy
        selBuf = prefix ++ "choice_buf_" ++ memTy
        dInBuf = prefix ++ "data_buf_" ++ memTy
        dOutBuf = prefix ++ "res_buf_" ++ memTy
        result = prefix ++"res_" ++ memTy
        (allInputs,allOutputs) = getPorts currentNodes
        currentNodes = filter f nodes

    getMergeOuts (Node _ (MergeChoice _ _) [_,mOut]) = Just mOut
    getMergeOuts _ = Nothing
    getDemuxIns (Node [_,dIn] (Demux _ _) _) = Just dIn
    getDemuxIns _ = Nothing
    getPorts = foldr go ([],[])
      where go (Node i _ o) (ins,outs) = (i ++ ins, o ++ outs)
    -- Data object type name (to store in memory)
    memTy = getObjTy $ head nodes
    -- Type-specific pointer type
    objPtrTy = Tycon $ getPtrTy $ head nodes

    
    isWrite (Node _ (Func (Write _ _)) _) = True
    isWrite _ = False
    
    isRead (Node _ (Func (Read _ _)) _) = True
    isRead _ = False
    
    -- | Get the type of an object to be stored in memory
    getObjTy :: Node -> Tcon
    getObjTy (Node _ (Func (Read _ (Tycon t))) _) = t
    getObjTy (Node _ (Func (Write (Tycon t) _)) _) = t
    getObjTy _ = error "getObjTy expects a read or write node"

    -- | Get the pointer type of an object to be stored in memory
    getPtrTy :: Node -> Tcon
    getPtrTy (Node _ (Func (Read (Tycon t) _)) _) = t
    getPtrTy (Node _ (Func (Write _ (Tycon t))) _) = t
    getPtrTy _ = error "getPtrTy expects a read or write node"

mkChoiceDcs :: Int -> [Dcon]
mkChoiceDcs num = mkNameSet num strFunc
  where
    strFunc = (++('_':numStr)) . ('C':)
    numStr = show num
