module Main where

import OutWatch.Tags (h1) as H
import OutWatch.Attributes (text)
import OutWatch.Core (render) as OutWatch

main = do
  OutWatch.render "#app" (H.h1 [text "Hello, World!"])