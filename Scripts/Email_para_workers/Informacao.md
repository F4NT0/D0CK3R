### Projeto Final do curso de Docker

* Projeto para envio de E-mails com Workers

![Projeto_final](https://github.com/F4NT0/Docker_Info/Imagens/projeto_final.png)


* Este projeto será completo, tendo todas as áreas do que aprendemos até agora
* Cada quadrado é um container 
* Serão 10 passos para o projeto final
* Cada container teremos um sistema de segurança para evitar que nosso sistema seja invadido

1. Primeiro passo
    1. Criando o container do Banco de Dados
    2. iremos usar o postgress: 9.6
    3. iremos usar o terminal integrado do vscode
    4. Criar um arquivo `docker-compose.yml`
    5. um dos services(containers) será o do banco de dados(db) que terá a imagem do `postgres:9.6`
    6. iremos ir no diretorio onde se eoncontra o docker-compose e iremos usar o seguinte comando:
        1. [_`docker-compose up -d`_]() que irá fazer o arquivo rodar como se fosse um Deamon(interno)
    7. Para verificar qual docker-compose está rodando usamos o comando [_`docker-compose ps`_]() para ver todos os docker-compose rodando nesse momento
    8. como criamos o service chamado db, podemos usar esse nome para fazer verificações no banco de dados:
        1. [_`docker-compose exec db psql -U postgres -c '\l'`_]()
            1. `docker-compose exec db`: serve para executar um comando dentro do service db definido no docker-compose
            2. `psql -U postgres -c '\l'`: `-U` é para listar os usuários, `postgres` é a imagem que usamos, `-c '\l'` serve para listar todos os bancos de dados disponiveis
            3. iremos parar o docker-compose, porque ja fizemos o teste do db, usamos então o comando [_`docker-compose down`_]()
2. Segundo Passo
    1. criando os volumes e scripts para o banco de dados
    2. é criado uma nova pasta onde irá ficar os scripts, chamada de `scripts`
    3. dentro desse diretório, iremos criar um arquivo sql chamado de init, que pode ser visto [aqui](https://github.com/F4NT0/Docker_Info/Email_para_workers/scripts/init.sql)
    4. Iremos criar o arquivo check.sql, que irá servir para verificar informações do banco de Dados
    5. voltamos ao `docker-compose` e fazemos a criação de um volume geral, conectamos o dir scripts em um dir chamado scripts dentro do container(trabalhando com volume)
    6. verificando a wiki do postgres, para conectar o arquivo init com o init do banco de dados usamos o seguinte comando:
        1. [_`- ./scripts/init.sql:/docker-entrypoint-initdb.d/init.sql`_]()
        2. se quiser, pesquise `docker-entrypoint` na documentação do postgres no docker HUB onde está a imagem, esse padrão de nomenclatrua serve para sair scripts na iniciação
        3. Pare todos os docker-compose que ficaram rodando com [_`docker-compose down`_]()
        4. inicie o docker-compose como Deamon: [_`docker-compose up -d`_]()
        5. faça uma verificação com o seguinte comando: [_`docker-compose exec db psql -U postgres -f /scripts/check.sql`_]()
        6. este comando irá iniciar o arquivo check e mostrar na tela todas as informações configuradas no arquivo `check.sql`
3. Terceiro Passo
    1. Crie um diretorio chamado web
    2. no `docker-compose` faça a parte do front-end
    3. No `frontend`, conectamos a imagem do `nginx:1.13` 
    4. Criamos um volume que irá conectar o dir web com  o html do nginx: `./web:/usr/share/nginx/html/`
    5. para verificar os logs do docker-compose: [_`docker-compose logs -f -t `_]()
4. Quarto Passo
    1. Criar o app para enfileirar as mensagens
    2. será criado em python
    3. será criado um diretorio chamado app
    4. um arquivo dentro do diretorio app chamado app.sh
    5. no arquivo app.sh fazemos as conexões com o arquivo python
    6. criamos um arquivo python chamado sender.py
    7. este programa python servirá para fazer a postagem
5. Quinto Passo
    1. Criação de um Proxy Reverso
    2. para constrolar daonde vai entrar a requisição no nosso projeto
    3. Criaremos um diretorio dentro do nosso projeto chamado `nginx`
    4. Dentro dele criamos um arquivo chamado `default.config`
    5. chamamos no docker-compose na área com o comentário `configuração do proxy reverso`
    6. Alteramos depois no html para que ele pegue o caminho do proxy reverso, na área do action
    7. 