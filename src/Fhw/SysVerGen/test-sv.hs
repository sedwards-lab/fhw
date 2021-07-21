module Main where

import Fhw.SysVerGen.SystemVerilog
import System.Exit
import Text.PrettyPrint

main = do
  print $ SourceText [Module { name="test" , ports=[], items=[] }]
  print $ SourceText [Module { name="!#%#swearing", ports=[], items=[] }]