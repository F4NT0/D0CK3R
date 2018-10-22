### Instalação de Docker 

#### Instalação de Docker no Linux
    * Utiliza LXC que roda nativo no LINUX
    * faça update do sistema: `apt-get update`
    * faça a instalação de alguns pacotes necessários:
```shell
    sudo apt-get install \
    apt-transport-https \
    curl \
    software-properties-common
```
* continuando...
    * instale a chave oficial do Docker
        * `curl -fsSL https://download-docker.com/linux/ubuntu/gpg | sudo apt-key add - `  
    * instalar o docker para uma arquitetura especifica:
```shell
sudo add-apt-repository \
"deb [arch-amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable"
```
* Continuando...
    * Fazer Update de novo
        * `sudo apt-get update`
* Instalando o Docker em is:
    * `sudo apt-get install docker-ce`

* testando:
    * `docker --help`

#### Instalação de Docker no Windows
    * Vá no Site oficial do Docker
    * Procure Docker for Windows
    * Esteja na versão mais recente do windows 10
    * Se for windows 7,8: instale Docker Toolbox
    * Clique no icone do Docker que foi baixado
    * Siga as intalações que o Windows pede
    * Reinicie a máquina depois de ter instalado

#### Instalação de Docker no Macbook
    * vá na página do Docker
    * Pegue a versão do Mac
    * Pode usar o Toolbox se for versão mais antiga
    * selecione o arquivo .dmg para instalar 
    * jogue o docker na applications
    * clique duas vezes para instalar o docker que esta em applications
    * se baixar o toolbox, ele possui duas formas de acessar o docker: pelo terminal ou por uma GUI 