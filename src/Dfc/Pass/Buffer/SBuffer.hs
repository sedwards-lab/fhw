module Dfc.Pass.Buffer.SBuffer where

import Dfc.SAST
import Dfc.AST
import qualified Data.Set as Set
import Control.Monad.State

import Debug.Trace

data BufferState = BufferState {nodes :: [SNode],
                                -- frontier :: [SNode],
                                outputs :: [Chan],
                                visited :: (Set.Set Chan),
                                number :: Int
                                } --([SNode],SNode) -- set of all nodes and new buffer

addBuffers :: SDataflow -> SDataflow
addBuffers ds@(SDataflow tdefs nsigs snodes) = 
        let source@(SNode name args inputs outputs) = (findSource snodes)
            outputs' = concatMap flatten' outputs
            initState = BufferState snodes outputs' Set.empty 0
            (frontier, newSnodes) = runState (addBuffers' [source]) initState
            snodes' = nodes $ newSnodes in
        SDataflow tdefs nsigs snodes' where 



            -- dst@(SNode _ _ inputs_ outputs_) = findVertex snodes $ outputs !! 0
            -- outputs'' = concatMap flatten' outputs_
            -- dst2@((SNode name2 args2 inputs2 outputs2)) = findVertex snodes $ outputs'' !! 0
            -- inputs3 = [(Bind "Huy" "HuyType"),(Group [(Bind "NexHuy" "HuyType"), (Group [(Bind "NexHuy2" "HuyType"),(Bind "NexHuy3" "HuyType")])])]
            -- dst3 = (SNode "huy" args inputs3 outputs2)
            -- newchan = replaceInput inputs3 "NexHuy3" "newFancyName"
        uniqueName :: String -> Int -> String
        uniqueName name number = name ++ "_zxc" ++ (show number) 

        addBuffers' :: [SNode] -> State BufferState [SNode]
        addBuffers' frontier = do
            s@(BufferState nodes outputs visited number) <- get
        
            case (frontier) of
                (current@(SNode name args ins outs):tl) ->
                    case (outputs) of
                        (x@(Bind chan _):xs) -> 
                            if x `Set.member` visited then do
                                put (BufferState nodes xs visited number)
                                newfrontier <- addBuffers' frontier
                                return newfrontier
                            else case (findVertex nodes x) of
                                    (Just dst@(SNode dstname dstargs dstins dstouts)) ->
                                 
                                        if (isBuffered dst) || (isBuffered current) then do
                                            put (BufferState nodes xs (x `Set.insert` visited) number)
                                            newfrontier <- addBuffers' (frontier ++ [dst]) 
                                            return newfrontier --new state where x is consumed with a new chan
                                        else do
                                                    let buf = createBuffer x number
                                                        newinputs = replaceInput dstins chan (uniqueName chan number)
                                                        newnode = SNode dstname dstargs newinputs dstouts
                                                    put (BufferState (buf : (replaceDst nodes dst newnode)) xs (x `Set.insert` visited) (number + 1))
                                                    newfrontier <- addBuffers' (frontier ++ [dst])
                                                    return newfrontier
                                    
                                    Nothing -> do
                                            put (BufferState nodes xs (x `Set.insert` visited) number)
                                            newfrontier <- addBuffers' frontier 
                                            return newfrontier --new state where x is consumed with a new chan 
                        --consume frontier
                        [] -> 
                            case tl of
                                (next@(SNode _ _ _ nouts):tl') -> do
                                    let newoutputs = filter (\o -> not $ o `Set.member` visited) (concatMap flatten' nouts)
                                    put (BufferState nodes newoutputs visited number)
                                    newfrontier <- addBuffers' tl
                                    return newfrontier
                                [] -> do
                                    newfrontier <- addBuffers' []
                                    return newfrontier
                [] -> return []

                                
                    
        replaceDst :: [SNode] -> SNode -> SNode -> [SNode]
        replaceDst [] prev cur = error $ "Can't replace " ++ (show prev) ++ " with " ++ (show cur)
        replaceDst (s:ss) prev cur = if s == prev then cur : ss
                                     else (s : (replaceDst ss prev cur)) 
        --modify dst node with new name in inputs
        replaceInput :: [Chan] -> Channel -> Channel -> [Chan]
        replaceInput chans oldname newname =
            case chans of 
                [] -> []
                (x:xs) -> case x of
                    (Bind chname tcon) -> if chname == oldname then ((Bind newname tcon) : xs) 
                                          else (x : (replaceInput xs oldname newname))
                    (Group ys) -> let r = replaceInput ys oldname newname in
                        ((Group r) : (replaceInput xs oldname newname))
        
        createBuffer :: Chan -> Int -> SNode
        createBuffer chan@(Bind name tcon) unique' =
            let name' = uniqueName name unique' 
                chan' = Bind name' tcon in
            SNode "buf" [(STyArg tcon)] [chan] [chan']    

        
        findSource snodes' = case snodes' of
         [] -> error "Empty dataflow"
         ((x@(SNode name _ _ _ )): xs) -> if name == "source" then x
                                      else findSource xs
        
        isBuffered :: SNode -> Bool
        isBuffered n@(SNode name _ _ _) = case name of
            "dbuf" -> True
            "rbuf" -> True
            "buf" -> True
            "initbuf" -> True
            "initibuf" -> True
            _          -> False 

    -- There are two possibilities for input/output channels, they are either list of Binds [], or consequtive () of binds
    -- hence we first flatten

    -- since each channel appers only once as an input and output it suffices to just return the first
    -- Note: we need the node our chanell is input for
    -- Note: some channels are name with "_", meaning that they can be dropped
        findVertex :: [SNode] -> Chan -> Maybe SNode
        findVertex nodes channel = case nodes of
            [] -> Nothing --error $ "channel not found: " ++ show channel
            (x@(SNode name _ inputs _) : xs) -> if channel `elem` (concatMap flatten' inputs) then Just x
                                                else findVertex xs channel 

        
