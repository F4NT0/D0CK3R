[Retornar](home)
|---|

# Mexendo com containers no Docker

O Docker oferece um leque de opções que o deixa bem interativo com containers

Eis alguns comandos e informações para se mexer com os Containers

* [_`docker ps`_](): comando que **verifica se tem um container em execução**, apresentando seu ID
* [_`docker ps -a`_](): **lista todos os containers que foram inicializados ou pausados**
* [_`docker stats ID`_](): comando que informa o **tempo de execução,consumo de um container** pelo seu ID(só precisa das 4 primeiras posições do ID)
* [_`docker images`_](): comando que **apresenta todas as imagens baixadas** no seu sistema pelo docker
* [_`docker rm ID`_](): comando para **deletar um container de seu sistema** pelas 4 primeiras posições do ID dela
* [_`docker rmi ID`_](): comando para **deletar uma imagem de seu sistema** pelas 4 primeiras posições do ID dela

# Baixando Imagens e iniciando um Container

Comando para baixar e iniciar um Container do Ubuntu 16.04:

[_`docker run -ti ubuntu:16.04`_]()

* run: inicia uma imagem, criando assim um container da imagem
* t: essa letra significa que queremos linkar o terminal do container
* i: essa letra diz ao docker que queremos interatividade com o container
* ubuntu:16.04: é o nome da imagem que queremos baixar

* Com esse comando temos acesso ao **shell do container**

# Controlando Containers

* [_`docker run -ti --name nome imagem`_](): iniciar uma imagem dando um nome especifico para ela (nome é o nome desejado e imagem é a imagem que você baixou)
* [_``_]():

# Como baixar programas e rodas nas imagens de distro:

* inicie a imagem da distro: [_`docker run -ti distro`_]() (ex: [_`docker run -ti ubuntu`_]())
* faça o update da distro que se está usando: (ex: apt-get update)
* baixe os programas que deseja dentro do container: (ex: apt-get install screenfetch)
* **Os programas só funcionam enquanto o container rodar, a não ser que se faça um commit do container**

# Fazendo o commit das alterações feitas no Container

* pegue o ID do container que se está trabalhando: [_`docker ps -q`_]()
* fazendo o commit de um container:
    * [_`docker commit ID nomeCommit`_]()
         * ID é o id do container
         * nomeCommit é o nome que iremos utilizar para rodar o container com o programa desejado
* para ver se foi commitado: [_`docker images`_]()
* para rodar o container do commit: [_`docker run -ti nomeCommit`_]()
    * nomeCommit é o nome do commit feito

# Deletando todas as imagens e containers de uma só vez

* [_`docker rm $(docker ps -qa)`_](): **DELETA TODOS OS CONTAINERS DO SEUS SISTEMA**
* [_`docker rmi $(docker images -q)`_](): **DELETA TODAS AS IMAGENS DE SEU SISTEMA**
 