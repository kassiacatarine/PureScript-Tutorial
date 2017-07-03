module Main where

import OutWatch.Dom
import OutWatch.Core (render)

main =
  let name = createStringHandler[]

      tasks = div
        [ h4 [text "Digite o seu Nome"]
        , input [placeholder := "Name", inputString ==> name]
        , hr[]
        , h2 [text "Olá ", childShow <== name.src]
        , br[]
        , h4 [text "Tarefas da(o) ", childShow <== name.src]
        , ul [text "Prova de Fisica"]
        , ul [text "Jogo de Xadrex"]
        , ul [text "Estudar Geometria"]
        , ul [text "Criar um Projeto"]
        , ul [text "Tirar nota boa"]
        ]

  in render "#app" tasks