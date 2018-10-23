[Retornar](home)
|---|
# Instalação de Docker no Linux

[Instalação no Sistema do Arch Linux](https://github.com/F4NT0/Docker_Info/wiki/arch_docker)

## Abaixo se encontra como instalar o Docker no Linux Mint e no Ubuntu

### Primeiro passo: Verificando a versão do Sistema Operacional
_Linux,Ubuntu,..._
* Antes de intalar o Docker, você tem que verificar se está usando a versão certa do Kernel linux
* Docker foi designado a rodar no linux kernel versão 3.8 ou maior
* Para verificar qual a versão de seu linux,use o seguinte comando:
     * [_`uname -a`_]()
     * uname: esse método retorna informações do sistema linux
     * -a: é usado para verificar se a informação realmente foi entregue
     * A informação entregue será: 
          * nome do kernel(normalmente é linux)
          * nome do nodo(normalmente o segundo nome que aparece no terminal)
          * versão do kernel(**É A PARTE IMPORTANTE**)
          * maquina
          * processador
          * plataforma do hardware
          * sistema operacional
    * No meu caso, a versão do meu kernel é **4.8.0-53** que é maior que 3.8 então posso utilizar o docker

### Segundo passo: Update do Sistema Operacional
_Linux,Ubuntu,..._
* Faça um update de seu sistema operacional:
     * [_`sudo apt-get update`_]()
     * **sudo** serve para utilizar as permições de administrador para fazer a atualização


### Terceiro passo: Baixar certificado do Docker
_Ubuntu_
* Agora nós iremos instalar os certificador requeridos para funcionar o site do Docker para fazer Download dos pacotes necessários do docker, que se pode fazer com o seguinte comando:
    * [_`sudo apt-get install apt-transport-https ca-certificates`_]()

### Quarto passo: Adicionar a chave de Encriptação GPG
_Linux,Ubuntu,..._
* Agora iremos adicionar a chave GPG
* GPG serve para assegurar que todos os dados estão encriptados quando formos fazer download dos pacotes do Docker
* O próximo comando irá fazer download da chave com o ID **58118E89F3A912897C070ADBF76221572C52609D**
* Esse ID veio do keyserver hkp://ha.pool.sks-keyservers.net:80 e adiciona um adv keychain
* Essa chave em particular é requerida para o download do pacotes do Docker
* Para usar ela, use o seguinte comando:

[_`sudo apt-key adv \ --keyserver hkp://ha.pool.sks-keyservers.net:80 \ --recv-keys 58118E89F3A912897C070ADBF76221572C52609D`_]()

### Quinto passo: Conexão do servidor para conseguir os pacotes
_Ubuntu_
* Dependendo da versão do **ubuntu** que estiver usando, você tem que adicionar o site do docker.list para o apt package manager, para que se possa detectar os pacotes do Docker do Site do Docker e possa fazer download
* Use o seguinte comando:

[_`echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | sudo tee /etc/apt/sources.list.d/docker.list`_]()
* **Faça um update como no passo 2**

### Sexto passo: Verificar a conexão com o servidor
_Ubuntu_
* Se quiser verificar se o package manager está apontando para o repositório certo, utilize o seguinte comando:
   * [_`apt-cache policy docker-engine`_]()
* Na saida do código, tem que aparecer o link para https://apt.dockerproject.org/repo/
* **No Final. faça um update como no passo 2**


_Linux_
* No linux temos que dizer para onde o package maager tem que olhar
* o Comando para o Linux é:
    * [_`sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'`_]()

### Setimo passo: Baixar o pacote de imagem linux
_Ubuntu_
* Se estiver usando o **Ubuntu**, você precisa baixar o pacote de imagem do linux para poder usar o aufs storage driver.
* aufs storage driver é usado para novas versões de Docker
* Para baixar,use o seguinte comando:
    * [_`sudo apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual`_]()

_Linux_
* No linux usamos o seguinte comando:
    * [_`sudo apt install linux-image-generic linux-image-extra-virtual`_]()
* Depois de instalado faça um **Reboot do sistema:** [_`sudo reboot`_]()

### Oitavo passo: Baixando o Docker
_Ubuntu_
* Agora **Iremos baixar o Docker**
* Para baixar o Docker usamos o seguinte comando:
    * [_`sudo apt-get install -y docker-engine`_]()
* com esse comando ira baixar a imagem da docker-engine do docker website e irá instalar em seu sistema

_Linux_
* Para instalar no linux, iremos utilizar um comando diferente
* No linux não só salva mas tambem inicia um daemon e o mantem ativo onde ele sempre inicia quando fizer boot
* O seguinte comando irá baixar o Docker:
    * [_`sudo apt install docker-engine`_]()

### Nono passo: Testando o Docker

* Agora iremos verificar se conseguimos baixar e qual a versão de nosso Docker
* utilizamos o seguinte comando:
    * [_`sudo docker version`_]()
* Ele irá entregar as informações do cliente e do servidor

* Se deseja testar um container em nosso Docker, iremos testar um container hello-world
* Para rodar para verificar se esta funcionando:
    * [_`sudo docker run hello-world`_]()
* se aparecer uma mensagem de boas vindas, está funcionando! 
* Para saber mais informações do docker, utilize o seguinte comando:
     * [_`sudo docker info`_]()

### Decimo passo: Criando sala de Super User
* Para não precisar ter que ficar colocando sudo o tempo todo para rodar o Docker
* Para rodar o docker no Sistema é preciso ter permição de Administrador
* Para não precisar sempre ter que colocar sudo nos comando, iremos fazer o seguinte:
    * **Criar o grupo para permição de Admin**: [_`groupadd docker`_]()
    * **Adicionando um Usuário no grupo**: [_`gpasswd -a user docker`_]()
         * Na parte de user você coloca o teu username da conta(se for F4NT0 coloque F4NT0)