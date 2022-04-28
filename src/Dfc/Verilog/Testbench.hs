{-# LANGUAGE LambdaCase #-}
module Dfc.Verilog.Testbench where

import qualified Dfc.Verilog.SystemVerilog as V
import Data.List
import Dfc.SAST -- SAST
import Dfc.AST

import qualified Data.Map as Map

packageFilter x = case x of
                    (V.Function _ _ _ _) -> True
                    (V.Typedef _ _) -> True
                    _ -> False


createPackage :: [V.Description] -> String -> ([V.Description], [V.Description])
createPackage vd pname = let
    packageContent = filter packageFilter vd
    moduleContent = filter (not . packageFilter) vd
    package = V.PackageDef pname packageContent in
    ([package], moduleContent)

createTestbench :: [V.Description] -> String -> String -> [V.Description]
createTestbench vd tname pname = let
    getModule vdl = case vdl of
        v@(V.Module {}):vs -> v
        (v:vs) -> getModule vs
        [] -> error "no module found"
    testBindings@(V.Module mname mports mitems) = getModule vd

    mportsNames = map (\x -> case x of V.Input (varN, _) -> varN
                                       V.Output (varN, _) -> varN) mports

    createVdef varT varN
      | isInfixOf "rout" varN = V.Localparam (varN, varT) (V.Sized 1 1)
      | isInfixOf "Go_d" varN = V.Localparam (varN, varT) (V.Sized 1 0)
      | otherwise = V.Reg (varN, varT)
    testVdefs = [V.Localparam ("finish", V.Boolean) (V.Sized 1 0)] ++ map (\x -> case x of
                            (V.Input (varN, varT)) -> createVdef varT varN
                            (V.Output (varN, varT)) -> createVdef varT varN) mports
    testInstance = [V.ModInstance mname "DUT" [V.LValue . V.Var $ vname | vname <- mportsNames]]
    -- testInitial = [V.Initial V.LValue V.Var "sourceGo_d"]
    
    getResult mports = case mports of
        [] -> error "no result"
        x@(V.Input _ ):xs -> getResult xs
        x@(V.Output (varN, varT)):xs -> if isInfixOf "dout" varN then varN else getResult xs
    
    testResult = getResult mports
    
    testFinish = V.AlwaysCombinational (V.ifThen (V.BinOp (V.BitE (V.LValue . V.Var $ testResult) 0)  V.Equal (V.Sized 1 1)) (V.Blocking (V.Var "finish") (V.Sized 1 1))) 
    testModule = [V.Import [V.Package pname],
                  V.Module {V.name = tname ++ "_test", V.ports = [], V.items = testVdefs ++ testInstance ++ [testFinish]}
                 ]
                             in testModule