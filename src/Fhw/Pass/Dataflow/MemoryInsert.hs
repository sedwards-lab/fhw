{- |

Module : Fhw.Pass.Dataflow.MemoryInsert
Description : Insert explicit Memory subnetworks in a dataflow graph.

This pass replaces all abstract Read and Write nodes in a dataflow graph with
connections to type-specific memory subnetworks (hereafter called "memory
networks"). These networks route data type instances and pointers into
type-specific Memory nodes, and route output pointers and data type elements
(that were read) back out to the rest of the network. The components of an
arbitrary memory network are subject to change, but must fulfill the
following invariants:

1. The channels connected to an abstract Read or Write node must be used
   to route inputs and outputs to/from the memory network.
2. If two abstract memory nodes operated on different types, their
   channels will be connected to independent memory networks.
3. Each memory network requires an initial heap pointer for writing.

-}

module Fhw.Pass.Dataflow.MemoryInsert ( memoryInsert ) where

import Fhw.Pass.Dataflow.NodeTypes
import Fhw.Core.Core (Tcon,Dcon)

import Data.Maybe
import Data.List
--import Debug.Trace

-- | Information required to generate a memory network
data MemInfo = MemInfo { memNodes :: [Node] -- Abstract r/w to a given memory
                       , initAddr :: Int -- Initial heap address for writing
                       }

-- TODO: Using a pointer size of 8 bits so we can synthesize a huge
-- number of brams. This isn't for simulation, but just so we can get
-- area usage and fmax of our circuits.
ptrTy :: Type
ptrTy = Tycon "Word8#"
ptrSize :: Int
ptrSize = 8

memoryInsert :: Dataflow -> Dataflow
memoryInsert (Dataflow tdefs nodes) 
  | null pntrTys = Dataflow tdefs nodes --No pointers => no memory operations
  | otherwise    = case verify $ Dataflow newTdefs newNodes of
                    Left err -> error $ "Problem with memop insertion: " ++ err
                    Right _ -> Dataflow newTdefs newNodes
  where
    newTdefs = newChoiceTys  ++           --new Choice types
               concat memTys ++           --new types for memory operations
               map actualPntr pntrDefs ++ --actual pointer types (not abstract)
               oldTdefs
    newNodes = finalFork : concat memNetworks ++ nonMemNodes
    nonMemNodes = maybe id replaceGoDest mbGoDestPair $
                  delete goForkNode $
                  filter (`notElem` concat memNodeSets) nodes

    newChoiceTys = mkChoiceTdef merges tdefs
    merges = filter isMergeChoice $ concat memNetworks
    
    (memTys, memNetworks) = unzip memTups
    -- Construct a memory network for the appropriate types
    (finalFork,memTups) = mapAccumL mkMemNetwork goForkNode
                        $ map initMemInfo memNodeSets 
    -- Each memory we build will correspond to one set in this list
    memNodeSets = map (findMemNodes nodes) pntrTys
    -- A source-driven fork carrying Go tokens
    (goForkNode, mbGoDestPair) = getGoFork nodes
    replaceGoDest (oldDest,newDest) = delete oldDest . (newDest:)

    (pntrDefs, oldTdefs) = partition ((`elem` pntrTys) . getTyCon) tdefs
    pntrTys              = findMemTys nodes

    -- Convert an abstract pointer type to a numeric representation.
    actualPntr (Tydef tc [Codef dc _]) = Tydef tc [Codef dc [ptrTy]]
    actualPntr _ = error "Unexpected form for a pointer type"

    -- Initialize each memory network's record of information
    initMemInfo memSet  = MemInfo { memNodes = memSet
                                  --starting each bram at address=0
                                  , initAddr = 0
                                  }

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

-- | Collect all abstract pointer types
findMemTys :: [Node] -> [Tcon]
findMemTys = nub . mapMaybe getTys
  where
    --All memory-related types should be captured by Read and Write
    --nodes.
    getTys (Node _ (Func (Read (Tycon ptr) _))  _) = Just ptr
    getTys (Node _ (Func (Write _ (Tycon ptr))) _) = Just ptr
    getTys _                                       = Nothing

-- | Find all Read and Write nodes that operate on a given pointer type
findMemNodes :: [Node] -> Tcon -> [Node]
findMemNodes nodes pntrTy = filter usesPntr nodes
  where
    usesPntr (Node _ (Func (Read (Tycon ptr) _))  _) = ptr == pntrTy
    usesPntr (Node _ (Func (Write _ (Tycon ptr))) _) = ptr == pntrTy
    usesPntr _                                       = False

-- | Find the Fork node connected to a Source producing a Go single.
-- If no such Fork exists (the Source feeds into a different node),
-- insert a single output fork, update the original destination node,
-- and return both the original and new node in a tuple.
getGoFork :: [Node] -> (Node, Maybe (Node,Node))
getGoFork nodes = case fromMaybe destErr sourceDest of
                    node@(Node _ (Fork _ _) _) -> (node, Nothing)
                    node -> insertFork node
  where
    insertFork oldNode@(Node ins op outs) = 
      let goOut = head sources
          newFork = Node [goOut] (Fork 1 (Tycon "Go")) ["goFork"]
          replaceIn _   [] = []
          replaceIn key (inp:rest) = if key == inp then "goFork" : rest
                                                   else inp : replaceIn key rest
      in (newFork, Just (oldNode, Node (replaceIn goOut ins) op outs))
    sourceDest = if null sources then sourceErr else getDest $ head sources
    getDest chan = find ((==[chan]) . (\(Node ins _ _) -> ins)) nodes
    sources      = mapMaybe isGoSource nodes

    isGoSource (Node _ (Source (Tycon "Go")) [out]) = Just out
    isGoSource _ = Nothing

    destErr = error "No destination found for Go-producing source"
    sourceErr = error "No go-producing source node found"

-- | Given a Go-producing fork node and information specific to 
-- a given memory, construct a memory network for reading and writing that type.
-- Return an updated fork node, any new types we define, and the memory network.
mkMemNetwork :: Node -> MemInfo -> (Node,([Tydef],[Node]))
mkMemNetwork fork info = if null nodeSet
                          then error "No nodes provided for mkMemNetwork"
                          else (newFork,(memTyDefs,heapDefs))
  where
    heapDefs  = heapPtrDefs ++ memOpDefs
    --interface types for memory
    memTyDefs = mkMemTys valTcon
    --nodes for heap pointer
    (newFork, heapFork, heapPtrDefs) = mkPtrDefs fork info
    --nodes for memory interface (and memory itself)
    memOpDefs = mkMemOpDefs heapFork info

    valTcon   = getObjTy $ head nodeSet
    nodeSet   = memNodes info

-- | Given an object's type constructor, create input/output type definitions
-- for a memory interface.
mkMemTys :: Tcon -> [Tydef]
mkMemTys tc = [memIn,memOut]
  where
    ty = Tycon tc
    memIn = Tydef ("MemIn_" ++ tc) [Codef ("ReadIn_"    ++ tc) [ptrTy]
                                   ,Codef ("WriteIn_"   ++ tc) [ptrTy,ty]]
    memOut = Tydef ("MemOut_" ++ tc) [Codef ("ReadOut_" ++ tc) [ty]
                                     ,Codef ("ACK_"     ++ tc) []]
                                     

-- | Generate nodes implementing a memory's heap pointer,
-- updating a Go-generating fork node in the process.
mkPtrDefs :: Node -> MemInfo -> (Node,Node,[Node])
mkPtrDefs (Node inp (Fork n ty) outputs) info = (goFork, heapFork, newNodes)
  where
    forkOut1 = init (head outputs) ++ "_" ++ show (n+1)
    forkOut2 = init (head outputs) ++ "_" ++ show (n+2)
    initOut   = "initHP_"  ++ memTy  
    incrOut   = "incrHP_"  ++ memTy  
    incrMOut  = "incrHP_merge"  ++ memTy  
    addOut    = "addHP_"   ++ memTy  
    hpForkOut = "forkHP1_" ++ memTy  
    mergeOut  = "mergeHP_" ++ memTy  

    newNodes = [initNode,incrNode,incrMerge,goFork2,addNode,merge,incrMergeBuf,mergeBuf]
    initNode = Node  [forkOut1] (IConst (initAddr info) addrSize) [initOut]
    incrMerge = Node [forkOut2,incrOut ++ "2"] (Merge 2 goTy)    [incrMOut]
    incrMergeBuf = Node [incrMOut]       (Buffer goTy)         [incrMOut ++ "_buf"]
    incrNode = Node [incrOut ++ "1"] (IConst increment addrSize)  [incrOut]
    goFork2  = Node [incrMOut ++ "_buf"] (Fork 2 goTy)         [incrOut ++ "1", incrOut ++ "2"]
    addNode  = Node [incrOut, hpForkOut] (Func $ Add addrSize) [addOut]
    merge    = Node [initOut, addOut]    (Merge 2 ptrTy)       [mergeOut]
    mergeBuf = Node [mergeOut]           (Buffer ptrTy)        [mergeOut ++ "_buf"]
    heapFork = Node [mergeOut ++ "_buf"] (Fork 1 ptrTy)        [hpForkOut]
    goFork   = Node inp (Fork (n+2) ty) (outputs ++ [forkOut1,forkOut2])

    goTy = Tycon "Go"
    -- Data object type name (to store in memory)
    memTy = getObjTy $ head $ memNodes info
    -- Heap pointer size (subject to change)
    addrSize = ptrSize 
    --Currently incrementing heap pointer by logical increments 
    increment = 1      
mkPtrDefs _ _ = error "Non-fork node presented to mkHeapDefs"

-- | Given a fork for a heap pointer and all abstract read/write nodes
-- for a specific type, generate an explicit memory subnetwork
mkMemOpDefs :: Node -> MemInfo -> [Node]
mkMemOpDefs (Node inp (Fork n ty) outputs) info = 
  newHeapFork :                   --modified heap pointer fork
  allMemNodes ++                  --explicit memory node and interface
  (if any isRead nodeSet 
    then readIOnodes ++ readNodes 
    else []) ++                   --read-related nodes
  writeIOnodes ++ writeNodes      --write-related nodes
  where
    -- Potential merge and demux nodes for routing memops and results
    (readIOnodes,writeIOnodes) = mkInterfaces nodeSet readIn writeIn 
                                                      readOut writeOut

    -- Read-specific nodes and names
    readNodes  = [readDestr1,readDcon,readDestr2]
    readDestr1 = Node [readInToNetwork] (Destruct (objPtrTy, [0])) [readPtrChan]
    readDcon   = Node [readPtrChan] (Func (Dcons readinDcon))  [readDconChan] 
    readDestr2 = Node [memReadChan] (Destruct (readoutDcon, [0])) $
                            getExtOutputs isRead readOut readIOnodes
    readInToNetwork = if null readIOnodes 
                      then head $ getInputs $ head $ filter isRead nodeSet 
                      else readIn
    readPtrChan  = name "destructReadIn_"
    readDconChan = name "dconReadIn_"
    readinDcon   = name "ReadIn_"
    readoutDcon  = name "ReadOut_"

    -- Write-specific nodes and names
    writeNodes = [writeDcon,ptrDcon,demuxWriteOut] 
    writeDcon = Node [hpFork1, writeInToNetwork] 
                               (Func (Dcons writeinDcon)) [writeDconChan]
    ptrDcon   = Node [hpFork2] (Func (Dcons objPtrTy)) [ptrDconChan]
    demuxWriteOut = Node [memWriteChan,ptrDconChan] 
                         (Demux (Tycon objPtrTy) [name "ACK_"])
                         (getExtOutputs isWrite writeOut writeIOnodes)
    hpFork1 = init (head outputs) ++ show (n+1)
    hpFork2 = init (head outputs) ++ show (n+2)
    writeInToNetwork = if null writeIOnodes 
                       then head $ getInputs $ head $ filter isWrite nodeSet 
                       else writeIn

    writeinDcon   = name "WriteIn_" 
    writeDconChan = name "dconWriteIn_" 
    ptrDconChan   = name "dconPtr_" 


    -- New heap pointer fork
    newHeapFork = Node inp (Fork (n+2) ty) (outputs ++ [hpFork1,hpFork2])

    -- Explicit memory node and its interfaces
    allMemNodes = if any isRead nodeSet
                    then [memInNode, memNode, memOutNode,
                          memInDbuf, memInRbuf, memOutDbuf, memOutRbuf]
                    else [writeOnly]
    memInNode  = Node [readDconChan,writeDconChan] (MergeChoice (Tycon "C2") memInTy)
                      [memInSel,memInChan]
    memInRbuf  = Node [memInChan] (RBuf memInTy) [memInChan ++ "_rbuf"]
    memInDbuf  = Node [memInChan ++ "_rbuf"] (DBuf memInTy) [memInChan ++ "_dbuf"]
    memNode    = Node [memInChan ++ "_dbuf"] (Bram memInTy memOutTy) [memOutChan]
    memOutRbuf  = Node [memOutChan] (RBuf memOutTy) [memOutChan ++ "_rbuf"]
    memOutDbuf  = Node [memOutChan ++ "_rbuf"] (DBuf memOutTy) [memOutChan ++ "_dbuf"]
    writeOnly  = Node [writeDconChan] (Bram memInTy memOutTy) [memWriteChan]
    memOutNode = Node [memInSel,memOutChan ++ "_dbuf"] (Demux memOutTy ["C1_2","C2_2"])
                      [memReadChan,memWriteChan]
    memInTy      = Tycon (name "MemIn_" )
    memOutTy     = Tycon (name "MemOut_")
    memInChan    = name "memMergeIn_" 
    memOutChan   = name "memOut_" 
    memInSel     = name "memMergeChoice_" 
    memReadChan  = name "memReadOut_" 
    memWriteChan = name "memWriteOut_" 

    -- Channels that feed first nodes internal to memory network
    readIn  = name "readMerge_data_"
    writeIn = name "writeMerge_data_"
    -- Channel names to feed into final demuxes, if needed
    readOut  = name "destructReadOut_" 
    writeOut = name "demuxWriteResult_" 

    -- Data object type name (to store in memory)
    memTy = getObjTy $ head nodeSet
    -- Type-specific pointer type (and data constructor)
    objPtrTy = getPtrTy $ head nodeSet

    -- Get channel name corresponding to external output
    getExtOutputs f _   [] = getOutputs $ head $ filter f nodeSet
    getExtOutputs _ str _  = [str]

    nodeSet = memNodes info
    name = (++ memTy)

mkMemOpDefs _ _ = error "Non-fork node presented to mkMemOpDefs"    

-- | If we have multiple readers or writers, generate mergeChoice and demux 
-- nodes to route arguments/results to/from multiple call sites
mkInterfaces :: [Node] -> String -> String -> String -> String -> ([Node],[Node])
mkInterfaces nodes readIn writeIn readOut writeOut = (readNodes, writeNodes)
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
        then []
        else go (0::Integer) (zip allInputs allOutputs) []
      where
        go _ [] [] = []
        --The final two nodes get channel names corresponding to what the
        --internal memory network expects.
        go _ [] [Node mIns (MergeChoice t1 t2) _,
                 Node _ (Demux t3 t4) dOuts] = 
                  [Node mIns (MergeChoice t1 t2) [mergeSel,mergeOut]
                  ,Node [mergeSel,demuxIn] (Demux t3 t4) dOuts]
        go n [] interfaceNodes = let newIns = mapMaybe getMergeOuts interfaceNodes
                                     newOuts = mapMaybe getDemuxIns interfaceNodes
                                 in if length newIns <= 1
                                      then go n [] interfaceNodes
                                      else interfaceNodes ++ 
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
                         Node [mkName mergeSel,mkName demuxIn] 
                              (Demux tyOut choices) outputs : interfaceNodes
          in go (n+1) restPairs newNodes
        mergeOut = if prefix == "read" then readIn else writeIn
        mergeSel = prefix ++ "Merge_choice_" ++ memTy
        demuxIn = if prefix == "read" then readOut else writeOut
        (allInputs,allOutputs) = getPorts $ filter f nodes

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

mkChoiceDcs :: Int -> [Dcon]
mkChoiceDcs num = mkNameSet num strFunc
  where
    strFunc = (++('_':numStr)) . ('C':)
    numStr = show num

isWrite :: Node -> Bool
isWrite (Node _ (Func (Write _ _)) _) = True
isWrite _ = False

isRead :: Node -> Bool
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
