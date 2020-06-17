{-#LANGUAGE BangPatterns#-}
{-#LANGUAGE FlexibleContexts#-}

module MultiModule where

import Control.Monad.State.Strict
import Control.Monad.State.Class
import SingleModuleBase

countDown2 :: Int -> (Int, Int)
countDown2 initial = runState program initial

countDown3 :: Int -> IO (Int, Int)
countDown3 initial = runStateT programStateT initial

countDownBase2 :: Int -> (Int, Int)
countDownBase2 = programBase
