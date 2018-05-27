[Retornar](home)
|---|

# Página sobre Docker HUB

* Docker HUB é um serviço na nuvem onde lhe permite baixar imagens de Docker que são criadas pela Comunidade
* Você também pode fazer upload de suas proprias construções do Docker
* Aqui iremos mostrar como se Conectar no Docker Hub para baixar aquela imagem que deseja

### Passo 1:
* Você precisa fazer uma conta no Docker Hub neste [**Site**](https://www.docker.com/products/docker-hub)
### Passo 2:
* Faça uma pesquisa para saber qual imagem deseja baixar no Docker
### Passo 3:
* Entrando na Página da imagem que deseja, você verá informações sobre a imagem desejada
* No final da página, na área **Docker Pull Command** está o comando para baixar a imagem do servidor Ubuntu
* No terminal, utilize o seguinte comando:
    * [_`sudo docker pull nomeImagem`_]()
    * nomeImagem é como aparece o nome da imagem no Docker Hub
### Passo 4:
* Para saber se a imagem foi baixada, rode o comando abaixo:
    * [_`sudo docker images`_]()
    * Este comando lista todas as imagens dentro do seu sistema
