# Tutorial Aula 1

## Temas Abordados

Os seguintes temas serão desenvolvidos nessa aula:

    1 - Comandos básicos.
    2 - Iniciar um projeto PureScript.
    3 - Fazer um "Hello, World!" no terminal.
    4 - Modo interativo do PureScript.

## Aula 1

### Comandos Básicos

Ajuda:

    pulp help

Iniciar um projeto:

    pulp init

Realizar a configuração do projeto:

    pulp build

Realizar os testes:

    pulp test

Compilar e rodar o projeto:

    pulp run

Inicia o modo interativo:

    pulp psci

### Iniciando um Projeto

Depois de configurar o seu ambiente de desenvolvimento como instruído na [Introdução](https://github.com/kassiacatarine/PureScript-Tutorial/blob/master/README.md), está na hora de iniciar um projeto PureScript. Em seu terminal realize as seguintes instruções:

1 - Crie uma pasta para o projeto
    
    mkdir mysite
    cd mysite

2 - Inicie um projeto

    pulp init

Com isso os seguintes arquivos serão gerados:
    
    ubuntu@ubuntu:~/mysite$ ls 
    bower_components  bower.json  src  test

Os seus arquivos e funcionalidades são as seguintes:

    bower_components/ - Diretório para as depêndencias instaladas

    bower.json - Arquivos responsável pela informação das dependências instaladas
    
    src/ - Diretório onde ficará os seus arquivos do site
    
    src/Main.purs - Arquivo de ponto de entrada do projeto
    
    test/ - Diretório onde ficará os arquivos de teste do site
    
    test/Main.purs - Arquivo de teste vazio

### Fazer um "Hello, World!" no terminal.

1 - Editar o arquivo main.purs da pasta src/

No arquivo contém um código pré existente, iremos altera-lo só para mostrar que a maioria das configurações utilizadas nele não são necessárias para que se teste um código inicial.

Edite o seu código para que se pareça com esse:

    module Main where

    import Control.Monad.Eff.Console

    main = log "Hello, World!"
    
A funcionalidade desse código é basicante dizer que o arquivo é o módulo Main (Principal), importar o módulo do console, que permitirá a execução do `log` e executar a função main que executará a função `log`.

2 - Executar o programa no terminal

Para executar o código descrito acima é necessário executar o seguinte comando no terminal:

    pulp run

Após a sua execução irá aparecer algumas mensagens de aviso, pois existe uma forma mais completa para a importação do módulo responsável pelo console, mas como o nosso objetivo é ser o mais simples possível a execução da forma simples é melhor para o entendimento. Depois do aviso irá aparecer a seguinte mensagem:

    * Build successful.
    Hello, World!

Então conseguimos fazer um "Hello, World" no terminal de forma simple é rápida.

### Modo interativo do PureScript.

O `PureScript` oferece um modo interativo para testar o código, assim facilitando a vida do usuário. Para iniciar o `PSCi` (Modo interativo), precisa-se digitar o seguinte comando:

    pulp psci

Comando de ajuda disponível para consultas dentro do `PSCi`:

    :? - Mostra os comandos disponíveis

Outro comando para auxílio do usuário é a tecla `TAB`, ela mostrará todas os módulos disponíveis para aplicar no código.

OBS: O modo interativo só pode ser iniciado quando estiver no diretório de um programa PureScript.

#### Exemplo no PSCi

A utilização do modo interativo é simples, dependendo do que for testar é necessário importar o módulo resposável e depois testar o código. A seguir será mostrado um exemplo de código que utiliza o módulo `Prelude`, responsável por contas matemáticas. Ele é importado automaticamente apartir do psci, então não existe a necessidade de importa-lo.

    1 - Inicie o PSCi

        pulp psci

    2 - Teste uma conta simples

        > 1 + 2

    3 - Defina uma função

        > dobroNumero x = x * 2

    4 - Teste a função

        > dobroNumero 10
        20

    5 - Saia do modo interativo

        > :quit

Assim conseguimos utilizar o modo interativo para teste de códigos.

## Navegação

[Introdução](https://github.com/kassiacatarine/PureScript-Tutorial)

[Proxima Aula >]()