### Redes no Docker

Modelo do Docker padrão: Bridge

Tipos de Redes:
* None Network(não precisar de Rede)
* Bridge Network(padrão)
* Host Network(Container direto a interface do Host)
* Overlay Network(Swarm)

#### Comandos para verificar e interagir com Redes

* [_`docker network ls`_](): serve para verificar todas as redes no sistema
    * Já por padrão do Docker existem 3 redes que ja vem com o Docker, uma Bridge, uma host e uma none


#### Tipos de Redes e usos

1. **None Network**
    1. Quando você possui um container que não precisa de rede de internet, utilize a opção none network
    2. Ele deixa os containers isolados dentro de seu computador
    3. Como ativar essa opção: [_`--net none`_]()
    4. Ex: [_`docker container run -d --net none debian`_]()
    5. Se existir somente a rede `lo` significa que o container não tem rede externa(depois de rodar o comando `ifconfig`)

2. **Bridge Network**
    1. Possui um isolamento do tipo `ponte` que separa os containers do sistema da internet do Host
    2. Utilizamos o comando [_`docker network ls`_]() para ver todas as redes no sistema
    3. para inspecionar uma rede já definida, use o comando [_`docker network inspect nomeRede`_](), que no nosso caso é bridge
    4. Ex: [_`docker network inspect bridge > bridge.txt`_]()
        1. `> bridge.txt`: serve para organizar a informação em um arquivo texto externo
    5. Podemos verificar que as redes do sistema permitidos, estão na área de `subnet` no arquivo criado sobre as informações da imagem, onde possui o seguinte numero de exemplo: `172.17.0.0` onde os `172.17` são os numeros da rede e os `0.0` podem ser de 0 á 255 em cada zero.
    6. Quando criamos um container em cima da imagem, cada container possui um numero diferente de `inet addr` que podemos usar em outros containers(ex: fazer ping de um container em outro)
    7. **Criando uma nova rede tipo bridge:**
        1. Normalmente não podemos conectar containers de redes, mas isso será visto mais tarde
        2. Comando para criar uma nova rede: [_`docker network create --driver bridge nomeRede`_]()
            1. `docker network create`: serve para criar um novo network para seu sistema
            2. `--driver bridge`: serve para definir qual tipo de driver de rede desejamos, nesse caso sendo o bridge
            3. `nomeRede`: é o nome da rede que desejamos criar
            4. para definirmos qual rede será usado no container, usamos o `--net nomeRede` para que o container seja iniciado no novo network criado 
    8. **Configurando um container com outra rede**
        1. **Conectando em uma nova rede**: utilizamos o comando: [_`docker network connect nomeRede nomeContainer`_]()
            1. `docker network connect`: serve para conectar um container em uma rede especifica
            2. `nomeRede`: é o nome da rede desejada, depois de verificar com [_`docker network ls`_]()
            3. `nomeContainer`: é o nome do container que desejamos colocar a nova rede, verificando com [_`docker container ls`_]()
            4. Para verificar as redes só usar o comando [_`docker container exec -it nomecontainer ifconfig`_]()
        2. **Disconectando uma rede do container**: utilizamos o seguinte comando: [_`docker network disconnect nomeRede nomeContainer`_]()
3. **HOST network**
    1. Você não tiver nenhuma ponte com a rede do host com os containers
    2. Para saber as interfaces de redes do HOST, utilize o [_`ifconfig`_]() para verificar todas as redes do sistema
    3. conectando a rede host: [_`--net host`_]() quando for fazer um container novo
    4. Seu container fica muitos mais exposta a rede, todas as redes se conectam no container criado