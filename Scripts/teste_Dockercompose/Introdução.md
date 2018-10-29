## TESTE DE DOCKER COMPOSE

* Este arquivo serve para explicar como funciona esse diretorio

* `Backend`: é o diretorio onde fica o container backend do projeto
* `Frontend`: é o diretorio onde fica o container frontend do projeto

### O que fazemos nos diretorios
* **Backend**: 
    * Criamos o arquivo `app.js`
    * verificamos se temos o node no sistema: `npm init -y`
    * baixando os programas para o exemplo de Back-End
        * express@4.15.3
        * mongoose@4.11.1
        * node-restful@0.2.6
        * body-parser@1.17.2
        * cors@2.8.3
    * instalando esses programas: `npm i --save programa1 programa2 ...`
    * deixe baixando os programas no diretorio desejado
    * Depois de baixado, abra o arquivo `app.js` e coloque o seguinte código:
```javascript
const express = require('express')
const restful = require('node-restful')
const server = express()
const mongoose = restful.mongoose

//database
mongoose.Promise = global.Promise
mongoose.connect('mongodb://db/mydb')

//teste 
server.get('/', (req,res,next) => res.send('Backend'))

//iniciar server
server.listen(3000)
```
* Com isso feito, iremos  configurar nosso `docker-compose.yml`
    * definimos a versão do docker-compose: [_`version: '3'`_]()
    * em arquivos `yml` funciona a partir da identaçao colocada nele, então ele vai seguindo o caminho da identação
```yml
# Versão do sistema do docker-compose
version: '3'
# definindo as imagens(que serão os serviços) deste docker-compose
services:
# imagem do banco de dados
  db:
    image: mongo:3.4
# imagem do backend do sistema, assim como volume definido e a
# porta que iremos utilizar do container
  backend:
    image: node:8.1
    volumes:
      - ./Backend:/Backend
    ports:
      - 3000:3000
# será rodado o comando abaixo dentro do container do backend
    command: bash -c "cd /Backend && npm i && node app"
# será criado agora um novo service, que é o front-end
  frontend:
    image: nginx:1.13
# configuramos um volume para conectar o diretorio do front-end externo
# com o diretorio de dentro do container
    volumes: 
      - ./frontend:/usr/share/nginx/html/
    ports:
      - 80:80
```
* depois de construido o arquivo `docker-compose.yml`
* para usarmos o docker-compose: [_`docker-compose up`_]()
* Esperar carregar e instalar todas as dependencias necessárias
* Quando colocar na web `localhost:90` ele irá mostrar o front-end
* Quando colocar na web `localhost:3000` ele irá mostrar o back-end