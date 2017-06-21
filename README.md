# PureScript Tutorial
## Sobre o PureScript

## Introdução

## Sobre o Tutorial

## Instalação

### Instalação do PureScript

A instalação do compilador PureScript é feita das 
seguintes formas:

#### Binários

O compilador PureScript está disponível para donwload em plataformas OSX, Linux e Windows através de binários pré compilados no seu repositório.

[PureScript Releases](https://github.com/purescript/purescript/release)

#### NPM

A instalação por meio do pacote `npm` é realizada com o seguinte comando:

    npm install -g purescript

#### Brew

Para sistemas OSX, está disponível por esse 
comando:

    brew install purescript

#### Stack

O download via stack necessita que o GHC seja superior a versão 7.10.1. Os passos necessários são os seguintes:

    1 - Atualiza o index do pacote

        stack update

    2 - Baixa a ultima versão do PureScript e descompacta ele na pasta

        stack unpack purescript

    3 - Compila e instala o pacote

        cd purescript-x.y.z (x.y.z => Versão do Pacote)
        stack install

Assim o PureScript estará instalado no seu 
sistema.

###Instalação do Pulp

A instalação da ferramenta de compilação Pulp é realizada por meio do pacote `npm` com o seguinte comando:

    npm install -g pulp

É recomendado a instalação do `bower`, pois ele gerencia o download de pacotes necessários. Instale ele com o seguinte comando:
    
    npm install -g bower

## Fontes de Estudo


## Navegação


## Referências

[PureScript](http://www.purescript.org)

[Pulp](https://github.com/bodil/pulp)

[Repositório PureScript](https://github.com/purescript/purescript)

[Bower](https://bower.io/)