## Coordenando multiplos containers

* É interessante criar um container para cada serviço
* Criamos um arquivo chamado `docker-compose` que serve para criar uma conexão de várias imagens, onde elas possuem uma referencia e é criado um container para cada imagem 

#### Micro Service
* criar vários serviços separados para ter um melhor controle de problemas
* Serviços independentes, ciclos independentes e deploy independentes
* com docker compose podemos muito simples construir todo o sistema organizado e configurar tranquilamente os containers

#### Usando Compose
* Service é a palavra que usamos para dizer que vamos criar um container de uma imagem especifica
* O Exemplo se encontra na pasta Scripts/Teste_dockerCompose
* Criamos um arquivo chamado [_`docker-compose.yml`_]() que será criado a conexão de vários containers