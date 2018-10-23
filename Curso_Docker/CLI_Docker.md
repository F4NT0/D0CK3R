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

* **Mapear portas com Containers**]
    * É possiveis para mapear portas de um container para o host
    * Não precisa ser a porta principal do container
    * utilizamos o comando `-p` que recebe como parametro:
        * porta do host:porta do container
    * ex: `docker container run -p 8080:80 nginx`
    * fazemos com que o programa que esta na porta 80 dentro do container seja exposto na posta 8080 fora do container
    * acesse a url http://localhost:8080 por um browser
    * acesse a url http://localhost:80 por um broser
    * se os dois levarem a mesma página significa que esta funcionando
* **Mapeamento de Volumes**
    * para saber a pasta atual do sistema: `$(pwd)`
    * fazemos um mapeamento de um diretorio do host com o diretorio dentro do container, podendo refazer qual diretorio será mapeado dentro do container 
    * utilizando o comando `-v` e tendo como parâmetro um diretório do host e um diretório do container, podemos conectar esses dois diretórios 
    * `docker container run -v $(pwd)/dirHost:dirContainer imagem`
    * `docker container run -p 8080:80 -v $(pwd)/html:/usr/share/nginx/html nginx`


