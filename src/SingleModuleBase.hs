{-#LANGUAGE BangPatterns#-}
{-#LANGUAGE FlexibleContexts#-}

module SingleModuleBase where

import Control.Monad.State.Strict
import Control.Monad.State.Class

countDown :: Int -> (Int, Int)
countDown initial = runState program initial

program :: MonadState Int m => m Int
program = do
  n <- get
  if n <= 0
  then return n
  else put (n - 1) >> program

programStateT :: StateT Int IO Int
programStateT = do
  n <- get
  if n <= 0
  then return n
  else put (n - 1) >> program

countDownStateT :: Int -> IO (Int, Int)
countDownStateT initial = runStateT programStateT initial

countDownBase :: Int -> (Int, Int)
countDownBase = programBase

programBase :: Int -> (Int, Int)
programBase !n = if n <= 0
                 then (n, n)
                 else programBase (n - 1)
