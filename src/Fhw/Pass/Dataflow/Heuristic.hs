{-
    A heuristic for finding capacity-imbalanced reconvergent paths
    in a dataflow graph. The heuristic is based on an approximation
    algorithm described in the paper "Fast Approximation Algorithms
    for Finding Node-Independent Paths in Networks" by White & Newman.
-}
module Fhw.Pass.Dataflow.Heuristic where

import Data.Maybe 
import qualified Data.Map as Map
import Data.List 
import Data.Array
import Data.Array.MArray
import Data.Array.ST
import Data.STRef
import Control.Monad.ST
import Control.Monad (foldM)
import Control.Applicative ((<$>))
import Control.Arrow (second)
import Data.Function (on)
import qualified Data.Set as S

import Fhw.Pass.Dataflow.TicGen

--import Debug.Trace

-- | Weighted nodes have a function name, unique identifier, and a list
-- of outputs [(dest,name,weight)] where 'dest' is the name of the destination
-- node, 'name' is a unique name for this output, and 'weight' is the number
-- of output buffers on that edge.
type WNode = (String,String,[(String,String,Int)])
type Graph = Array Vertex [(Vertex,String,Int)]
type Vertex = Int

-- | Nodes passed to us from Main.hs
type FullInfo = (NodeInfo,[String],[[Int]],[[Int]])

-- | A path v1 - e1 - v2 - e2 - ... - en - vn of vertices and edges
-- is modeled as [("",v1),(e1,v2),...,(en,vn)]
type Path = [(String,String)]

-- | All the information needed for graph representation and conversion
type GraphInfo node = (Graph, 
                       Vertex -> (node, String, [(String,String,Int)]), 
                       String -> Maybe Vertex)

showThem :: (Show a) => [a] -> String
showThem = intercalate "\n" . map show

-- | Sanity check to ensure we have no unbuffered cycles
noCycles :: [FullInfo] -> [FullInfo]
noCycles nodes = if null zeroCycles
                    then nodes
                    else error $ "Still have unbuffered cycles " ++ showThem zeroCycles
  where
    weighted = remInputs $ addWeights nodes

    zeroCycles = filter cyclic $ map ((`runZeroDFS` Map.empty) . (:[])) weighted

    runZeroDFS [] _ = []
    runZeroDFS (toSearch:rest) m = 
      let (_,name,outputs) = toSearch
      in if Map.member name m                                 
          then runZeroDFS rest m
          else let newMap = Map.insert name toSearch m
                   dests  = mapMaybe getZEdges outputs 
                   destNodes = filter ((`elem` dests) . getName) weighted
                   getZEdges (n,_,0) = Just n
                   getZEdges _       = Nothing
                in toSearch : runZeroDFS (destNodes ++ rest) newMap

    cyclic ((_,headNode,_):rest) = any (any (\(dest,_,num) -> dest == headNode && num == 0)
                                       . getOutputs) rest
    cyclic [] = error "Empty path"

