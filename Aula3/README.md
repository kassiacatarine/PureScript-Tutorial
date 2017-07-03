# Tutorial Aula 3

## Temas Abordados

Os seguintes temas serão desenvolvidos nessa aula:

    1 - Inserção de um nome na página
    2 - Tags html no purescript

## Aula 3

Nessa aula será desenvolvida uma página simples com elementos do html no purescript.

### Explicação do Código

Para começar, a utilização de campos html necessita de importações da DOM do OutWatch, sendo assim o arquivo Main.purs começará importando ele.

    import OutWatch.Dom

Como visto na ultima aula, para rederizar algum elemento na pagina precisa importar o render.

    import OutWatch.Core (render)

Com as bibliotecas importadas, o ambiente está pronto para a escrita do código.
A escrita do código será na main, pois o código é simples.

Então iniciaremos dessa forma:

    main =
        let name = createStringHandler[]

Nesse trecho falamos que o atributo `name` será do tipo string handler, um tipo de string existente na blibioteca do outwatch.
A seguir começaremos a escriver a nossa `div`, atribuindo todo o conteúdo que queremos nessa div.

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

Esse é o código completo da div.

#### Explicação dos Componentes da div

Uma div é como se fosse um array de instuções, ela sempre é seguida de "[]", a seguir explicaremos os componentes existentes na div criada.

1 - Elemento `h4`

     h4 [text "Digite o seu Nome"]

Este elemento irá exibir na página o texto indicado no tamanho h4.

2 - Elemento `input`

    input [placeholder := "Name", inputString ==> name]

Neste elemento é gerado na pagina uma caixa de entrada e a entrada será atribuida ao atributo `name`.

3 - Elemento `hr`

    hr[]

Este elemento irá traçar uma linha na página.

4 - Elemento `childShow`

    h2 [text "Olá ", childShow <== name.src]

Este elemento irá mostrar na página o nome gravado.

5 - Elemento `br`

    br[]

Este elemento irá quebrar uma linha na página.

6 - Elemento `ul`

    ul [text "Prova de Fisica"]

Este elemento irá exibir o texto no formato de lista não ordenada.

#### Exibição da div

Como já temos uma div pronta para exebição, precizamos redenriza-la para que ela apareça na página.
Como começamos com um elemento `let` precisamos digitar o elemento `in` antes do render e depois da declaração do app chamamos a div criada.

    in render "#app" tasks

Assim teremos uma página que dirá as tarefas da pessoa que estiver utilizando.

#### Código Completo

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

## Navegação

[Introdução](https://github.com/kassiacatarine/PureScript-Tutorial)

[< Aula Anterior](https://github.com/kassiacatarine/PureScript-Tutorial/tree/master/Aula2)