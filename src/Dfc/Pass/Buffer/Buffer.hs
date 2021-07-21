module Dfc.Pass.Buffer.Buffer where

import Dfc.AST
import qualified Data.Set as Set
import qualified Data.Map as Map

{-
Dataflow consists of type definitions, type signatures of channels,
and channels implementations. Implementations could be represented as a vertex in a graph with incoming and outcomming edges.
Each vertex has a name and a type as there is a need to choose beffered vertices.

For each two adjacent vertices there should be a buffer vetrex incerted inbetween. 

Thus, we need to search fast for an adjacent vertex. Since vertices are typed, we need to keep track of edge types as well to insert correctrly typed buffer.

BFS through the graph visiting each edge and mutate the graph with correct buffers
-}

type Subst = Map.Map String Arg

updateList :: Eq a => a -> [a] -> [a] -> [a]
updateList _ [] _ = []
updateList key value (x:xs) = if x == key then value ++ xs
                            else x : updateList key value xs

nullSubst :: Subst
nullSubst = Map.empty

-- compose :: Subst -> Subst -> Subst
-- s1 `compose` s2 = Map.map (apply s1) s2 `Map.union` s1

-- actually we need to return the types of the output
getFreeVars :: Nsig -> [String]
getFreeVars (Nsig _ [] _ _ )  = []
getFreeVars (Nsig name (x:xs) input output ) = case x of
    Var s -> s : (getFreeVars (Nsig name xs input output))
    Typed s _ -> s : (getFreeVars (Nsig name xs input output))
-- all types in signatures are of \forall form

getNsig :: Ninst -> [Nsig] -> Nsig
getNsig ninst [] = error (show ninst) " not found"
getNsig ninst@(Node _ name _ _) (nsig@(Nsig name' _ _ _):xs) = if name == name' then nsig
                                                               else getNsig ninst xs 
-- unify :: Ninst -> Nsig -> Subst
-- Buffer signature is dbuf a: a > a , thus exactly one type argument is needed

-- getBufType :: Channel -> Ninst -> Dataflow -> Arg
-- getBufType channel node df = 

    -- need to unify node's type with its signature

getSubst :: [String] -> Ninst -> Subst
getSubst free node@(Node _ _ args _) = substHelper free args nullSubst where
    substHelper :: [String] -> [Arg] -> Subst -> Subst
    substHelper freeVars  args subst =
        case freeVars of 
            [] -> case args of 
                [] -> subst
                _  -> error "Error while substitution"
            (x:xs) -> case args of
                [] -> error "Error while substitution"
                (y:ys) -> substHelper xs ys (Map.insert x y subst)
--eval output types
-- evalTypes :: Nsig -> Subst -> [Arg]
-- evalTypes nsig@(Nsig _ _ inputs _) subst =
--     let makeSubst :: TyExp -> Subst -> Arg
--         makeSubst SigType a = UserArg a
--         makeSubst Aexp s = 

addBuffers :: Dataflow -> IO Dataflow
addBuffers df@(Dataflow tdefs nsigs ninsts) = do
    
    -- newNists <-  (addBuffers' [findSource ninsts] ninsts ("_" `Set.insert` Set.empty))
    let freevars = getFreeVars $ getNsig (ninsts !! 1) nsigs
        subst = getSubst freevars (ninsts !! 1)
    print $ subst
    return (Dataflow tdefs nsigs ninsts) where

    -- addBuffers' :: [Ninst] -> [Ninst] -> Set.Set Channel -> [Ninst]    
    -- addBuffers' (frontier@(current@(Node outputs _ _ _) : tl)) nodes visited = do
    --     let frontier' = (map (findVertex nodes) $ (filter (\o -> not $ o `Set.member` visited) outputs))
    --         visited' = (Set.fromList outputs) `Set.union` visited
    --     o <- outputs
    --     if not $ o `Set.member` visited then
    --         let distNode = findVertex nodes o
                --    freeVars = getFreeVars $ getNsig current nsigs
                --    subst = 
    --             buffer = createBuffer o -- create a buf node given a channel, need to query channel type 
    --     node <- frontier'
    --     if not $ isBufffered node then

    --     else
    --     print $ frontier'
    --     addBuffers' frontier' nodes visited'

    -- addBuffers' [] nodes _ = do
    --     print "Bottom" 
    --     return nodes
    
    isBufffered :: Ninst -> Bool
    isBufffered n@(Node _ name _ _) = case name of
        "dbuf" -> True
        "rbuf" -> True
        "initbuf" -> True
        "initibuf" -> True
        _          -> False 

    -- since each channel appers only once as an input and output it suffices to just return the first
    -- Note: we need the node our chanell is input for
    -- Note: some channels are name with "_", meaning that they can be dropped
    findVertex :: [Ninst] -> Channel-> Ninst
    findVertex nodes channel = case nodes of
        [] -> error $ "channel not found: " ++ show channel
        (x@(Node outs name _ inputs) : xs) -> if channel `elem` inputs then x
                                              else findVertex xs channel 

    findSource ninsts' = case ninsts' of
         [] -> error "Empty dataflow"
         ((x@(Node _ name _ _ )): xs) -> if name == "source" then x
                                      else findSource xs
    -- print $ findSource ninsts
    -- return df 