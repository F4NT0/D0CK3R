## Capitulo 1 do Curso de Docker

#### O que é Docker?

* Docker é uma ferramenta que usa os recursos exitentes no kernel do Linux para isolar a execução de processos
* As ferramentas que o Docker traz são basicamente uma camada de administração de _Containers_, baseado originalmente em **LXC**
* **LXC** é um conjuntos de ferramentas,API's e bibliotecas para o uso de containers no linux, melhorando as capacidades de uma ferramenta chamada _chroot_, conhecida por guardar processos em um sub-diretório

**DEFINIÇÃO OFICIAL DE DOCKER**
* o Docker possui vários Containers Docker que empacotam componentes de software em um sistema de arquivos complestos que contém tudo o que é necessário para a execução do código: código,runtime,ferramentas de sistema, ou seja, qualquer coisa que possa ser instalado em um servidor

#### VM x Docker
* Docker usa menos recursos que uma VM(Virtual Machine) tradicional
* O docker utiliza o mesmo _kernel_ do _host_ e ainda pode compartilhar bibliotecas
* Mesmo utilizando o mesmo _kernel_ é possivel utilizar outra distribuição com versões diferentes das bibliotecas e aplicativos
  
**O que é uma VM:**
* Virtual Machine é um recurso extremamente usado para isolamento de serviços, replicação e mehor aproveitamento do poder de processamento de uma máquina física
* O Docker é melhor porque ele possui somente o necessário, onde ele inicializa muito mais rapido e eficiente que uma VM

**Limitações do Docker para uma VM:**
1. Todas as imagens do Docker são para linux, apesar do _host_ ser de qualquer SO(Sistema Operacional) que use ou emule um _kernel_ linux, mas as imagens do Docker em si serão baseadas em Linux
2. Não é possivel usar um _kernel_ diferente do _host_, porque o Docker Engine estará executando sob uma determinada versão do _kernel_ linux, e não é possivel executar uma versão diferente, pois as imagens Docker não possuem _kernel_

**O que são Containers?**
* Container é o nome dado para a segregação de processos no mesmo _kernel_, de forma que o processo seja isolado o máximo possivel de todo o resto do ambiente
* é uma Segregaçao de processos no mesmo Kernel(Isolamento)
* Sistemas de arquivos criados a partir de uma imagem
* Ambiente leves e portáteis no qual aplicações são executadas
* Encapsula todos os binários e bibliotecas necessárias para execução de uma App
* Algo entre um chroot e uma VM
* Podem ter vários containers funcionando ao mesmo tempo
* Podemos fazer vários processos em um unico container
* Podemos ter vários processos em containers diferentes
* Podemos conectar todos os containers uma com a outra
* **É mais favoravel colocar cada parte necessária em containers diferentes(banco de dados em um, sistema em outro, etc...)**
  
**O que são Imagens Docker?**
* Uma imagem Docker é a materialização de um modelo de um sistema de arquivos, modelo este produzido através de um processo chamado _build_
    * build: O comando `docker build` é o responsável por ler um Dockerfile e produzir uma nova imagem Docker.
* Imagem é um Modelo de sistema de arquivo somente-leitura usado para criar containers
* Imagens são criadas através de um processo chamado _build_
* São armazenados em repositórios no Registry(Docker HUB)
* São compostas por uma ou mais camadas(layers)
* Uma camada representa uma ou mais mudanças no sistema de arquivo
* Uma camada é também chamada de imagem intermediária
* A junção dessas camadas formam a imagem
* A apenas a última camada pode ser alterada quando o container for iniciado
* **AUFS** (Advanced multi-layered unification filesystem) é muito usado
* O grande objetivo dessa estratégia de dividir uma imagem em camadas é o reuso
* É possivel compor imagens a partir de camadas de outras imagens

* Imagem é como uma Classe Orientado a Objetos e os Containers são objetos criados a partir da Classe Orientado a Objetos
* Container é o que realmente é startado e reescrito, a imagem né somente leitura

**Arquitetura**
* Docker DAEMON(ou Docker server ou Docker Engine): 

PASSOS:

1. A partir de um sistem CLI, você aessa o Docker DAEMON
2. o Docker DAEMON serve para duas coisas:
    1. Acessar uma Imagem da nuvem e baixar para o sistema do HOST
    2. Criar Containers a partir de uma Imagem baixada dentro do Host
