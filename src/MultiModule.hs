{-#LANGUAGE BangPatterns#-}
{-#LANGUAGE FlexibleContexts#-}

module MultiModule where

import Control.Monad.State.Strict
import Control.Monad.State.Class
import SingleModuleBase

countDown2 :: Int -> (Int, Int)
countDown2 initial = runState program initial

countDownBase2 :: Int -> (Int, Int)
countDownBase2 = programBase
