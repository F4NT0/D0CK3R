[Retornar](home)
|---|

# COMO INSTALAR DOCKER NO ARCH LINUX

Como eu uso Arch Linux em casa sem Interface Gráfica eu fiz esta página para aqueles que forem se aventurar

### Antes de começar:
* Docker somente suporta Sistemas de 64-bits e que a versão do sistema seja acima de 3.8
* Para verificar qual a versão e sistema utilize o comando: [_`uname -r`_]()

### Parte 1: Iniciar o Módulo de Loop
* É um device em bloco que mapeia os dados dos blocos dentro do sistema,arquivos e sistemas de arquivos
* Docker as vezes Inicia o Módulo de Loop automaticamente depois de instalado, mas é melhor manter ativo antes de instalar
* Para verificar se o Módulo de Loop está ativo, utilize o seguinte comando: [_`lsmod | grep loop`_]()
* Se não estiver ativo, utilize os comandos abaixo para ativar:
    * **Comando 1**: [_`tee /etc/modules-load.d/loop.conf <<< "loop"`_]()
    * **Comando 2**: [_`modprobe loop`_]()
    * O primeiro comando serve para passar os comandos depois de `tee` para a palavra loop
    * O segundo comando serve para adicionar o Módulo de loop no Kernel do Linux

### Parte 2 : Instalar  o Docker
* Esta parte é bem complicada por alguns fatores
* Existem duas formas de baixar Docker no Arch:
     * **Modo 1**: pelo repositorio básico do Arch: [_`sudo pacman -S docker`_]()
     * **Modo 2**: pelo reporitorio da comunidade do Arch: [_`sudo yaourt -S docker`_]()
* Se aparecer que o Sistema não consegue se conectar com o servidor, ele vai procurar um servidor que possua o pacote e tentar baixar de alguma forma

### Parte 3: Iniciar e Permitir o Docker no Sistema
* Para poder usar o docker agora precisamos ativar ele no sistema e permitir que ele fique ativado
   * **Iniciar o Docker**: [_`systemctl start docker.service`_]()
   * **Permitir o Docker**: [_`systemctl enable docker.service`_]()
* Para verificar se o Docker está rodando, coloque o comando: [_`docker info`_]()

### Parte 4: Configurando o sudo
* Para rodar o docker no Sistema é preciso ter permição de Administrador
* Para não precisar sempre ter que colocar sudo nos comando, iremos fazer o seguinte:
    * **Criar o grupo para permição de Admin**: [_`groupadd docker`_]()
    * **Adicionando um Usuário no grupo**: [_`gpasswd -a user docker`_]()
         * Na parte de user você coloca o teu username da conta(se for F4NT0 coloque F4NT0)

### Parte 5: Baixando uma Imagem de Teste no Docker
* Iremos baixar uma imagem de Exemplo chamado Hello-world
* Para baixar use o seguinte comando: [_`docker run -ti hello-world`_]()
* Deixe baixar a imagem
* Depois de baixado ele irá ativar sozinho no sistema
* Se aparecer uma mensagem dizendo que foi instalado com sucesso, você completou a instalação do Docker