-- | Find a feedback arc set for buffer allocation to break cycles
feedbackArcs :: [FullInfo] -> [String]
feedbackArcs nodes = foldr getEdges [] $ -- Find the edge that completed each cycle
                     filter ((==0) . snd . snd)  $ --Keep unbuffered cycles
                     nubBy ((==) `on` fst) $ --Remove duplicate cycles
                     map (getCycleInfo . flip (`dijkstra` (-1)) g) nodeNames
  where
    -- Only collect a new edge if it isn't part of a previously broken
    -- cycle. Given an unbroken cycle, we take the edge belonging to the
    -- node with the most outputs. If we instead took one from a node with
    -- fewer outputs, we could potentially decrease the throughput through
    -- the node with more outputs. --TODO: Discuss this better.
    getEdges path edges = if any (`elem` cyc) edges
                           then edges
                           else edge : edges
      where
      cyc = buildCycle path
      edge = fst $ minimumBy (flip compare `on` snd) $ countOuts cyc

    -- | For each edge in a cycle, return that edge along with the number
    -- of outputs its node has
    countOuts [] = []
    countOuts (e:rest) = (e,length $ getOutputs n) : countOuts rest
      where
        n = fromJust $ find (elem e . map getName . getOutputs) weighted
                            
    buildCycle (prev,(start,_)) = edge : finish n
      where
        (edge,n) = prev ! start
        finish next = let (e,next') = prev ! next
                      in if e == edge
                          then []
                          else e : finish next'
        
    weighted = remInputs $ addWeights nodes
    (g,_,keyToVertex) = graphFromEdges weighted
    nodeNames = map (fromJust . keyToVertex . getName) weighted

    getCycleInfo (_,prev,cycleInfo) = (prev,cycleInfo)

-- | Find first edges along non-buffered paths that reconverge with a 
-- buffered path.
getEdgeCandidates :: [FullInfo] -> [String]
getEdgeCandidates nodes = foldl' collectEdges [] $ 
                          nub                 $ --Remove duplicate paths
                          sortBy compareLen   $ --Put shortest paths first 
                          concatMap notBuffed $ --Keep unbuffered paths
                          getReconPaths nodes   --Find reconvergent paths
  where
    -- | Take the first edge of a path if it doesn't contain
    -- any edges already taken. 
    collectEdges :: [String] -> Path -> [String]
    collectEdges taken [_,(edge,_)] = edge : taken
    collectEdges taken p = if any ((`elem` taken) . fst) p
                              then taken
                              else firstEdge p : taken

    compareLen x y = length x `compare` length y

    notBuffed paths = map fst $ filter ((==0) . snd) paths
    firstEdge (_:(edge,_):_) = edge
    firstEdge _ = error "No first edge"

-- | Run the relay station heuristic on a buffered topology, returning a set
-- of edge names and how many relay stations should be placed on each.
runHeuristic :: [FullInfo] -> [(String,Int)]
runHeuristic nodes = reconvergent
  where
    reconvergent = filter ((>0) . snd) $ --Only report positive count edges
                   nubBy ((==) `on` fst) $ --keep highest count per edge
                   sortBy (flip compare `on` snd) $ 
                   map edgeAndRelay $  --TODO: What if I filter out noOutFirings?
                   getReconPaths nodes

    --Given a reconvergent path set, apply the heuristic to report
    --an edge and number of relay stations to place on that edge.
    edgeAndRelay :: [(Path,Int)] -> (String,Int)
    edgeAndRelay paths = let (sPath,sLen) = head paths --shortest path
                             (_,lLen) = last paths --longest path
                             ((_,rootNode):(rEdge,_):_) = sPath
                             rootEdge = findWeightedEdge rEdge $ tail sPath
                             cyc      = findFeedCycle rootNode
                             diff     = lLen - sLen --capacity mismatch
                         in (rootEdge,if cyc == 0 then 0 else diff `div` cyc) 

    -- Find length of shortest cycle feeding into a reconvergent source.
    -- If the current node isn't part of a cycle, recurse on the node feeding 
    -- the current node. If the current node has multiple or external inputs,
    -- we make the assumption that it could be fed a new token on every cycle.
    -- This makes sense to me for the external input case; could I do better
    -- for the multi-input, non-external case?
    findFeedCycle node | cyc == maxBound && zeroInputs  = 1
                       | cyc == maxBound && multiInputs = 0 --TODO: explain this
                       | cyc == maxBound = findFeedCycle preNode
                       | otherwise = cyc
      where
        (_,_,(_,cyc)) = dijkstra (fromJust $ keyToVertex node) (-1) g
        -- How many nodes feed the current one?
        multiInputs = length (filter getPrev weighted) > 1
        --A reconvergent source fed by external inputs won't have any
        --predecessors in our weighted graph.
        zeroInputs = not (any getPrev weighted)
        -- Get predecessor to rootNode from weighted graph
        preNode = getName $ fromJust $ find getPrev weighted
        getPrev = elem node . map getDest . getOutputs

    weightError e = error $ "Problem finding edge " ++ show e ++ 
                            " in findWeightedEdge"

    --Choosing an edge that already has buffers on it is better than
    --an unweighted edge, as that new delay could reduce throughput
    findWeightedEdge e [] = e -- Use initial edge on path if no buffers exist
    findWeightedEdge e ((edge,_):rest) | weight == 0 = findWeightedEdge e rest
                                       | otherwise   = edge
      where
       weight = maybe (weightError edge) 
                (getWeight . head . filter ((==) edge . getName) . getOutputs)
                (find hasEdge weighted) 
       hasEdge = elem edge . map getName . getOutputs

    (g,_,keyToVertex) = graphFromEdges weighted
    weighted = remInputs $ addWeights nodes
    getWeight (_,_,w) = w

-- | Generate reconvergent path sets for a nodelist
getReconPaths :: [FullInfo] -> [[(Path,Int)]]
getReconPaths nodes =  
  filter diffSize                    $ --remove paths with equivalent capacities
  concat                             $ 
  filter (not . null)                $ 
  map (filter ((>1).length) . 
       findPaths weighted noInputs)  $
  pairs nodes                   
  where
    noInputs = remInputs weighted
    weighted = addWeights nodes
    -- Check if path sizes are different
    diffSize (path:rest) = any (/= snd path) (map snd rest)
    diffSize _ = error "Expecting multiple paths"

-- | Get All pairs of nodes with AND-firing rules on outputs and inputs
pairs :: [FullInfo] -> [(String,String,[Int],[Int])]
pairs nodes = [(getNodeName outNode,getNodeName inNode,inPorts,outPorts) | 
                outNode <- sources
              , inNode  <- dests
              , inPorts <- getInPorts inNode
              , outPorts <- getOutPorts outNode]
  where
    getNodeName ((_,name,_,_),_,_,_) = name
    getOutPorts (_,_,_,ports) = ports
    getInPorts (_,_,ports,_) = ports

    sources = filter hasOut nodes
    dests = filter hasIn nodes

    hasIn (_,_,ins,_) = not $ null ins
    hasOut (_,_,_,outs) = not $ null outs

newSTArray :: Ix i => (i,i) -> e -> ST s (STArray s i e)
newSTArray = newArray

-- | Yen's k-shortest paths algorithm
yens :: GraphInfo node -> (String,String) -> Int 
     -> Array Vertex (Int,[(String,Vertex)])
yens (g,_,keyToVertex) (s,t) k = runST $ do 
  shortestPaths <- newSTArray (0,k-1) (-1,[])
  let (shortestPath,sPathDist) = runDijkstra (getVertex s,getVertex t) g
  if null shortestPath
    then freeze shortestPaths 
    else do
     writeArray shortestPaths 0 (sPathDist,shortestPath)
     let aux pathHeap k' 
          | k' == k = return ()
          | otherwise = do
           (_,path) <- readArray shortestPaths (k' - 1)
           let runInner i heap 
                | i == (length path - 1) = return heap
                | otherwise = do 
                    newGraph <- removeRootPath i spur rootPath
                    let (spurPath,spurDist) = runDijkstra (spur,getVertex t) newGraph
                        pathDist = i + spurDist
                        --The i+1 edge of rootpath is identical to the first of
                        --the spurPath, but the spurPath one doesn't have the 
                        --name of the edge needed to reconstruct the path.
                        totalPath = take (i+1) rootPath ++ drop 1 spurPath 
                        newHeap = S.insert (pathDist,totalPath) heap
                    runInner (i+1) $ 
                      if null spurPath then heap else newHeap 
                where (_,spur) = path !! i
                      rootPath = take (1+i) path
           newHeap <- runInner 0 pathHeap --Run inner loop
           case S.minView newHeap of
             Nothing -> return () --no spur paths found or none left
             Just ((pathDist',path'),newHeap') -> do
                 writeArray shortestPaths k' (pathDist',path')
                 aux newHeap' (k'+1)
         removeRootPath i spurNode rootPath = do
           paths <- getElems shortestPaths >>= mapM (return . snd)
           let g1 = foldl (removeEdges rootPath i) g paths
               g2 = foldl (removeNode spurNode) g1 rootPath
           return g2
     aux S.empty 1 --Run outer loop for k' = 1 to k
     freeze shortestPaths
 where
  getVertex = fromMaybe (error "No key found") . keyToVertex

  --Remove an edge from g' if rootPath is contained in path
  removeEdges rootPath i g' path = if rootPath == take (i+1) path
                                    then g' // [(p,newAdj)]
                                    else g'
    where
      [(_,p),(_,q)] = take 2 $ drop i path
      adjList = g' ! p
      newAdj = filter ((/=q) . getDest) adjList

  --Remove the root node (and all edges connected to it) if it's not
  --the spur node.
  removeNode spur g' (_,root) = 
    if root == spur
      then g'
      else (g' // zip [0..] newElems) // 
           [(root,[])] --Remove root node
    where 
      --Remove edges to root node
      newElems = map (filter ((/=root) . getDest)) $ elems g' 

-- | Dijkstra's algorithm for shortest, weighted paths. Inputs are a source 
-- vertex, a default (invalid) distance to assign to each vertex initially, and
-- a graph modeled as an array of adjacency lists.  We return the minimum
-- distances to each node from the source, the predecessors of each node on the
-- shortest paths, and the length of the shortest cycle including the source
-- node (along with the node that completed the cycle). Originally copied from
-- RosettaCode.org
dijkstra :: Vertex -> Int -> Graph
         -> (Array Vertex (String,Int), Array Vertex (String,Vertex), (Vertex,Int))
dijkstra src invalid_dist adj_list = runST $ do
  min_distance <- newSTArray b ("",maxBound)
  writeArray min_distance src ("",0)
  previous <- newSTArray b ("",invalid_dist)
  val <- newSTRef maxBound
  prev <- newSTRef src
  let aux vertex_queue =
       case S.minView vertex_queue of
         Nothing -> return ()
         Just ((dist, u), vertex_queue') ->
          let edges = adj_list ! u
              f vertexQueue (v, origOut, weight) = do
                let dist_thru_u = dist + weight
                (_,old_dist) <- readArray min_distance v
                if dist_thru_u >= old_dist 
                  then do
                    curVal <- readSTRef val
                    if src == v && dist_thru_u < curVal 
                      then do
                        writeArray previous src (origOut,u)
                        writeSTRef val dist_thru_u
                        writeSTRef prev u
                        return vertexQueue
                      else return vertexQueue
                  else do
                   let newVertexQueue' = S.delete (old_dist, v) vertexQueue
                   writeArray min_distance v (origOut,dist_thru_u)
                   writeArray previous v (origOut,u)
                   return $ S.insert (dist_thru_u, v) newVertexQueue'
          in
          foldM f vertex_queue' edges >>= aux
  aux (S.singleton (0, src))
  m <- freeze min_distance
  p <- freeze previous
  result <- readSTRef val
  prev' <- readSTRef prev
  return (m, p, (prev',result))
  where b = bounds adj_list

-- | Return the shortest path to a target vetex. Inputs are the target,
-- the source, the default weights assigned to each element when running 
-- Dijkstra, and the "previous" array returned from a Dijkstra run.
shortestPathTo :: (Show v, Ix v) => v -> v -> v -> Array v (String,v) 
                                   -> [(String,v)]
shortestPathTo target src invalid_dist previous = 
  aux target [] where
   aux vertex acc | vertex == src = ("",src) : acc
                  | vertex == invalid_dist = if length acc == 1 then [] else acc
                  | otherwise = let (orig,v) = previous ! vertex
                                in aux v ((orig,vertex) : acc)

-- | Build a weighted graph from a list of nodes specified by a unique key and
-- an ordered list of weighted output edges. The out-list may contain keys that
-- don't correspond to nodes of the graph; they are ignored.
-- Modified from the same function in Data.Graph.
graphFromEdges :: [(node, String, [(String,String,Int)])] 
                  -> GraphInfo node
graphFromEdges edges0 =  (graph, \v -> vertex_map ! v, key_vertex)
  where
      max_v        = length edges0 - 1
      bounds0      = (0,max_v) :: (Vertex, Vertex)
      sorted_edges = sortBy lt edges0
      edges1       = zip [0..] sorted_edges

      graph      = array bounds0 [(,) v (mapMaybe weightKey_vertex ks) | 
                                  (,) v (_,_,ks) <- edges1]
      key_map    = array bounds0 [(,) v k |
                                  (,) v (_,k,_ ) <- edges1]
      vertex_map = array bounds0 edges1

      (_,k1,_) `lt` (_,k2,_) = k1 `compare` k2

      weightKey_vertex (dest,origName,weight) = (\v -> (v,origName,weight)) <$> 
                                                key_vertex dest

      -- key_vertex :: key -> Maybe Vertex
      --  returns Nothing for non-interesting vertices
      key_vertex k = findVertex 0 max_v
       where
         findVertex a b | a > b = Nothing
         findVertex a b = case compare k (key_map ! mid) of
                           LT -> findVertex a (mid-1)
                           EQ -> Just mid
                           GT -> findVertex (mid+1) b
            where mid = (a + b) `div` 2

-- | Given nodelist with buffers, return weighted nodelist where each node has
-- a function, unique name, and an ordered adjacency list of output neighbors
-- with weight indicating the number of output buffers along that output's
-- channel. Also keep around the inputs to each node for reconvergent path
-- searching.
addWeights :: [FullInfo] -> [([String],WNode)]
addWeights nodeList = map addWeight $ filter nonBuffer renamedList
  where
    reformatedList = map remBool nodeList
    remBool ((f,name,ins,_),outs,_,_) = (f,name,ins,outs)

    --Remove "Out" suffix from any output that has one so they match input names
    renamedList = map renameOuts reformatedList
    renameOuts (f,name,ins,outs) = (f,name,ins,map renameSuffix outs)
    renameSuffix str = if "Out" `isSuffixOf` str
                        then reverse $ drop 3 $ reverse str
                        else str

    --Only include non-buffers in graph
    nonBuffer (func,_,_,_) = not $ "Buffer" `isSuffixOf` func

    --Add weights to each node's adjacency list
    addWeight (f,name,ins,outputs) = (map renameInputs ins,
                                     (f,name,zipWith countBufs outputs outputs))

    renamedMap = Map.fromList $ concatMap toAssoc renamedList
    toAssoc (f,n,ins,outs) = map (\o -> (o,(f,n,ins))) outs

    -- Rename inputs that come from buffers since buffers aren't represented
    -- as nodes in the weighted graph
    renameInputs ('i':'n':'_':_) = ""
    renameInputs input = 
      let source = Map.lookup input renamedMap
          (func,_,inputs) = fromMaybe (findInError input) source
      in if "Buffer" `isInfixOf` func
           then renameInputs (head inputs)
           else input

    --Count the number of output buffers on a channel
    countBufs origOut output = 
      let destination = find (elem output . getInputs) renamedList
          (func,name,_,outputs) = fromMaybe (findError output) destination
          increment (a,b,num)= (a,b,num+1)
      in if not ("Buffer" `isInfixOf` func)
            then (name,origOut,0)
            else (if func == "inBuffer"  || func == "infBuffer"
                  then id -- input and infinite buffers may not impose a delay
                  else increment) $ countBufs origOut (head outputs)

    getInputs (_,_,inputs,_) = inputs
    findError s = error $ "Can't find input matching " ++ show s 
    findInError s = error $ "Can't find output matching " ++ show s

-- | We search for reconvergent paths between two named nodes, with starting
-- and final edges that are included in the given port sets.
type ProblemInstance = (String,String,[Int],[Int])

-- | Start approximation algorithm for finding reconvergent paths
findPaths :: [([String],WNode)] -> [WNode] -> ProblemInstance -> [[(Path,Int)]]
findPaths nodeWInputs nodes (s,t,inPorts,outPorts) = findPaths' graph (s,t)
  where
    src@(f,name,outs) = fromMaybe (srcNError s) $ find ((==) s . getName) nodes
    (ins,_)      = fromMaybe (destError t) $ find ((==) t . getName . snd) nodeWInputs

    --Only include output edges corresponding to our outPorts list
    newSrcNode = (f,name,map (genericIndex outs . flip (-) 1)  outPorts) 

    --Only include input edges corresponding to our inPorts list
    newNodes = foldr removeOutputs nodesToMod inputsToGo
    nodesToMod = nub $ map getSources inputsToGo --remove outgoing edges from these 
    getSources input = fromMaybe (srcError input) $ find (produces input) nodes
    inputsToGo = filter (/="") $ filter (`notElem` inputsToKeep) ins
    inputsToKeep = map (genericIndex ins . flip (-) 1) inPorts

    removeOutputs :: String -> [WNode] -> [WNode]
    removeOutputs input sNodes = 
      let no@(f',n',outs') = fromMaybe (outError input) $ find (produces input) sNodes
      in (f',n',filter ((/=input) . getName) outs') : 
         delete no sNodes

    -- Does a node produce an output with the given name?
    produces n = elem n . map getName . getOutputs

    -- Build graph after removing modifying edges of appropriate nodes
    graph= graphFromEdges (allNewNodes ++ 
                          foldr delete nodes deleted)
    deleted = nub $ src : nodesToMod
    allNewNodes = let dupNode = find ((==name) . getName) newNodes
                      (f',n',outs') = fromJust dupNode
                      srcOuts = getOutputs newSrcNode
                      newOuts = intersect outs srcOuts
                  in if isJust dupNode
                      then (f',n',newOuts) : delete (f',n',outs') newNodes
                      else newSrcNode : newNodes

    srcError input = error $ "Couldn't find source for input " ++ input
    destError = error $ "Couldn't find destination " ++ t
    srcNError = error $ "Couldn't find source node " ++ s
    outError input = error $ "Couldn't producing node for input " ++ input

runDijkstra :: (Vertex,Vertex) -> Graph -> ([(String,Vertex)],Int)
runDijkstra (src,sink) graph = (shortestPath,pathDist)
  where (min_distance,previous,_) = dijkstra src (-1) graph
        shortestPath = shortestPathTo sink src (-1) previous
        pathDist = snd $ min_distance ! sink


-- | We find the shortest path(s) using Yen's algorithm for k-shortest paths,
-- remove each in turn, and repeat until no shortest
-- path can be found.
findPaths' :: GraphInfo String -> (String,String) -> [[(Path,Int)]]
findPaths' gInfo@(g,vToNode,_) (s,t) =
  if null shortestPaths
     then []                              
     else concatMap recurse shortestPaths
  where
   shortestPaths = filter ((>1) . length . snd) $
                   --Only return multiple shortest paths with equal length
                   head $ groupBy ((==) `on` fst) $ 
                   --TODO: Does setting yen's to a higher degree ever help?
                   --Set integer to k to return k shortest paths
                   elems $ yens gInfo (s,t) 1 

   recurse :: (Int,[(String,Vertex)]) -> [[(Path,Int)]]
   recurse (dist,path) = 
    let namedPath = map (second (getName . vToNode)) path
        oldG = map vToNode $ vertices g
        newG = graphFromEdges $ removePath oldG namedPath
        result = findPaths' newG (s,t)
    in if null result
         then [[(namedPath,dist)]]
         else map ((namedPath,dist) :) result

   --Remove any internal vertices used in the shortest path
   --and the initial edge.
   removePath :: [WNode] -> [(String,String)] -> [WNode]
   removePath oldG ((_,src):rest) =
      let s'@(f,_,outs) = findNode src oldG
          edgeDest = snd $ head rest
          mayEdge = find ((==) edgeDest . getDest) outs
          edge = fromMaybe (edgeError edgeDest outs) mayEdge
          newNode = (f,src,delete edge outs)
          remove g' (_,name) = let node@(f',_,_) = findNode name g'
                               in (f',name,[]) : delete node g'
      in newNode : foldl remove (delete s' oldG) (init rest)
   removePath _ _ = error "Empty path"

   findNode name graph = fromMaybe (gError name) $ find ((==) name . getName) graph

   gError name = error $ "Can't find node in graph with name " ++ show name
   edgeError edge outs = error $ "Can't find edge " ++ edge ++ " in list " 
                                 ++ show outs

-- Get the destination node for an edge
getDest :: (a,b,c) -> a
getDest (dest,_,_) = dest

-- Get name or output list from a node
getName :: (a,b,c) -> b
getName (_,name,_) = name
getOutputs :: (a,b,c) -> c
getOutputs (_,_,outputs) = outputs

-- | Get all the vertices of a graph
vertices :: Graph -> [Vertex]
vertices = indices

remInputs :: [(a,b)] -> [b]
remInputs = map snd

printTheList :: Show a => [a] -> String
printTheList = intercalate "\n" . map show
