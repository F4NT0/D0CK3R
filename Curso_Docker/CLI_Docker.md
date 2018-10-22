### Introdução ao Docker Client

* Docker Client é a parte do cliente, onde se utiliza os comandos de CLI para interagir com o Docker

#### Hello World no Docker
* Abra um terminal e escreva docker para ver se esta funcionando
* **Chamar uma imagem Hello World:** 
    * `docker container run hello-world`

* **Baixando imagem do Debian** 
    * `docker container run debian`

* **Verificando os containers que estão ativos**
    * `docker container ps`

* **Verificando os containers que ja foram ativos** 
    * `docker container ps -a`

* **Removendo um containers ativo**
    * `docker container run --rm nome_imagem`
    * ex: `docker container run --rm debian`
    * _--rm_ remove um container 
* Toda vez que o comando run é usado ele cria uma nova chamada de container, ficando marcado todas as vezes qu foram ativos

* Toda vez que o container é encerrado e outro container é iniciado, todos os arquivos e trabalhos morrem e voce perde tudo


* **Rodando um container direto**
    * com o comando -it ele inicaliza o container de uma vez
    * `docker container run -it nome_imagem`
    * ex: `docker container run -it debian`

* **Renomeando um container**
    * serve para depois reutilizar o container criado
    * `docker container run --name nome_desejado -it nome_imagem`
    * ex: `docker container run --name meu_debian -it debian`
    * um nome ja usado não pode ser feito de novo
  
* **Reutilizar Containers**
* Comando para ver todos os containers que estão rodando
    * `docker container ls`
* Comando para ver todos os containers que ja foram feitos
    * `docker container ls -a`
* Comando para reutilizar um container criado
    * `docker container start -ai nome_container`
    * -ai serve para conectar o container no terminal atual
    * start inicializa o container 
    * nome_container é o container que renomeamos anteriormente
    * **Toda vez que inicalizar o container estará lá as informações que você colocou, sem serem perdidas!**


