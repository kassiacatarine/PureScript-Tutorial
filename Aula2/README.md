# Tutorial Aula 2

## Temas Abordados

Os seguintes temas serão desenvolvidos nessa aula:

    1 - Instalação dos componentes para auxílio web
    2 - "Hello, World!" em um ambiente web

## Aula 2

### Instalação

Para que a escrita do programa seja mais compreensiva, instalação do seguinte aplicativo é necessário:

- purescript-outwatch

Ele facilitará o uso do DOM virtualizando-o, assim tornando o código mais previsível.

#### Instalando o OutWatch

1 - Para instalar o aplicativo é necessário entrar no diretório do projeto.

    cd mysite

2 - Instalar o `purescript-outwatch`

    bower install purescript-outwatch --save

Com isso o `OutWatch` estará instalado como uma dependência do projeto.

##### Depedências do OutWatch  
Essa aplicação necessita de outras aplicações para a sua execução, então o projeto não irá funcionar sem elas. As aplicações que ele depende são as seguintes:

- rxjs
- snabbdom
- purescript-quickcheck

##### Instalando o `rxjs` e o `snabbdom`

A instalação deses dois componentes é feita somente por meio de npm, para instala-los digite o seguinte comando.

    npm install rxjs snabbdom

##### Instalando o `purescript-quickcheck`

A instalação do `quickcheck` pode ser realixada por meio do bower com o seguinte comando.

    bower install purescript-quickcheck --save-dev

Assim ele irá instalar e salvar como uma dependência dev no arquivo bower.json.

### Fazer um "Hello, World!" em uma página

Agora que todas as dependências estão instaladas, podemos testar um código purescript em um navegador web.

#### Configurando Main.purs

O que queremos é renderizar a mensagem "Hello, Word!" em um código html, então para isso precisamos módificar o codigo do arquivo contido no src/Main.purs. No arquivo Main altere-o para que ele se pareça com o seguinte:

    module Main where

    import OutWatch.Tags (h1) as H
    import OutWatch.Attributes (text)
    import OutWatch.Core (render) as OutWatch

    main = do
        OutWatch.render "#app" (H.h1 [text "Hello, World!"])

Como dar para ver no início exite uma declaração que o arquivo é o modulo Main. A seguir importamos do OutWatch as partes responsáveis por cuidar do html, tais como o `h1` e etc. Após importamos, falamos que o main irá renderizar em uma `div` chamada `app` o texto contido após o atributo `text`.

#### Criando arquivos para web

Para uma melhor organização dos arquivos que serão utilizados na página, é feita a criação de um diretório para armazenar os arquivos `html` e `js`.

1 - Criando diretório para os arquivos web

    mkdir dist

2 - Gerando arquivos `js` com o `browserify`

    pulp browserify -O -t dist/index.js

Com esse comando um arquivo `index.js` será criado na pasta dist.

3 - Criando um arquivo html

    cd dist
    touch index.html

4 - Alterando o conteúdo do `index.html`

    <!DOCTYPE html>
    <html>

    <body>
        <div id="app"></div>
        <script src="index.js"></script>
    </body>

    </html>

Como estamos montando um pragrama simples não existe a necessidade de elaborar um código html mais complexo. O código apresentado acima realiza a função de executar o arquivo `js` contido na pasta dist.

5 - Visualizando o "Hello, World!"

Na pasta dist abra o arquivo `index.html` em um navegador, a seguir você verá a mensagem "Hello, World!" impressa na página.

Com isso conseguimos utilizar o purescript em um ambiente web.

##### Dicas

Se houver a necessidade de compilação do arquivo `js` muitas vezes. A flag `-w` ou `--watch` irá ajudar a compilar sempre que houver uma alteração no código.

O comando completo é o seguinte:

    pulp -w browserify -O -t [caminho/nomedoarquivo.js]
    ou
    pulp --watch browserify -O -t [caminho/nomedoarquivo.js]

Esse comando ficará sendo executado no seu terminal e para que haja o carregamento de uma alteração é necessário olhar o terminal antes de abrir o arquivo html.

## Navegação

[Introdução](https://github.com/kassiacatarine/PureScript-Tutorial)

[< Aula Anterior](https://github.com/kassiacatarine/PureScript-Tutorial/tree/master/Aula1)
|
[Proxima Aula >]()