{-|
Module : Dfc.DumpDot
Description : Dump the semantically-checked AST in .dot format
-}

module Dfc.DumpDot (dumpDot) where

import Dfc.SAST
import Dfc.AST

import qualified Data.Map.Strict as Map

dumpDot :: SDataflow -> IO ()
dumpDot (SDataflow _ _ nodes') = do
  let nodes = filter (\n -> case n of SNode "tap" _ _ _ -> False
                                      _ -> True) nodes'
  let channelIndex = enumerateInputChannels nodes
  let printNode :: (SNode, Int) -> IO ()
      printNode (SNode typ _ _ outputs, index) =
        do
          putStrLn $ "N" ++ show index ++ " [label=\"" ++ typ ++ "\"" ++ shape ++ "];"
          mapM_ (\c -> putStrLn $ "N" ++ show index ++ " -> N" ++
                  show (channelIndex Map.! c) ++ " [label=\"" ++ c ++ "\"];")
               (channels outputs)
             where
               shape = case typ of
                         "fork" ->  ",shape=\"triangle\""
                         "source" ->  ",shape=\"circle\""
                         "sink" ->  ",shape=\"circle\""
                         "const" ->  ",shape=\"box\""
                         "dcon" ->  ",shape=\"house\""
                         "demux" ->  ",shape=\"trapezium\""
                         "destruct" ->  ",shape=\"invhouse\""
                         "mux" ->  ",shape=\"invtrapezium\""
                         "mergectrl" ->  ",shape=\"invtrapezium\""
                         "buf" -> ",shape=\"octagon\",style=\"filled\",color=\"red\""
                         "rbuf" -> ",shape=\"octagon\",style=\"filled\",color=\"yellow\""
                         "dbuf" -> ",shape=\"octagon\",style=\"filled\",color=\"green\""
                         _ -> ""
  putStrLn "digraph DF {"
  putStrLn "size=\"8,10.5\""
  mapM_ printNode (zip nodes [0..])
  putStrLn "}"


enumerateInputChannels :: [SNode] -> Map.Map Channel Int
enumerateInputChannels nodes = foldr nameNode Map.empty (zip nodes [0..])
  where
    nameNode (SNode _ _ inputs _, index) theMap =
          foldr (\c m -> Map.insert c index m) theMap (channels inputs)

-- | Return a flattened list of channel names
channels :: [Chan] -> [Channel]
channels = foldr helper []
  where
    helper (Bind "_" _) chans = chans
    helper (Bind c _) chans = c : chans
    helper (Group g) chans = foldr helper chans g




