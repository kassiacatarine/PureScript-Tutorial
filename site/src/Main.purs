module Main where

-- import Control.Monad.Eff (Eff)
import OutWatch.Tags (h1) as H
import OutWatch.Attributes (text)
import OutWatch.Core (render) as OutWatch

-- main :: forall t1. Eff (vdom :: VDOM | t1) Unit
main = do
  OutWatch.render "#app" (H.h1 [text "Hello, World! hi"])