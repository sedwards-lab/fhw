{-|
Module : Dfc.VerilogGen
Description : Generate synthesizable SystemVerilog from semantically-checked
dataflow

-}
{-# LANGUAGE CPP #-}

module Dfc.Verilog.VerilogGen (verilog) where

import qualified Dfc.Verilog.SystemVerilog as V
import Dfc.AST -- Largely for types
import Dfc.SAST -- SAST
import Dfc.Verilog.AlgebraicTypes

import Data.Maybe ( mapMaybe, fromJust, fromMaybe)
import Data.List ( intercalate, find, isSuffixOf, isPrefixOf, sortBy, intersperse)
import Data.Bits ( shift )
import Data.Char ( isAlpha, isAlphaNum, ord )
import Text.Printf ( printf )
import Dfc.Verilog.Testbench

import Debug.Trace

import Text.PrettyPrint (render)
import qualified Data.Text as T


import qualified Data.Map as Map
import Control.Applicative


data ClusteredTys =  ClusteredTys {recursiveTys :: Map.Map Tcon [Channel],
                                   mainGo :: Maybe (Tcon, Channel),
                                   pointerTys :: Map.Map Tcon [Channel],
                                   plainTys :: Map.Map Tcon [Channel]} deriving (Show)

-- | Translate a semantically-checked AST into a SystemVerilog module
verilog :: String -> SDataflow -> ([V.Description], [V.Description], [V.Description]) -- main, package, wrapper
verilog moduleName s@(SDataflow tdefs _ nodes') = trace ("ctIns " ++ show ctIn) $ (mainModule', package, wrapperModuleCode' ) where

   wrapperModuleCode' = [V.Import [V.Package (moduleName ++ "_package")], wrapperModuleCode {V.items = intersperse V.Blankline $ V.items wrapperModuleCode}]

   (package, mainModule') = let (p,m) = createPackage (typeDefs tei ++ [mainModule]) (moduleName ++ "_package")
                                  in (p, V.Import [V.Package (moduleName ++ "_package")] : m)

   mainModule = V.Module { V.name = moduleName
              , V.ports = V.clkPort : V.resetPort :
                          concatMap inputPort sources ++
                          concatMap inputPort readResults ++
                          concatMap inputPort writeResults ++
                          concatMap tapPort taps ++
                          concatMap outputPort sinks ++
                          concatMap outputPort readRequests ++
                          concatMap outputPort writeRequests
              , V.items =  testbenchPorts "INPUTS" sources
                           : testbenchPorts "TAPS" taps
                           : testbenchPorts "OUTPUTS" sinks
                           : typeDict
                           : dictPorts "READS" reads_ops
                           : dictPorts "WRITES" writes
                           : concatMap channelDecl channels ++
                          concat nodeCode }

   ctIn = groupBy sources
   ctOut = groupBy sinks

   mainGo = "sourceGo"

   -- prefixed with "Pointer_"
  --  pointerTys = undefined

   -- like trees, only passed to fill up the memory
  --  recursiveTys = undefined

   nodes = uniquifyWildcards nodes'
   tei = encodeTypes tdefs
   sources = mapMaybe sourceInst nodes
   reads_ops = mapMaybe readInst nodes
   writes = mapMaybe writeInst nodes
   (readRequests, readResults) = unzip $ mapMaybe readSourceInst nodes
   (writeRequests, writeResults) = unzip $ mapMaybe writeSourceInst nodes
   taps = mapMaybe tapInst nodes
   sinks = mapMaybe sinkInst nodes
   channels = concatMap inputChannels nodes

   nodeCode = map (\n -> V.Blankline : V.Comment (show n) : synthesize n) nodes

   testInstance = V.ModInstance moduleName "DUT" [V.LValue . V.Var $ vname | vname <- mportsNames $ V.ports mainModule]

   wrapperModuleCode = generateResultOutput . generateRecursiveInput . generatePlainInput . generateDataInput $ wrapperModule

   wrapperModule = V.Module {V.name = moduleName ++ "_wrapper",
                             V.ports = [(V.Input ("clk", V.Boolean)), (V.Input ("aresetn", V.Boolean))],
                             V.items = [testInstance] ++ dataTransfered ++ testVdefs ++ reset ++ [reseted]}

   testVdefs = mapMaybe (\x -> case x of
                            (V.Input ("clk", _ )) -> Nothing
                            (V.Input (varN, varT)) -> Just $ V.Reg (varN, varT)
                            (V.Output (varN, varT)) -> Just $ V.Reg (varN, varT)) (V.ports mainModule)

   mportsNames = map (\x -> case x of V.Input (varN, _) -> varN
                                      V.Output (varN, _) -> varN)

   dataTransfered = [V.Reg ("data_transfered",V.Boolean),
                     V.Assign (V.Var "data_transfered") $ case Map.toList $ recursiveTys ctIn of
                                                            [] -> V.String "reseted"
                                                            x ->  foldr1 (\a b -> V.BinOp a (V.LogAnd) b) (map (\(a,b) -> V.String ("data_" ++ a ++ "_transfered")) x)
                    ]

   reset = [V.Assign (V.Var "reset") (V.UnaryOp (V.BitNot) (V.String ("aresetn")))]
   reseted = V.Reg ("reseted", V.Boolean)

   generateResultOutput :: V.Description -> V.Description
   generateResultOutput mod@(V.Module {}) = let
     resultSink@(t,chans) = fromMaybe (error $ "Sink for result not found in: " ++ show ctOut)
                    (find (\(k,v) -> any (\ch -> not ("_sink" `isSuffixOf` ch)) v) (Map.toList $ pointerTys ctOut) 
                    <|> find (\(k,v) -> any (\ch -> not ("_snk" `isSuffixOf` ch)) v) (Map.toList $ plainTys ctOut)) -- it cant be from recursive Tys
     resultSinkChan = fromMaybe (error $ "Sink channel not found for: " ++ show chans) $ find (\ch -> not ("_sink" `isSuffixOf` ch) && not ("_snk" `isSuffixOf` ch)) chans 
     ready = V.Assign (V.Var (resultSinkChan ++ "_rout")) (V.String "result_ready")
     totalBits = totalBitsOf tei t
     data' = V.AlwaysSequential (
       (V.ifThenElse 
       (V.BinOp (V.String "aresetn") V.Equal (V.Sized 1 0))
       (V.NonBlocking (V.Var "result_data") (V.Sized totalBits 0))
       (V.ifThen
        (V.BinOp (V.BitE (V.String $ resultSinkChan ++ "_dout") 0) V.Equal (V.Sized 1 1))
        (V.NonBlocking (V.Var "result_data") (V.String (resultSinkChan ++ "_dout")))
       )
       )
      )
     resultReady = (V.Input ("result_ready", V.Boolean))
     resultData =  (V.Output ("result_data", V.Named $ tconName t)) in
       mod {V.ports = V.ports mod ++ [resultReady, resultData], V.items = V.items mod ++ [ready, data'] }

   generateRecursiveInput :: V.Description -> V.Description
   generateRecursiveInput mod@(V.Module {}) = foldr ((generateRecursiveInputHelper 0) . (\(k,v) -> (k, sortBy (\a b -> compare
                                                                                                                            (last (T.splitOn (T.pack "_") (T.pack a)))
                                                                                                                            (last (T.splitOn (T.pack "_") (T.pack b))) ) v))) (mod) (Map.toList $ pointerTys ctIn) where
          generateRecursiveInputHelper i (tcon, []) mod = mod
          generateRecursiveInputHelper i (tcon, ch:chans) mod = let
            done = V.Reg (ch ++ "_done", V.Boolean)
            t = T.unpack $ last (T.splitOn (T.pack "Pointer_") (T.pack tcon))
            body = V.AlwaysSequential (
                V.ifThenElse
                  (V.BinOp (V.BinOp (V.String ("data_transfered")) V.Equal (V.Sized 1 1))
                                                                                    V.LogAnd (V.BinOp
                                                                                      (V.BinOp (V.String $ ch ++ "_r") V.Equal (V.Sized 1 0))
                                                                                      V.LogAnd
                                                                                      (V.BinOp (V.String $ ch ++ "_done") V.Equal (V.Sized 1 0))
                                                                                      ))
                  (V.NonBlocking (V.Var $ ch ++ "_d") (V.BitE (V.String $ "inputs_" ++ t) i))
                  (V.ifThenElse
                    (V.BinOp (V.BinOp (V.String ("data_transfered")) V.Equal (V.Sized 1 1))
                                                                                    V.LogAnd
                             (V.BinOp (V.String $ ch ++ "_r") V.Equal (V.Sized 1 1))
                    )
                    (V.SeqBlock [] [
                      V.NonBlocking (V.Bit (ch ++ "_d") 0) (V.Sized 1 0),
                      V.NonBlocking (V.Var (ch ++ "_done")) (V.Sized 1 1)
                    ])
                    (V.ifThenElse
                      (V.BinOp (V.String $ ch ++ "_done") V.Equal (V.Sized 1 1))
                      (V.SeqBlock [] [
                        V.NonBlocking (V.Bit (ch ++ "_d") 0) (V.Sized 1 0),
                        V.NonBlocking (V.Var (ch ++ "_done")) (V.Sized 1 1)
                      ])
                      (V.SeqBlock [] [
                        V.NonBlocking (V.Bit (ch ++ "_d") 0) (V.Sized 1 0),
                        V.NonBlocking (V.Var (ch ++ "_done")) (V.Sized 1 0)
                      ])

                    )

                  )
             )
            in
              generateRecursiveInputHelper (i + 1) (tcon, chans) (mod {V.items = V.items mod ++ [done, body] })




   generatePlainInput :: V.Description -> V.Description
   generatePlainInput mod@(V.Module {}) = foldr generatePlainInputHelper (mod) (Map.toList $ plainTys ctIn) where

          generatePlainInputHelper (tcon, []) mod = mod
          generatePlainInputHelper (tcon, ch:chans) mod = if "_src" `isSuffixOf` ch
                                                          then generatePlainInputHelper (tcon, chans) mod
                                                          else let
                                                            done = V.Reg (ch ++ "_done",V.Boolean)
                                                            body = V.AlwaysSequential (
                                                              V.ifThenElse (V.BinOp (V.String "aresetn") (V.Equal) (V.Sized 1 0))
                                                                           (V.SeqBlock [] [
                                                                             V.NonBlocking (V.Var (ch ++ "_done")) (V.Sized 1 0),
                                                                             if tcon == "Go" then V.NonBlocking (V.Var (ch ++ "_d")) (V.Sized 1 0)
                                                                             else V.NonBlocking (V.Bit (ch ++ "_d") 0) (V.Sized 1 0)
                                                                           ])
                                                                           (V.ifThenElse
                                                                            (V.BinOp (V.BinOp (V.String ("data_transfered")) V.Equal (V.Sized 1 1))
                                                                                    V.LogAnd (V.BinOp
                                                                                      (V.BinOp (V.String $ ch ++ "_r") V.Equal (V.Sized 1 0))
                                                                                      V.LogAnd
                                                                                      (V.BinOp (V.String $ ch ++ "_done") V.Equal (V.Sized 1 0))
                                                                                      )
                                                                            )
                                                                            (if tcon == "Go" then V.NonBlocking (V.Var (ch ++ "_d")) (V.Sized 1 1)
                                                                             else V.NonBlocking (V.Bit (ch ++ "_d") 0) (V.Sized 1 1))
                                                                            (V.ifThenElse
                                                                              (V.BinOp (V.BinOp (V.String $ "data_transfered") (V.Equal) (V.Sized 1 1))
                                                                                  V.LogAnd
                                                                                      (V.BinOp (V.String $ ch ++ "_r") V.Equal (V.Sized 1 1)))
                                                                              (V.SeqBlock [] [
                                                                                  if tcon == "Go" then V.NonBlocking (V.Var (ch ++ "_d")) (V.Sized 1 0)
                                                                                  else V.NonBlocking (V.Bit (ch ++ "_d") 0) (V.Sized 1 0),
                                                                                  V.NonBlocking (V.Var $ ch ++ "_done") (V.Sized 1 1)
                                                                              ])
                                                                              (V.ifThenElse
                                                                                (V.BinOp (V.String $ ch ++ "_done") V.Equal (V.Sized 1 1))
                                                                                (V.SeqBlock [] [
                                                                                  if tcon == "Go" then V.NonBlocking (V.Var (ch ++ "_d")) (V.Sized 1 0)
                                                                                  else V.NonBlocking (V.Bit (ch ++ "_d") 0) (V.Sized 1 0),
                                                                                  V.NonBlocking (V.Var $ ch ++ "_done") (V.Sized 1 1)
                                                                                ])
                                                                                (V.SeqBlock [] [
                                                                                  if tcon == "Go" then V.NonBlocking (V.Var (ch ++ "_d")) (V.Sized 1 0)
                                                                                  else V.NonBlocking (V.Bit (ch ++ "_d") 0) (V.Sized 1 0),
                                                                                  V.NonBlocking (V.Var $ ch ++ "_done") (V.Sized 1 0)
                                                                                ])
                                                                              )

                                                                            )

                                                                           )
                                                                           )
                                                                            in generatePlainInputHelper (tcon, chans) (mod {V.items = V.items mod ++ [done, body] })

   -- each recursive types is passed via type-specific memory writes, the number of arguments is the number of corresponding pointer-types inputs
   generateDataInput :: V.Description -> V.Description
   generateDataInput mod@(V.Module {}) = foldr generateDataInputHelper (mod) (Map.toList $ recursiveTys ctIn) where


          generateDataInputHelper (tcon, [channel]) mod =
              let
                  -- only trees are supported atm
                  isTree = (\x@(Tdef tcon' variants) -> all ((==) True . isTreeVariant) variants) inputTdef
                  isTreeVariant x@(Variant dcon tcons) = all (\y -> (not ("Pointer_" `isPrefixOf` y)) || (y == "Pointer_" ++ tcon)) tcons
                  inputTdef = fromJust $ find (\x -> case x of
                                            Tdef t' _ -> t' == tcon
                                            _ -> False) tdefs
                  inputDcons = (\x@(Tdef _ variants) -> variants) inputTdef

                  newPorts = [V.Input ("i_" ++ tcon ++ "_tdata", V.Named (tconName tcon)),
                              V.Input ("i_" ++ tcon ++ "_tlast", V.Boolean),
                              V.Input ("i_" ++ tcon ++ "_tvalid", V.Boolean),
                              V.Output ("i_" ++ tcon ++ "_tready", V.Boolean)]

                  goMap = case Map.lookup "Go" (plainTys ctIn) of
                    Just x -> x
                    Nothing -> error "Go input not found"
                  goSource = case find (\x -> ("\\" ++ tcon) `isPrefixOf` x) goMap of
                    Just x -> x
                    Nothing -> error $ "Source for " ++ tcon ++ "not found"
                  done = V.Reg (goSource ++ "_done", V.Boolean)

                  forkOut'@(_, channels) = case find (\x@(ty, channels) -> case (find (\x -> (tcon ++ "_snk") `isSuffixOf` x) channels) of
                                                              Just _ -> True
                                                              Nothing -> False) (Map.toList $ plainTys ctOut) of
                                            Just x -> x
                                            Nothing -> error $ "Sink channel for " ++ tcon ++ "not found"
                  forkOutChannel = case find (\x -> (tcon ++ "_snk") `isSuffixOf` x) channels of
                                          Just x -> x
                                          Nothing -> error $ "forkOutChannel for " ++ tcon ++ " not found"

                  inputs = fromJust $ Map.lookup ("Pointer_" ++ tcon) (pointerTys ctIn)
                  inputsSize = toInteger $ length inputs
                  encodingSize = toInteger $ (logEncodingBits . fromInteger $ inputsSize) + 1

                  isRecursive x = "Pointer_" `isPrefixOf` x
                  tagBitsNumber = tagBitsOf tei tcon
                  totalBits = totalBitsOf tei tcon

                  caseItemForDcon valid cont dcon@(Variant d tcons) = let tagValue@(V.Literal v) = tagVal tei d
                                                                          expr =  V.String ("i_" ++ tcon ++ "_tdata") in
                                                           if any isRecursive tcons then
                                                             let slices = fieldExprs tei d expr
                                                                 createArg (a, n) (t, s) = if isRecursive t
                                                                   then
                                                                    (a ++ [dconExpr tei t [V.Sized 1 0, V.LValue (V.Element ("stack_" ++ tcon) (V.BinOp (V.String $ "stack_" ++ tcon ++ "_ptr") (V.Minus) (V.Literal n)))]], n + 1)
                                                                   else (a ++ [fromMaybe (error "Nothing unexpected") s],n)
                                                                 (args, n') = foldl createArg ([],2) (zip tcons slices) in -- 2 because first pointer is at stack_ptr - 2
                                                             V.CaseItem
                                                                  (V.Sized tagBitsNumber v)
                                                                  (V.SeqBlock [] (V.NonBlocking (V.Var (channel ++ "_d")) (dconExpr tei d ((V.Sized 1 valid) : args)) : cont (n' - 2)))
                                                           else V.CaseItem
                                                                      (V.Sized tagBitsNumber v)
                                                                      (V.NonBlocking (V.Var (channel ++ "_d")) (V.Concat [V.SliceE expr totalBits 1, V.Sized 1 valid]))

                  caseExprValidReady = V.Case (tagExpr tei (V.String ("i_" ++ tcon ++ "_tdata")) (tcon)) (map (caseItemForDcon 0 contValidReady) inputDcons)
                  caseExprValidNotReady = V.Case (tagExpr tei (V.String ("i_" ++ tcon ++ "_tdata")) (tcon)) (map (caseItemForDcon 1 (const [])) inputDcons)

                  contValidReady offset = [V.NonBlocking
                                                 (V.Var $ "stack_" ++ tcon ++ "_ptr")
                                                 (V.BinOp (V.String $ "stack_" ++ tcon ++ "_ptr") (V.Minus) (V.Literal (offset))),
                                           V.NonBlocking
                                                 (V.Element ("stack_" ++ tcon) (V.BinOp (V.String $ "stack_" ++ tcon ++ "_ptr") (V.Minus) (V.Literal $ offset + 1)))
                                                 (V.LValue $ V.Element ("stack_" ++ tcon) (V.BinOp (V.String $ "stack_" ++ tcon ++ "_ptr") (V.Minus) (V.Literal $ 1)))
                                          ]



                  items = [V.AlwaysSequential (
                      V.ifThenElse
                          (V.BinOp (V.String "aresetn") V.Equal (V.Sized 1 0))
                          (V.SeqBlock [] [V.NonBlocking (V.Var (channel ++ "_sink_rout")) (V.Sized 1 1),
                                          V.NonBlocking (V.Var (goSource ++ "_d")) (V.Sized 1 0),
                                          V.NonBlocking (V.Var (goSource ++ "_done")) (V.Sized 1 0),
                                          V.NonBlocking (V.Var (forkOutChannel ++ "_rout")) (V.Sized 1 1)])
                          (V.ifThenElse
                            (V.BinOp (V.String "reseted") V.Equal (V.Sized 1 1))
                            (V.ifThenElse
                              (V.BinOp (V.BinOp (V.String (goSource ++ "_done")) V.Equal (V.Sized 1 0))
                                          V.LogAnd
                                       (V.BinOp (V.String (goSource ++ "_r")) V.Equal (V.Sized 1 0)))

                              (V.NonBlocking (V.Var (goSource ++ "_d")) (V.Sized 1 1))
                              (V.ifThenElse

                                (V.BinOp (V.BinOp (V.String (goSource ++ "_r")) V.Equal (V.Sized 1 1))
                                          V.LogAnd
                                       (V.BinOp (V.String (goSource ++ "_done")) V.Equal (V.Sized 1 0)))

                                (V.SeqBlock [] [
                                          V.NonBlocking (V.Var (goSource ++ "_done")) (V.Sized 1 1),
                                          V.NonBlocking (V.Var (goSource ++ "_d")) (V.Sized 1 0)])
                                (V.NonBlocking (V.Var (goSource ++ "_d")) (V.Sized 1 0))

                              )
                            )
                            (V.Null)
                          )),
                          V.Assign (V.Var ("i_" ++ tcon ++ "_tready")) (V.String (channel ++ "_r")),
                          V.Reg ("data_" ++ tcon ++ "_transfered", V.Boolean),
                          V.Reg ("stack_" ++ tcon, V.Array (V.Named $ "Pointer_" ++ tcon ++"_t") 256),
                          V.Reg ("inputs_" ++ tcon, V.Array (V.Named $ "Pointer_" ++ tcon ++"_t") inputsSize),

                          V.Reg ("inputs_" ++ tcon ++ "_ptr", V.Unsigned (fromInteger encodingSize + 1)),
                          V.Reg ("stack_" ++ tcon ++ "_ptr", V.Unsigned 8),

                          V.AlwaysSequential (
                            V.ifThenElse
                              (V.BinOp (V.String "aresetn") V.Equal (V.Sized 1 0))
                              (V.SeqBlock [] [V.NonBlocking (V.Var ("data_" ++ tcon ++ "_transfered")) (V.Sized 1 0),
                                          V.NonBlocking (V.Bit (channel ++ "_d") 0) (V.Sized 1 0),
                                          V.NonBlocking (V.Var ("stack_" ++ tcon ++ "_ptr")) (V.Sized 8 0),
                                          V.NonBlocking (V.Var ("inputs_" ++ tcon ++ "_ptr")) (V.Sized (fromInteger encodingSize + 1) 0)])
                              (V.ifThenElse
                                (V.BinOp (V.String $ "data_" ++ tcon ++ "_transfered") V.Equal (V.Sized 1 1))
                                (V.NonBlocking (V.Bit (channel ++ "_d") 0) (V.Sized 1 0))
                                (V.ifThenElse
                                  (V.BinOp (V.String (goSource ++ "_done")) V.Equal (V.Sized 1 1))
                                  (V.ifThen
                                    (V.BinOp (V.BitE (V.String $ forkOutChannel ++ "_dout") 0) V.Equal (V.Sized 1 1))
                                    (V.SeqBlock [] [
                                      V.NonBlocking (V.Element ("stack_" ++ tcon) (V.String $ "stack_" ++ tcon ++ "_ptr")) (V.String $ forkOutChannel ++ "_dout"),
                                      V.NonBlocking (V.Var ("stack_" ++ tcon ++ "_ptr")) (V.BinOp (V.String $ ("stack_" ++ tcon ++ "_ptr")) V.Plus (V.Sized 8 1))
                                    ])
                                  )
                                  (V.ifThenElse
                                    (V.BinOp (V.BinOp (V.String ("i_" ++ tcon ++ "_tvalid")) (V.Equal) (V.Sized 1 1))
                                              (V.LogAnd)
                                             (V.BinOp (V.String ("i_" ++ tcon ++ "_tready")) (V.Equal) (V.Sized 1 1)))
                                    (V.SeqBlock [] [V.ifThen
                                      (V.BinOp (V.String ("i_" ++ tcon ++ "_tlast")) (V.Equal) (V.Sized 1 1))
                                      (V.SeqBlock [] [
                                        V.ifThen
                                        (V.BinOp (V.String ("inputs_" ++ tcon ++ "_ptr")) (V.Equal) (V.Sized (fromInteger encodingSize + 1) (inputsSize - 1)))
                                        (V.NonBlocking (V.Var ("data_" ++ tcon ++ "_transfered")) (V.Sized 1 1)),
                                        V.NonBlocking (V.Var ("inputs_" ++ tcon ++ "_ptr")) (V.BinOp (V.String $ ("inputs_" ++ tcon ++ "_ptr")) (V.Plus) (V.Sized (fromInteger encodingSize) 1)),
                                        V.NonBlocking (V.Element ("inputs_" ++ tcon) (V.String $ "inputs_" ++ tcon ++ "_ptr")) (V.LValue $ V.Element ("stack_" ++ tcon) (V.BinOp (V.String ("stack_" ++ tcon ++ "_ptr")) (V.Minus) (V.Sized 8 1)) )
                                        ]
                                      ),
                                      caseExprValidReady
                                    ]
                                  )
                                  (V.ifThenElse
                                    (V.BinOp (V.BinOp (V.String ("i_" ++ tcon ++ "_tvalid")) (V.Equal) (V.Sized 1 1))
                                              (V.LogAnd)
                                             (V.BinOp (V.String ("i_" ++ tcon ++ "_tready")) (V.Equal) (V.Sized 1 0)))
                                    (caseExprValidNotReady)
                                    (V.Null)
                                  )
                              )
                          )
                           )
                          ),
                          V.AlwaysSequential (
                            V.ifThenElse
                            (V.BinOp (V.String "aresetn") (V.Equal) (V.Sized 1 0))
                            (V.NonBlocking (V.Var "reseted") (V.Sized 1 1))
                            (V.Null)
                          )

                          ]
                   in
                    -- trace (concatMap (render . V.pp . fromJust) $ fieldExprs tei ((dconsOf tei tcon) !! 0) (V.String "blah")) $ mod {V.items = items ++ V.items mod, V.ports = newPorts ++ V.ports mod}
                    trace ("isTree: " ++ show (totalBitsOf tei tcon)) $ mod {V.items = V.items mod ++ (done : items), V.ports = V.ports mod ++ newPorts}
          generateDataInputHelper (tcon, channels) _ = error $ "Only one input should be per each recursive type, but: " ++ tcon ++ " " ++ show channels ++ " found"



   isPointer :: Tcon -> Bool
   isPointer t = "Pointer_" `isPrefixOf` t

   isRecursive :: Tcon -> Bool
   isRecursive t = 
                let tdef = find (\tdef -> case tdef of
                                    Tdef tcon variants -> (tcon == t)
                                    _ -> False) tdefs
                    isRec = case tdef of 
                                Just t'@(Tdef tcon variants) -> any (\x@(Variant dcon tcons) -> case find (\x -> x == ("Pointer_" ++ t)) tcons
                                              of Nothing -> False
                                                 _ -> True) variants
                                _ -> False in
                 isRec

   groupBy :: [(Channel, Tcon)] -> ClusteredTys
   groupBy snodes = foldr helper (ClusteredTys{recursiveTys=Map.empty, mainGo = Nothing, pointerTys=Map.empty, plainTys=Map.empty}) snodes where

      helper snode (grouper) = case snode of
                            (chan, ty) -> if isPointer ty then case Map.lookup ty (pointerTys grouper) of
                                                                    Just xs -> grouper {pointerTys = Map.insert ty (chan : xs) $ pointerTys grouper}
                                                                    Nothing -> grouper {pointerTys = Map.insert ty [chan] $ pointerTys grouper}
                                          else if (isRecursive ty) then case Map.lookup ty (recursiveTys grouper) of
                                                                    Just xs -> grouper {recursiveTys = Map.insert ty (chan : xs) $ recursiveTys grouper}
                                                                    Nothing -> grouper {recursiveTys = Map.insert ty [chan] $ recursiveTys grouper}
                                                else case Map.lookup ty (plainTys grouper) of
                                                                    Just xs -> grouper {plainTys = Map.insert ty (chan : xs) $ plainTys grouper}
                                                                    Nothing -> grouper {plainTys = Map.insert ty [chan] $ plainTys grouper}

   -- Extract the name and type of a source
   sourceInst :: SNode -> Maybe (Channel, Tcon)
   sourceInst (SNode "source" _ [] [Bind c t]) = Just (c, t)
   sourceInst _ = Nothing

   -- Extract port names and object type for read operations
   readInst :: SNode -> Maybe (Channel, Channel, Tcon)
   readInst (SNode "read" _ [Bind c1 _] [Bind c2 objTy]) = Just (c1,c2,objTy)
   readInst _ = Nothing

   -- Extract port names and object type for write operations
   writeInst :: SNode -> Maybe (Channel, Channel, Tcon)
   writeInst (SNode "write" _ [Bind c1 objTy] [Bind c2 _]) = Just (c1,c2,objTy)
   writeInst _ = Nothing

   -- Extract the name and type of a read requst and result
   readSourceInst :: SNode -> Maybe ((Channel, Tcon), (Channel, Tcon))
   readSourceInst (SNode "read" _ [Bind c1 t1] [Bind c2 t2]) =
                      Just ((c1, t1), (c2,t2))
   readSourceInst _ = Nothing

   -- Extract the name and type of a read requst and result
   writeSourceInst :: SNode -> Maybe ((Channel, Tcon), (Channel, Tcon))
   writeSourceInst (SNode "write" _ [Bind c1 t1] [Bind c2 t2]) =
                      Just ((c1, t1), (c2,t2))
   writeSourceInst _ = Nothing

   -- Return Verilog port information for a source
   inputPort :: (Channel, Tcon) -> [V.Port]
   inputPort (c, t) = [ V.Input (datac c, vTypeOf t)
                      , V.Output (ready c, V.Boolean) ]

   -- Extract the name and type of a tap
   tapInst :: SNode -> Maybe (Channel, Tcon)
   tapInst (SNode "tap" _ [Bind c t] []) = Just (c, t)
   tapInst _ = Nothing

   -- Return Verilog port information for a tap
   tapPort :: (Channel, Tcon) -> [V.Port]
   tapPort (c, t) = [ V.Output (c ++ "_dout", vTypeOf t)
                    , V.Output (c ++ "_rout", V.Boolean) ]

   -- Extract the name and type of a sink
   sinkInst :: SNode -> Maybe (Channel, Tcon)
   sinkInst (SNode "sink" _ [Bind c t] []) = Just (c, t)
   sinkInst _ = Nothing

   -- Return Verilog port information for a sink
   outputPort :: (Channel, Tcon) -> [V.Port]
   outputPort (c, t) = [ V.Output (c ++ "_dout", vTypeOf t)
                       , V.Input (c ++ "_rout", V.Boolean) ]

   -- Generate a Type dictionary to be printed as a comment in our Verilator
   -- testbench.
   typeDict :: V.Item
   typeDict = V.Comment $ "TYPE_START\n" ++ typeLines ++
                          (if null typeLines then "" else "\n") ++ "TYPE_END"
    where
      typeLines = intercalate "\n" $ mapMaybe getTypesInfo (tconInfo tei)
      getTypesInfo (tc,_) =
        let ptrSize = ptrWidth tei tc
        in fmap (mkTypeLine tc)  ptrSize
      mkTypeLine tc pSize = unwords [verilatify tc,
                        show pSize,
                        show (tagBitsOf tei tc),
                        unwords (map showTup $ variantTuples tei tc) ]
      showTup (size,fields) = '(' : show size ++ ",[" ++ shownFields ++ "]" ++ ")"
        where
          shownFields = intercalate "," $ map showField fields
      showField (size,isPtr) = show size ++ if isPtr then "p" else ""

   -- Return an oddly formatted comment meant to be passed along to
   -- our m4-based testbench generator: a list of port names and word widths
   testbenchPorts :: String -> [(Channel, Tcon)] -> V.Item
   testbenchPorts io ports = V.Comment $ "--define=" ++ io ++ "=(" ++
                             intercalate  ", " (map getInfo ports) ++ ")"
       where
         getInfo (c, tc) = "(" ++ verilatify c ++ ", " ++ show bits ++ ", " ++
                           show range ++ ", " ++ verilatify tc ++ ")"
             where
               bits = totalBitsOf tei tc
               tagbits = tagBitsOf tei tc
               range = if bits == tagbits then
                           1 + largestTag tei tc
                       else
                           1 `shift` bits

   -- Return comments for read and write porst
   dictPorts :: String -> [(Channel, Channel, Tcon)] -> V.Item
   dictPorts _ [] = V.Comment ""
   dictPorts io ports = V.Comment $ io ++ "=" ++
                        intercalate ";" (map getInfo ports) ++ ""
    where
      getInfo (c1, c2, ty) = "(" ++ verilatify c1 ++ "," ++ verilatify c2 ++ ","
                              ++ verilatify ty ++ ")"

   inputChannels :: SNode -> [Chan]
   inputChannels (SNode "source" _ _ _) = []
   inputChannels (SNode "read" _ _ _) = []
   inputChannels (SNode "write" _ _ _) = []
   inputChannels (SNode _ _ _ c) = c

   channelDecl :: Chan -> [V.Item]
   channelDecl (Group c) = concatMap channelDecl c
   -- Set the ready signal of a wildcard port (whose name starts with _)
   -- to true to make it behave as an always-willing sink
   channelDecl (Bind c@('_':_) t) = [V.Reg (datac c, vTypeOf t)
                                    ,V.Reg (ready c, V.Boolean)
                                    ,V.Assign (V.Var $ ready c) (V.Sized 1 1)]
   channelDecl (Bind c t) = [V.Reg (datac c, vTypeOf t)
                            ,V.Reg (ready c, V.Boolean) ]

   -- Construct items for a node instance
   synthesize :: SNode -> [V.Item]

   -- Source nodes are just input ports
   -- SIGNATURE source a : > a ;
   synthesize (SNode "source" _ _ _) = []

   -- A sink node connects its input the the output port,
   -- avoiding the danger of name collisions between input and output ports
   -- SIGNATURE sink a : a > ;
   synthesize (SNode "sink" [_] [Bind c _] []) =
       [V.Assign (V.LConcat [ V.Var (ready c)
                           , V.Var (c ++ "_dout") ])
            (V.Concat [ vexpr (c ++ "_rout"), datae c ])]

   synthesize (SNode "read" _ [Bind c _] _) =
       [V.Assign (V.LConcat [ V.Var (ready c)
                           , V.Var (c ++ "_dout") ])
            (V.Concat [ vexpr (c ++ "_rout"), datae c ])]

   synthesize (SNode "write" _ [Bind c _] _) =
       [V.Assign (V.LConcat [ V.Var (ready c)
                           , V.Var (c ++ "_dout") ])
            (V.Concat [ vexpr (c ++ "_rout"), datae c ])]
   -- A tap node provides external visibility into a channel for debugging
   -- purposes.  It exports both the data/valid vector and ready signal out
   -- as outputs.
   -- SIGNATURE tap a : a > ;
   synthesize (SNode "tap" [_] [Bind c _] []) =
       [V.Assign (V.LConcat [ V.Var (c ++ "_rout")
                            , V.Var (c ++ "_dout") ])
            (V.Concat [ readye c, datae c ])]

   -- A big_add node adds any number of inputs of the same size into a single output in
   -- a single cycle. This can be used as an alternative to the merge node for collecting
   -- multiple outputs, since a merge takes at least n cycles to merge n inputs
   -- arriving simultaneously. 
   synthesize (SNode "big_add" [STyArg inTy,_] [Group inputBinds]
                                               [Bind out _]) =
      [datapathAssign, readyAssign]
     where
       datapathAssign = V.Assign (V.Var $ datac out )
                                 (V.Concat [V.Sized 16 0, result, andValids ])
       readyAssign = V.Assign (V.LConcat $ map (V.Var . ready) inNames)
                              (V.Repeat (length inNames)
                                [V.BinOp (readye out) V.LogAnd (valide out)])
       andValids = foldr1 vand $ map valide inNames
       result    = foldr makeOp (V.SliceE (datae $ head inNames) valueBits 1)
                                (tail inNames)
       makeOp name = V.BinOp (V.SliceE (datae name) valueBits 1) V.Plus

       inNames = chanNames inputBinds
       valueBits = totalBitsOf tei inTy

   -- Binary operator nodes: turn into Verilog binary operators
   -- SIGNATURE op_add  a : a a > a ;
   -- SIGNATURE op_sub  a : a a > a ;
   -- SIGNATURE op_mul  a : a a > a ;
   -- SIGNATURE op_div  a : a a > a ;
   -- SIGNATURE op_and  a : a a > a ;
   -- SIGNATURE op_or   a : a a > a ;
   -- SIGNATURE op_eq   a : a a > Bool ;
   -- SIGNATURE op_lt   a : a a > Bool ;
   -- SIGNATURE op_gt   a : a a > Bool ;
   -- SIGNATURE op_lteq a : a a > Bool ;
   -- SIGNATURE op_gteq a : a a > Bool ;

   synthesize (SNode ('o' : 'p' : '_' : opname) [_] [Bind in1 typ, Bind in2 _]
                     [Bind out _]) =
       binaryOperatorNode verilogOperator bits in1 in2 out
     where
       bits = totalBitsOf tei typ
       verilogOperator = case opname of "add" -> V.Plus
                                        "sub" -> V.Minus
                                        "mul" -> V.Times
                                        "div" -> V.Divide
                                        "and" -> V.BitAnd
                                        "or" -> V.BitOr
                                        "eq" -> V.Equal
                                        "lt" -> V.LessThan
                                        "gt" -> V.GreaterThan
                                        "lteq" -> V.LessEqual
                                        "gteq" -> V.GreaterEqual
                                        _ -> error $ "unrecognized op_" ++ opname

   -- Buffer on the datapath; combinational ready path
   -- The "output buffer" of the MEMOCODE 2015 paper
   -- SIGNATURE dbuf a : a > a ;
   synthesize (SNode "dbuf" [_] [Bind input typ] [Bind output _]) =
       dbuf input output (invalidExpr tei typ)

   -- Buffer on the datapath with an initial token; combinational ready path
   -- SIGNATURE initbuf a (b : (dcon a)) : a > a ;
   -- TODO: Currently only supports enumeration types
   synthesize (SNode "initbuf" [_, SDconArg dc]
                     [Bind input _] [Bind output _]) =
     dbuf input output $ dconExpr tei dc [V.Sized 1 1]

   -- Buffer on the datapath with an initial integer token; combinational ready
   -- SIGNATURE initibuf a (b:a) : a > a
   synthesize (SNode "initibuf" [_, SLitArg i]
                     [Bind input typ] [Bind output _]) =
     dbuf input output $ V.Concat [ V.Sized (totalBitsOf tei typ) (toInteger i)
                                  , V.Sized 1 1]

   -- Buffer on the ready path + spill buffer
   -- The "input buffer" of the MEMOCODE 2015 paper
   -- SIGNATURE rbuf a : a > a ;
   synthesize (SNode "rbuf" [_] [Bind input typ] [Bind output _]) =
         [ V.Reg (buf, vTypeOf typ)
           -- Clear buffer
        --  , V.Initial bufData $ invalidExpr tei typ
           -- Input ready when buffer empty
         , V.Assign (V.Var $ ready input) $ vnot bufValid
           -- Pass along the input when it will be consumed or the buffer
         , V.Assign (V.Var $ datac output) $
                V.Conditional bufValid (V.LValue bufData) (datae input)
           -- Empty the buffer when the output is ready
           -- Fill the buffer when it's empty and the output isn't ready
         , V.AlwaysSequential $
                V.ifThenElse
                 (V.BinOp (V.String V.resetName) V.Equal (V.Sized 1 1))

                    (V.NonBlocking bufData $ invalidExpr tei typ)

                    (V.IfElse
                    [ ( readye output `vand` bufValid
                    , V.NonBlocking bufData $ invalidExpr tei typ)
                    , ( vnot (readye output) `vand` vnot bufValid
                    , V.NonBlocking bufData $ datae input)
                    ] Nothing)
         ]
       where
         buf = input ++ "_buf"
         bufData = V.Var buf
         bufValid = V.LValue $ V.Bit buf 0

   -- Latency-insensitive relay station: output buffer followed by input
   -- SIGNATURE buf a : a > a ;
   synthesize (SNode "buf" [t1] [Bind input typ] [Bind output t2]) =
       channelDecl (Bind ichannel typ) ++
       synthesize (SNode "dbuf" [t1] [Bind input typ] [Bind ichannel t2]) ++
       synthesize (SNode "rbuf" [t1] [Bind ichannel typ] [Bind output t2])
     where
       ichannel = input ++ "_bufchan"

   -- Stateful fork, which remembers which outputs it has emitted
   -- SIGNATURE fork a : a > a+ ;
   synthesize (SNode "fork" [_] [Bind input typ] [Group outputBinds]) =
       synthesizeMultiOutputs input (V.Var $ ready input) (valide input) $
         zip (repeat payloadExpr) (chanNames outputBinds)
    where
     bits = totalBitsOf tei typ
     payloadExpr = if bits >= 1 then
          Just $ V.LValue $ V.Slice (datac input) bits 1
       else
          Nothing

   -- N-input multiplexer
   -- SIGNATURE mux a b : a b^(variants a) > b;

   -- Degenerate single-input case
   synthesize (SNode "mux" _ [Bind select _, Group [Bind input _]]
                     [Bind output dType]) =
      synthesizeGate select input output dType

   synthesize (SNode "mux" _ [Bind select sType , Group inputBinds]
                                  [Bind output dType]) =
     [ V.Reg (muxed, V.Unsigned $ toInteger $ (dataBits + 1))
     , V.Reg (onehot, V.Unsigned $ toInteger numInputs)
       -- Route the data according to the select and remember the choice
     , V.AlwaysCombinational $ V.Case (V.SliceE (datae select) selectBits 1) $
                            zipWith selection inputs [0..] ++
                              [V.Default $ assignSelected $
                                V.Concat [ V.Sized numInputs 0
                                         , invalidExpr tei dType]]
      -- AND the data's valid bit with select's valid
     , V.Assign (V.Var $ datac output) $
                if dataBits > 0 then
                    V.Concat [ V.LValue $ V.Slice muxed dataBits 1
                             , bothValid ]
                else bothValid
       -- Select is ready when the output is valid and ready
     , V.Assign (V.Var $ ready select) $ valide output `vand` readye output
       -- Send ready to the input if the select is ready
     , V.Assign (V.LConcat $ reverse $ map (V.Var . ready) inputs) $
                V.Conditional (readye select)
                     (V.LValue $ V.Var onehot)
                     (V.Sized numInputs 0)
     ]
        where
          inputs = chanNames inputBinds
          numInputs = length inputs
          muxed = output ++ "_mux"
          onehot = output ++ "_onehot"
          dataBits = totalBitsOf tei dType
          selectBits = tagBitsOf tei sType
          assignSelected =
             V.Blocking (V.LConcat [V.Var onehot, V.Var muxed])

          bothValid = (V.LValue $ V.Bit muxed 0) `vand` valide select

          selection :: Channel -> Integer -> V.CaseItem
          selection inp index =
              V.CaseItem (V.Sized selectBits index) $ assignSelected $
               V.Concat [ V.Sized numInputs (1 `shift` fromInteger index)
                        , datae inp ]

   -- N-output demultiplexer
   -- SIGNATURE demux s d : s d > d^(variants s) ;
   -- The d input is routed to the output whose variant matches the
   -- the variant passed in s.  Only the tag of a is used; any payload is
   -- ignored

   -- Unary demux: consume both; pass the input
   synthesize (SNode "demux" _ [Bind select _, Bind input dType]
                     [Group [Bind chan _]]) =
      synthesizeGate select input chan dType

   synthesize (SNode "demux" _ [Bind select sType, Bind input dType]
                     [Group outputBinds]) =
--      (if dataBits >= 1 then
--         map (\c -> V.Assign (V.Slice (datac c) dataBits 1) 
--                    (V.SliceE (datae input) dataBits 1)) outputs
--      else []) ++
      [ V.Reg (onehot, V.Unsigned $ toInteger numOutputs)
        -- one-hot decoder with enable
      , V.AlwaysCombinational $
          V.ifThenElse (valide select `vand` valide input)
               (V.Case (V.SliceE (datae select) tagBits 1) $
                 map selected [0..(numOutputs - 1)] ++
                   [V.Default $ assignOneHot (V.Sized numOutputs 0)])
               (assignOneHot (V.Sized numOutputs 0))
      ] ++
      zipWith (\out n -> V.Assign (V.Var $ datac out)
                           (let onehotbit = V.LValue $ V.Bit onehot n in
                            if dataBits >= 1 then
                              V.Concat [V.SliceE (datae input) dataBits 1
                                       , onehotbit]
                            else  onehotbit))
                outputs [0..] ++
      [ -- AND the valids with the readies and OR them for get upstream readys
        V.Assign (V.Var $ ready input) $ V.UnaryOp V.ReductionOr $
                     (V.LValue $ V.Var onehot) `vbitand`
                     (V.Concat $ reverse $ map readye outputs)
      , V.Assign (V.Var $ ready select) $ readye input
      ]
    where
      outputs = chanNames outputBinds
      numOutputs = length outputs
      dataBits = totalBitsOf tei dType
      tagBits = tagBitsOf tei sType
      onehot = input ++ "_onehotd"
      assignOneHot = V.Blocking (V.Var onehot)

      selected :: Int -> V.CaseItem
      selected index = V.CaseItem (V.Sized tagBits (toInteger index)) $
                       assignOneHot $ V.Sized numOutputs (1 `shift` index)

{-
Doesn't work because Verilator refuses to pick apart the decoder for the
valids and the read pathway: reports a cycle.

      (if dataBits >= 1 then
         map (\c -> V.Assign (V.Slice (datac c) dataBits 1) 
                    (V.SliceE (datae input) dataBits 1)) outputs
      else []) ++
      [ V.Reg (valids, V.Unsigned (numOutputs + 1))
        -- one-hot decoder with enable
      , V.AlwaysCombinational $
          V.ifThenElse (valide select `vand` valide input)
               (V.Case (V.SliceE (datae select) tagBits 1) $
                 zipWith selected outputs [0..] ++
                         [V.Default $ assignValids $
                           V.Concat [V.Unknown numOutputs, V.Sized 1 0]])
               (assignValids (V.Sized (numOutputs + 1) 0))
        -- Valid bits are the upper bits from the decoder
      , V.Assign (V.LConcat $ reverse $ map valid outputs) $
                 V.LValue $ V.Slice valids numOutputs 1
        -- Readys are the LSB from the decoder
      , V.Assign (V.LConcat [(V.Var $ ready input)
                            ,(V.Var $ ready select)])
                 (V.Repeat 2 [V.LValue $ V.Bit valids 0 ])
      ]
    where
      outputs = chanNames outputBinds
      numOutputs = length outputs
      dataBits = totalBitsOf tei dType
      tagBits = tagBitsOf tei sType
      valids = input ++ "_valids"
      assignValids = V.Blocking (V.Var valids)

      selected chan index =
          V.CaseItem (V.Sized tagBits (toInteger index)) $
            assignValids $ V.Concat [ V.Sized numOutputs (1 `shift` index)
                                    , readye chan]
-}

   -- N-input nondetermistic merge
   -- SIGNATURE merge a : a+ > a ;
   --
   -- An earlier version combined the datapath with the ready logic,
   -- which Verilator was reporting as a cycle. Splitting this into two
   -- always_comb blocks solved the problem
   --
   -- But this version also didn't work because of the possibility of
   -- a fork, say, "peeking" and the valid output but not consuming it
   -- and another token arriving on another input and being selected instead.

{-
  A two-input merge:

  logic [1:0] out_selected; // Combinational: what will be selected
  logic [1:0] out_select;   // Sequential: what, if anything, has been selected
  initial out_select = 2'd0;  // Nothing already selected
  always_comb
    begin
      out_selected = 2'd0;    // Nothing by default
      if ((| out_select)) out_selected = out_select; // Remember what has been
      else
        if (c0_d[0]) out_selected[0] = 1'd1;      // Otherwise, priority encode
        else if (c1_d[0]) out_selected[1] = 1'd1;
    end

  always_ff @(posedge clk)
    out_select <= (out_r ? 2'd0 : out_selected);  // Remember unless consumed

  always_comb  // Combinational datapath: pass selected output
    if (out_selected[0]) out_d = c0_d;
    else if (out_selected[1]) out_d = c1_d;
    else out_d = {{8{1'bx}}, 1'd0};
  assign {c1_r, c0_r} = (out_r ? out_selected : 2'd0); // Consume selected

-}

   synthesize (SNode "merge" _ [Group inputBinds] [Bind output typ]) =
       [ selectedDecl
       , selectDecl
    --    , selectInit
       , priorityEncoder
       , selectUpdate
       , datapath
       , readypath ]
     where
       inputs = chanNames inputBinds
       numInputs = length inputs

       none = V.Sized numInputs 0

       -- Vector indicating which input is selected in this cycle, if any
       -- Invariant: this should always be one-hot or all-zeros
       selected_name = output ++ "_selected"
       selected = V.Var selected_name
       selectedDecl = V.Reg (selected_name, V.Unsigned $ toInteger numInputs)

       -- Vector: which input was selected when the output wasn't ready
       -- This comes from a flip-flop
       select_name = output ++ "_select"
       select = V.Var select_name
       selectDecl = V.Reg (select_name, V.Unsigned $ toInteger numInputs)
    --    selectInit = V.Initial select none

       -- Priority encoder: take last selected or choose a valid input
       priorityEncoder = V.AlwaysCombinational $ V.SeqBlock []
                      [ V.Blocking selected none
                      , V.ifThenElse
                          (V.UnaryOp V.ReductionOr $ V.LValue select)
                            (V.Blocking selected (V.LValue select))
                            (V.IfElse (zipWith inputValid inputs [0..])
                                       Nothing)
                      ]
       inputValid inp index = (valide inp,
                  V.Blocking (V.Bit selected_name index) (V.Sized 1 1))

       -- Next value of select: clear if output ready, otherwise hold selected
       selectUpdate = V.AlwaysSequential $
                V.ifThenElse
                    (V.BinOp (V.String V.resetName) V.Equal (V.Sized 1 1))

                        (V.NonBlocking select none)

                        (V.NonBlocking select $
                            V.Conditional (readye output) none (V.LValue selected))

       -- TODO: both datapath and ready could probably be a case statement
       -- since the selected bits are mutually exclusive 

       -- Datapath: copy the selected input to the output
       datapath = V.AlwaysCombinational $
          V.IfElse (zipWith inputData inputs [0..]) (Just invalidOutput)
       invalidOutput = V.Blocking (V.Var $ datac output) $ invalidExpr tei typ
       inputData inp index = (V.LValue $ V.Bit selected_name index,
                        V.Blocking (V.Var $ datac output) (datae inp))

       -- Ready computation: mark the selected input ready if the output
       -- is ready
       readypath = V.Assign (V.LConcat (map (V.Var . ready) (reverse inputs))) $
                   V.Conditional (readye output) (V.LValue selected) none

   -- N-input nondeterministic merge that reports the choice taken;
   -- the inverse of a demux.
   -- SIGNATURE mergectrl s d : d^(variants s) > s d ;
   -- s is an enumerated type (i.e., no data constructor has fields)
   --  representing which choice was taken;
   -- d is the data
   --
   --  i0 -------+   +------s---
   --  i1 --- [mergectl] ---d---
   --  i2 -------+
   --
   -- Like the fork, this assumes that valid data, once presented on one of
   -- the inputs, is held unchanged until it is consumed because when
   -- the arbitration choice is made, it is possible neither output is
   -- ready.

   synthesize (SNode "mergectrl" [_,_] [Group inputBinds]
                     [Bind selectChan sType, Bind output dType]) =
      priorityEncoder ++
      selectState ++
      emitState ++
      emitComb ++
      doneComb ++
      [ readyLogic
      , datapath
      , selectpath ]
    where
      inputs = chanNames inputBinds
      nodeName:_ = inputs
      numInputs = length inputs
      noneSelected = V.Sized numInputs 0

      (priorityEncoder, select_d) =
          combAssign (nodeName ++ "_select_d", V.Unsigned $ toInteger numInputs) $
                     V.Conditional (V.UnaryOp V.ReductionOr select_q) select_q $
                      prioritize inputs 1
         where
           prioritize [] _ = noneSelected
           prioritize (c:t) v = V.Conditional (valide c) (V.Sized numInputs v) $
                                prioritize t (v * 2)

      (selectState, select_q) =
          seqAssign (nodeName ++ "_select_q", V.Unsigned $ toInteger numInputs)
                noneSelected $ V.Conditional done noneSelected select_d

      (emitState, emit_q) =
          seqAssign (nodeName ++ "_emit_q", V.Unsigned 2) (V.Sized 2 0) $
                    V.Conditional done (V.Sized 2 0) emit_d

      (emitComb, emit_d) = combAssign (nodeName ++ "_emit_d", V.Unsigned 2) $
                    emit_q `vbitor`
                    (V.Concat [valide selectChan, valide output] `vbitand`
                     V.Concat [readye selectChan, readye output])

      (doneComb, done) = combAssign (nodeName ++ "_done", V.Boolean) $
                V.UnaryOp V.ReductionAnd emit_d

      readyLogic = V.Assign (V.LConcat (map (V.Var . ready) (reverse inputs))) $
                   V.Conditional done select_d noneSelected

      datapath = V.Assign (V.Var $ datac output) $ passInput inputs 0
        where
          passInput [] _ = invalidExpr tei dType
          passInput (inp:t) index =
              V.Conditional (V.BitE select_d index `vand`
                                  vnot (V.BitE emit_q 0))
                   (datae inp)
                   $ passInput t (index + 1)

      selectpath = V.Assign (V.Var $ datac selectChan) $
                   emitSelect (dconsOf tei sType) 0
        where
          emitSelect [] _ = invalidExpr tei sType
          emitSelect (dcon:t) index =
              V.Conditional (V.BitE select_d index `vand`
                              vnot (V.BitE emit_q 1))
                   (dconExpr tei dcon [V.Sized 1 1])
                   $ emitSelect t (index + 1)

--  TODO: Also need a base case: single input that turns into a kind of fork
--    node.  Selector is effectively a "go" signal.


   -- Compose an algebraic type from its fields
   -- SIGNATURE dcon     a (b : (dcon a)): (dcon_fields b) > a ;
   synthesize (SNode "dcon" [_, SDconArg dc]
                  [Group inputBinds] [Bind output _]) =
       [datapathAssign, readyAssign]
     where
       inputs = chanNames inputBinds
       datapathAssign = V.Assign (V.Var $ datac output) $
           dconExpr tei dc (valids : map datae inputs)
       valids = V.UnaryOp V.ReductionAnd $ V.Concat $ map valide inputs
       readyAssign = V.Assign (V.LConcat $ map (V.Var . ready) inputs)
                              (V.Repeat (length inputs)
                                        [ readye output `vand` valide output ])

   -- The choice node becomes unnecessary because it becomes demux
   -- with identical inputs followed by a decompose node for each choice

   -- Decompose a particular variant of a particular algebraic type into
   -- its fields.  A different variant should never be placed on the input.
   -- SIGNATURE destruct a (b : (dcon a)): a > (dcon_fields b) ;
   -- This is essentially a fork that emits pieces of an object.
   -- It relies on the outputs being in the same order as the fields in the type
   synthesize (SNode "destruct" [_, SDconArg dc]
                      [Bind input _] [Group outputBinds]) =
     synthesizeMultiOutputs input (V.Var $ ready input) (valide input) $
         zip (fieldExprs tei dc (datae input)) (chanNames outputBinds)

   -- Transform an input token to a "Go" token (i.e., just pass valid)
   -- SIGNATURE togo a : a > Go ;
   synthesize (SNode "togo" [_] [Bind input _] [Bind output _]) =
     [ V.Assign (V.Var $ datac output) (valide input)
     , V.Assign (V.Var $ ready input) (readye output)
     ]

   -- Integer constant
   -- SIGNATURE const a (b : a) : Go > a ;
   synthesize (SNode "const" [STyArg typ, SLitArg val]
                         [Bind go _] [Bind output _]) =
       [datapathAssign, readyAssign]
    where
      datapathAssign = V.Assign (V.Var $ datac output) $
        V.Concat [ V.Sized (totalBitsOf tei typ) (toInteger val)
                 , valide go ]
      readyAssign = V.Assign (V.Var $ ready go) (readye output)

   -- On-chip memory block
   -- SIGNATURE bram a b : a > b ;
   -- data In = Read addr
   --         | Write addr data ;
   -- data Out = Read data
   --          | Written ;
   synthesize (SNode "bram" _ [Bind input iType] [Bind output _]) =
       [ V.Reg (mem, V.Array dataType memWords)
       , V.Reg (address, V.Unsigned $ toInteger addressBits)
       , V.Reg (din, dataType)
       , V.Reg (q, dataType)
       ] ++
       map (\n -> V.Reg (n, V.Boolean))
         [ validq, writeEnable, writeEnableq ] ++
       [ V.Assign (V.Var din) dataExpr
       , V.Assign (V.Var address) addrExpr
       -- Write enable true when a valid write token has arrived         
       , V.Assign (V.Var writeEnable) $
                  tagExpr tei (datae input) iType `vand` valide input
       , V.AlwaysSequential $

            V.ifThenElse (V.BinOp (V.String V.resetName) V.Equal (V.Sized 1 1))
                (V.SeqBlock [] [V.NonBlocking (V.Var writeEnableq) (V.Sized 1 0),
                                V.NonBlocking (V.Var validq) (V.Sized 1 0)])
        -- (V.ifThenElse (readye input)

        (V.SeqBlock []
           [ V.NonBlocking (V.Var writeEnableq) (vexpr writeEnable)
           , V.NonBlocking (V.Var validq) $ valide input
           , V.ifThenElse (vexpr writeEnable) (V.SeqBlock []
             [ V.NonBlocking (V.Element mem (vexpr address)) (vexpr din)
             , V.NonBlocking (V.Var q) (vexpr din)
             ])
             (V.NonBlocking (V.Var q) $ V.LValue $ V.Element mem (vexpr address))
           ])

          --  ((V.SeqBlock [] [V.NonBlocking (V.Var writeEnableq) (V.Sized 1 0),
                                -- V.NonBlocking (V.Var validq) (V.Sized 1 0)]))

          --  )
      -- TODO: A little delicate: assumes the bit structure of the output type
       , V.Assign (V.Var $ datac output) $
                  V.Concat [vexpr q, vexpr writeEnableq, vexpr validq]
       , V.Assign (V.Var $ ready input) $
                  vnot (vexpr validq) `vor` readye output
      ]

#if PROFILE
       ++
      -- for profiling purposes to evaluate how much memory continuations consume
       [V.Reg (prof_read, V.Unsigned 32),
        V.Reg (prof_write, V.Unsigned 32),
        V.AlwaysSequential $

            V.ifThenElse (V.BinOp (V.String V.resetName) V.Equal (V.Sized 1 1))
                (V.SeqBlock [] [V.NonBlocking (V.Var prof_write) (V.Literal 0),
                                V.NonBlocking (V.Var prof_read) (V.Literal 0)])
                (V.ifThenElse (V.BinOp (V.String writeEnable) (V.Equal) (V.Sized 1 1))
                  (V.NonBlocking (V.Var prof_write) (V.BinOp (V.String prof_write) (V.Plus) (V.Literal 1)))
                  (V.ifThen (V.BinOp (V.String validq) (V.Equal) (V.Sized 1 1))
                      (V.NonBlocking (V.Var prof_read) (V.BinOp (V.String prof_read) (V.Plus) (V.Literal 1)))

                  )               
                )
                ]
#endif       
     where
       prof_read = "profiling_" ++ iType ++ "_read"
       prof_write = "profiling_" ++ iType ++ "_write"
       mem = input ++ "_mem"
       address = input ++ "_address"
       din = input ++ "_din"
       q = output ++ "_q"
       validq = output ++ "_valid"
       writeEnable = input ++ "_we"
       writeEnableq = output ++ "_we"
       (addressBits, dataType, addrExpr, dataExpr) =
           memoryTypes tei iType (datae input)
       memWords = 1 `shift` addressBits

   synthesize (SNode n _ _ _) = error $ "unsupported node type \"" ++ n ++ "\""



{- synthesizeMultiOutputs

  E.g., for a two-output fork,

  logic [1:0] chan_emitted;    // Emitted in previous cycle, one per output
  initial chan_emitted = 2'd0; // Initially nothing emitted
  always_ff @(posedge clk)
    chan_emitted <= (chan_r ? 2'd0 : chan_done);

  logic [1:0] chan_done;       // Combinational: whether channel done this cycle
  assign chan_done = (chan_emitted | ({output2_d[0],
                                       output1_d[0]} & {output2_r, output1_r}));

  assign chan_r = (& chan_done); // everything done this cycle: consume input

  // Each output is valid when input valid and not already emitted
  assign output1_d = {chan_d[8:1], (chan_d[0] && (! chan_emitted[0]))};
  assign output2_d = {chan_d[8:1], (chan_d[0] && (! chan_emitted[1]))};

  nodeName (here "chan") is base name of the node (for naming _emitted,
                                                              _done signals)
  readySignal (here "chan_r") is the ready signal that indicates
         the input should be consumed
  validExpr (here "chan_d[0]") is the expression that indicates the
         input is valid
  outputs are (expression, channel) pairs that, for each named output channel,
         indicates the payload expression (if any): Nothing)
-}

   synthesizeMultiOutputs :: String -> V.LValue -> V.Expr ->
                             [(Maybe V.Expr, Channel)] ->
                             [V.Item]
   -- Single output corner case: just connect the expression
   synthesizeMultiOutputs _ readySignal validExpr [(expr, chan)] =
     [ V.Assign (V.Var $ datac chan) $
          case expr of
            Just e -> V.Concat [ e, validExpr ]
            Nothing -> validExpr
     , V.Assign readySignal $ readye chan ]

   synthesizeMultiOutputs nodeName readySignal validExpr outputs =
       emittedDecl
    --  : emittedInit
     : doneDecl
     : zipWith assignOutput outputs [0..] ++
       [doneAssign
     , readyAssign
     , emittedAssign]
    where
      numOutputs = length outputs
      resetEmitted = V.Sized numOutputs 0

      -- Vector indicating which outputs have been emitted in previous cycles
      emitted_name = nodeName ++ "_emitted"
      emitted = V.Var emitted_name
      emittedDecl = V.Reg (emitted_name, V.Unsigned $ toInteger numOutputs)
    --   emittedInit = V.Initial emitted resetEmitted

      -- Vector indicating which outputs will have been emitted by the end of
      -- the current cycle
      done_name = nodeName ++ "_done"
      done = V.Var done_name
      doneDecl = V.Reg (done_name, V.Unsigned $ toInteger numOutputs)
      doneAssign = V.Assign done $
                   V.BinOp (V.LValue emitted) V.BitOr
                        (V.BinOp outputvalids V.BitAnd outputreadys)
      outputvalids = V.Concat $ reverse $ map (valide . snd) outputs
      outputreadys = V.Concat $ reverse $ map (readye . snd) outputs

      readyAssign = V.Assign readySignal $
                    V.UnaryOp V.ReductionAnd $ V.LValue done
      emittedAssign = V.AlwaysSequential $
                        V.ifThenElse
                            (V.BinOp (V.String V.resetName) V.Equal (V.Sized 1 1))

                            (V.NonBlocking emitted resetEmitted)

                            (V.NonBlocking emitted $
                                V.Conditional (V.LValue readySignal)
                                        resetEmitted (V.LValue done))

      assignOutput (expr, channel) index =
          V.Assign (V.Var $ datac channel) $
            case expr of
                Just e -> V.Concat [ e, validBit ]
                Nothing -> validBit
         where
           validBit = validExpr `vand`
                         vnot (V.LValue $ V.Bit emitted_name index)

   -- A pass-through with an extra input whose data is consumed but ignored
   -- Degenerate case for the mux and demux nodes
   synthesizeGate gate input output typ =
      [ V.Assign (V.Var $ datac output) $
         if width > 0 then
            V.Concat [ V.SliceE (datae input) width 1, validExpr ]
         else
            validExpr
     , V.Assign (V.Var $ ready input) readyExpr
     , V.Assign (V.Var $ ready gate) readyExpr ]
        where
          width = totalBitsOf tei typ
          validExpr = valide gate `vand` valide input
          readyExpr = readye output `vand` validExpr

   dbuf :: Channel -> Channel -> V.Expr -> [V.Item]
   dbuf input output initExpr =
         -- Clear the buffer
       [
        --    V.Initial bufData initExpr
         -- Input ready = buffer empty or output ready
         V.Assign (V.Var $ ready input) $  vnot (valide output) `vor`
                  readye output
         -- Load buffer when input ready
       , V.AlwaysSequential $
                        V.ifThenElse
                            (V.BinOp (V.String V.resetName) V.Equal (V.Sized 1 1))

                                (V.NonBlocking bufData initExpr)

                                (V.ifThen (readye input) $
                                    V.NonBlocking bufData (datae input))
       ]
      where
       bufData = V.Var $ datac output


   -- A two-input, one-output node that uses a Verilog binary operator
   -- on a given number of data bits
   binaryOperatorNode :: V.BinOp -> Int -> Channel -> Channel -> Channel ->
                         [V.Item]
   binaryOperatorNode operator valueBits in1 in2 out =
      [datapathAssign, readyAssign]
     where
       datapathAssign = V.Assign (V.Var $ datac out )
                                 (V.Concat [ result, andValids ])
       readyAssign =
           V.Assign (V.LConcat [ V.Var (ready in1), V.Var (ready in2) ])
                    (V.Repeat 2 [ V.BinOp (readye out) V.LogAnd (valide out) ])
       andValids = valide in1 `vand` valide in2
       result = V.BinOp (V.SliceE (datae in1) valueBits 1)
                        operator
                        (V.SliceE (datae in2) valueBits 1)

-- | Rvalue/Expression for a variable
vexpr :: Channel -> V.Expr
vexpr = V.LValue . V.Var

-- | Data signal for a named channel
datac :: Channel -> V.VariableID
datac s = s ++ "_d"

datae :: Channel -> V.Expr
datae = vexpr . datac

-- | Ready signal for a named channel
ready :: Channel -> V.VariableID
ready s = s ++ "_r"

readye :: Channel -> V.Expr
readye = vexpr . ready

-- | Valid bit for a named channel
valid :: Channel -> V.LValue
valid s = V.Bit (s ++ "_d") 0

valide :: Channel -> V.Expr
valide = V.LValue . valid

-- | Return a list of channel names from a list of Binds in a [Chan]
chanNames :: [Chan] -> [Channel]
chanNames = map helper
  where
    helper (Bind c _) = c
    helper (Group _) = error "unexpected Group in channel list"

vnot :: V.Expr -> V.Expr
vnot = V.UnaryOp V.LogNot

vbin :: V.BinOp -> V.Expr -> V.Expr -> V.Expr
vbin op e1 = V.BinOp e1 op

vand :: V.Expr -> V.Expr -> V.Expr
vand = vbin V.LogAnd

vor :: V.Expr -> V.Expr -> V.Expr
vor = vbin V.LogOr

vbitor :: V.Expr -> V.Expr -> V.Expr
vbitor = vbin V.BitOr

vbitand :: V.Expr -> V.Expr -> V.Expr
vbitand = vbin V.BitAnd

-- Replace non-C++-characters in a string for Verilator
-- https://searchcode.com/codesearch/view/22826006/
-- TODO: Not quite right: they handle __ characters differently
verilatify :: String -> String
verilatify (h:tl) = (if isAlpha h then [h] else printf "__0%02X" (ord h)) ++
                    concatMap (\c -> if isAlphaNum c then [c]
                                     else if c == '_' then ['_']
                                     else printf "__0%02X" (ord c) ) tl
verilatify "" = ""


-- | Declare a new variable and continuously assign an expression to it
-- Return an expression for the variable
combAssign :: V.Binding -> V.Expr -> ([V.Item], V.Expr)
combAssign bind@(v, _) expr = ([V.Reg bind, V.Assign (V.Var v) expr]
                              , V.LValue $ V.Var v)

-- | Declare a new variable, initialize it, and assign an expression each cycle
-- Also return an expression for the variable
seqAssign :: V.Binding -> V.Expr -> V.Expr -> ([V.Item], V.Expr)
seqAssign bind@(v, _) initexpr expr = ([ V.Reg bind
                                    --    , V.Initial (V.Var v) initexpr
                                       , V.AlwaysSequential $
                                            V.ifThenElse
                                                (V.BinOp (V.String V.resetName) V.Equal (V.Sized 1 1))

                                                    (V.NonBlocking (V.Var v) initexpr)

                                                    (V.NonBlocking (V.Var v) expr)]
                                      , V.LValue $ V.Var v)

-- | Give each wildcard output (named "_") a unique name: _0, _1, etc.
uniquifyWildcards :: [SNode] -> [SNode]
uniquifyWildcards nodes = fst $ foldr renameNode ([], 0) nodes
  where
    renameNode :: SNode -> ([SNode], Int) -> ([SNode], Int)
    renameNode (SNode name args inputs outputs) (nds, index) =
        (SNode name args inputs outputs':nds, index')
      where
        (outputs', index') = foldr renameOutput ([], index) outputs
        renameOutput :: Chan -> ([Chan], Int) -> ([Chan], Int)
        renameOutput (Group chans) (res, ind) = (Group chans':res, ind')
          where
            (chans', ind') = foldr renameOutput ([], ind) chans
        renameOutput (Bind "_" tc) (cs, i) =
            (Bind ("_" ++ show i) tc : cs, i+1)
        renameOutput b (cs, i) = (b:cs, i)

