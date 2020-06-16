{-#LANGUAGE RecordWildCards#-}

import Gauge
import SingleModuleBase
import MultiModule

main :: IO ()
main = do
  defaultMain singleModuleBench
  where
    singleModuleBench =
      [bgroup "MTL Benchmark" $ mtlBench, bgroup "Base Benchmark" baseBench]

parameter :: Int
parameter = 1000000

mtlBench :: [Benchmark]
mtlBench = [bench "Single module" (nf countDown parameter), bench "Multi module" (nf countDown2 parameter)]

baseBench :: [Benchmark]
baseBench = [bench "Single module" (nf countDownBase parameter), bench "Multi module" (nf countDownBase2 parameter)]
