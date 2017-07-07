# PureScript Tutorial
[![Build Status](https://travis-ci.org/kassiacatarine/PureScript-Tutorial.svg?branch=master)](https://travis-ci.org/kassiacatarine/PureScript-Tutorial)
[![Code Climate](https://codeclimate.com/github/kassiacatarine/PureScript-Tutorial/badges/gpa.svg)](https://codeclimate.com/github/kassiacatarine/PureScript-Tutorial)
[![Test Coverage](https://codeclimate.com/github/kassiacatarine/PureScript-Tutorial/badges/coverage.svg)](https://codeclimate.com/github/kassiacatarine/PureScript-Tutorial/coverage)

![PureScript](https://github.com/kassiacatarine/PureScript-Tutorial/blob/master/imagem/purescript.jpg)

Iniciando uma aplicação web com o PureScript.


## Sobre o PureScript

O PureScript é uma liguagem funcional compilável, ela é derivada do javascript, assim existe uma grande semelhança na sintaxe das duas liguagem. Apesar de ser uma liguagem relativamente nova o purescript possui uma grande quantidade de bibliotecas, assim possibilitando o desenvolvimento em diversas áreas, como em aplicações web, servidores web, jogos e etc.

### Por que o PureScript?

- O PureScript possibilita ao usuário a escrita de funções simples de uma maneira funcional, ela não aceita multi paradigmas, assim sendo mais fácil focar somente na programação funcional, diferente do que acontece quando utiliza-se o próprio JavaScript.

- O PureScript é uma liguagem a parte do javascript, mas ele disponibiliza uma função em seu compilador que possibilita a transformação de um código em purescript para javascript, fazendo que assim o desenvolvimento web seja possível.

- O PureScript possui sintaxe leve, o que nos permite escrever código muito expressivo que ainda é claro e legível. Ele usa um sistema de tipo rico para suportar abstrações poderosas. Ele também gera código rápido e compreensível, o que é importante ao interoperar com o JavaScript ou outras linguas que compilam para JavaScript.

- O PureScript é um idioma estaticamente digitado, o que significa que um programa correto pode receber um tipo pelo compilador que indica seu comportamento. Por outro lado, os programas que não podem receber um tipo são programas incorretos e serão rejeitados pelo compilador. No PureScript, ao contrário de linguagens dinamicamente digitadas, os tipos existem apenas em tempo de compilação e não têm representação em tempo de execução.

## Sobre o Tutorial

O tutorial será uma breve introdução de como começar a codificar com o purescript para web, indo da instalação até alguns passos mais básico, para que você tenha uma base de por onde e como começar a sua aplicação.

## Instalação

### Instalação do PureScript

A instalação do compilador PureScript pode ser feita das seguintes formas:

#### Binários

O compilador PureScript está disponível para donwload em plataformas OSX, Linux e Windows através de binários pré compilados no seu repositório.

[PureScript Releases](https://github.com/purescript/purescript/release)

#### NPM

A instalação por meio do pacote `npm` é realizada com o seguinte comando:

    npm install -g purescript

#### Brew

Para sistemas OSX, a instalação está disponível pelo `brew` por meio deste comando:

    brew install purescript

#### Stack

O download via stack necessita que o `GHC` seja superior a versão 7.10.1. Os passos necessários para a instalação são os seguintes:

1 - Atualiza o index do pacote

    stack update

2 - Baixa a ultima versão do PureScript e descompacta ele na pasta

    stack unpack purescript

3 - Compila e instala o pacote

    cd purescript-x.y.z (x.y.z => Versão do Pacote)
    stack install

Assim o PureScript estará instalado no seu 
sistema.

### Instalação do Pulp

A instalação da ferramenta de compilação Pulp é realizada por meio do pacote `npm` com o seguinte comando:

    npm install -g pulp

É fortemente recomendado a instalação do `bower`, pois ele gerencia os downloads de pacotes necessários. Instale ele com o seguinte comando:
    
    npm install -g bower

## Fontes de Estudo

https://leanpub.com/purescript/read

https://github.com/purescript/documentation

https://pursuit.purescript.org/

https://outwatch.github.io/

https://github.com/pierrebeaucamp/purescript-tutorial

https://github.com/adkelley/javascript-to-purescript


## Navegação

[Proxima Aula >](https://github.com/kassiacatarine/PureScript-Tutorial/tree/master/Aula1)

### Índice das Aulas

[Aula 1](https://github.com/kassiacatarine/PureScript-Tutorial/tree/master/Aula1)

[Aula 2](https://github.com/kassiacatarine/PureScript-Tutorial/tree/master/Aula2)

[Aula 3](https://github.com/kassiacatarine/PureScript-Tutorial/tree/master/Aula3)


## Referências

[PureScript](http://www.purescript.org)

[Repositório PureScript](https://github.com/purescript/purescript)

[Pulp](https://github.com/bodil/pulp)

[Bower](https://bower.io/)