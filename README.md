# Repositório de Informações Sobre Docker
![Docker](http://michael-kuehnel.de/assets/img/docker-logo.svg)

### O que é Docker?

* Docker é um projeto OpenSource que fornece uma plataforma para desenvolvedores e administradoes de sistemas permitindo que se crie containers leves e portátil de diversas aplicações.
* Docker é um serviço de gestão de containers.
* Docker possui três funções principais:
    * Desenvolver(develop)
    * Entrega(ship)
    * Inicie(run)
* A ideia total do Docker é para desenvolvedores desenvolverem facilmente aplicações.
* Depois de feito a aplicação, os desenvolvedores podem Entregar eles em containers que podem ser enviados para qualquer lugar
* Docker é uma tecnologia bem recente, sendo lançada inicialmente em Março de 2013
* Docker esta sendo reconhecido mundialmente no desenvolvimento do mundo moderno
* Docker é bem util em projetos Ágeis

### O que é Containers?

* A funcionalidade do Docker permite adicionar e simplificar o uso de Linux Containers(LXC)
* LXC são uma forma de isolamento de processo e sistemas, quase como virtualização, porém mais leve e integrada ao host
* **O container nada mais é que um chroot**
* Com containers é possivel definir recursos como Memória,rede,sistema operacional,aplicação,serviço  etc.
* em um Container Docker é possivel fazer testes,desenvolvimentos,estudos,etc. Álem disso, também é possivel utilizá-lo em um ambiente de produção
* LinuX Containers(LXC) é um método de virtualização em nivel de sistema operacional para executar vários sistemas Linux isolados(conteiners) em um único host de controle(LXC host).
* LXC não fornece uma Máquina Virtual, mas fornece um ambiente virtual que tem sua própria CPU,Memória,bloco I/O,rede,espaço,entre outros.Este é fornecido por cgroups recursos no kernel do Linux no host LXC. É semelhante a um chroot,mas fornece muito mais isolamento
* Resumo do Linux Containers(LXC):
    * Permite rodar um linux dentro de outro linux
    * Chroot on Steroids
    * Dentro do container,parece uma máquina virtual
    * Não é para Virtualização
    * Fora dos Containers o Docker não passa de mais um processo para o sistema operacionsl

### Características do Docker

* Docker tem a Habilidade de reduzir o tamanho do desenvolvimento para  providenciar pequenos pedaços do sistema operacional via containers
* Voce pode enviar Containers de Dockers em qualquer lugar, em qualquer maquina Física, Virtual até mesmo na Nuvem.
* Já que containers são leves, eles são facilmente escaláveis

### Componentes do Docker

* **Docker do Mac:** Permite rodar Containers de Docker no Mac OS
* **Docker do Linux:** Permite rodar Containers de Docker no Linux OS
* **Docker do Windows:** Permite rodar Containers de Docker no Windows OS
* **Docker Engine:** Serve para construir imagens de Docker e criar Containers de Docker
* **Docker Hub:** Isto é um registro para fazer host de várias imagens de Docker
* **Docker Compose:** Isto serve para definir aplicações com Multiplos Containers de Docker

Mais informações, Leia a [Wiki](https://github.com/F4NT0/Docker_Info.wiki)
