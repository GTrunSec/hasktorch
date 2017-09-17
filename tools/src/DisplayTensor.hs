{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ForeignFunctionInterface#-}

-- Pretty printing of low level tensor representations

module Main where

import THDoubleTensor
import Foreign
import Foreign.C.Types
import THTypes

main = do
  t <- c_THDoubleTensor_newWithSize2d 2 2
  c_THDoubleTensor_set2d t 0 0 (CDouble 1.4)
  c_THDoubleTensor_free t
  putStrLn "test"

