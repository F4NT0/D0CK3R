### Construindo Imagens

* Muito bons para DEVOPS

* Imagem é como uma Classe
* Containers é como se fosse um Objeto de uma Classe
* uma imagem pode ter muitos Containers

#### Comandos uteis e importantes
* Ajudas de comandos para Docker
    * [_`docker container --help`_]()
    * [_`docker image --help`_]()
    * [_`docker volume --help`_]()

#### Entendendo Melhor as imagens
* Imagens são organizadas em Registry, em Repositórios
* São armazenadas no Docker HUB, podendo ser baixada 
* Como baixar uma imagem: [_`docker image pull nomeImagem`_]()

#### Criando uma tag para uma imagem
* Podemos criar uma tag para uma imagem, como se fosse outro nome para ela
* comando: [_`docker image tag nomeImagem nomeTag`_]()

#### Deletando uma imagem do Docker
* comando: [_`docker image rm nomeImagem`_]()
* Podemos deletar varias imagens de uma vez:
    * [_`docker image rm nomeImagem1 nomeImagem2`_]()

#### Comandos básicos no gerenciamento de imagens

* baixar uma imagem do Docker HUB: [_`docker image pull`_]()
* verificar todas as imagens no sistema: [_`docker image ls`_]()
* remover uma imagem: [_`docker image rm nomeImagem`_]()
* inspecionar uma imagem: [_`docker image inspect`_]()
* tag para uma imagem: [_`docker image tag nomeImagem nomeTag`_]()
* comando para construir uma imagem: [_`docker image build`_]()
* salvamento de uma imagem construida: [_`docker image push`_]()

#### Docker HUB vs Docker Registry

* **Docker Registry**: serve para registrar e obter imagens, pode ter imagens privadas para a sua empresa, uma API,podendo criar um registry especifico teu
* **Docker HUB**: como um github, ele contem registry, com interface grafica e imagens oficiais que o docker mantem ativo, é muito importante possuir as imagens oficiais

#### Construindo uma Primeira Imagem
1. Abra seu VSCode em uma pasta desejada
2. criamos um arquivo chamado `Dockerfile` sem nenhuma extensão
3. Baixe a extensão do Docker no VSCODE(se desejar)
4. colocamos primeiramente o `FROM`, que serve para dizer de qual imagem queremos construir uma nova imagem(ex: FROM ubuntu)
5. para criarmos a imagem usamos o seguinte comando:
    1. [_`docker image build -t nomeImagem .`_]()
        1. `docker image build` serve para construir a imagem de um arquivo
        2. `-t` serve para se criar uma tag para a imagem que esta sendo criada
        3. `.` este ponto serve para dizer que pegue o arquivo Dockerfile encontrado na pasta atual, se não estiver na pasta do Dockerfile, deve ser dito todo o caminho para o arquivo Dockerfile
6. Podemos verificar se ela foi criada usando [_`docker image ls`_]() e vendo o nome que criamos na lista de imagens
7. Podemos agora criarmos um container dessa imagem que criamos

#### Criando um Dockerfile com argumentos
* Cada comando no Dockerfile é uma _layer_ na imagem
1. Podemos criar um Dockerfile para cada imagem
2. seguintes comando são colocados no Dockerfile

Comando|Definição|Exemplo
-------|---------|-------
FROM|serve para dizer de qual imagem existente estamos criando a nova imagem|FROM debian
LABEL maintainer|serve para dizer quem é o autor da imagem|LABEL maintainer 'F4NT0'
RUN | serve para iniciar um comando na imagem| RUN echo 'Hello World'



