# CADA COMANDO É FEITO EM ORDEM DE CIMA PARA BAIXO
# É IMPORTANTE QUE OS COMANDOS ESTÁVEIS SEJAM COLOCADOS NO INICIO

#utilizando a imagem do python 3.6
FROM python:3.6

#Label de a quem pertence essa imagem
LABEL maintainer 'F4NT0'

# na instrução RUN podemos colocar vários comandos para serem feitos na 
# imagem de uma unica vez, somente quebrando a linha(\)

# useradd: adiciona um usuário(neste caso o www)
# && \ : serve para concatenar vários comando de uma única vez
# mkdir: criamos diretórios na imagem(neste caso o /app e /log)
# chwon www /log: serve para dizer que o dono do diretorio /log é o usuario www
RUN useradd www && \
    mkdir /app && \
    mkdir /log && \
    chown www /log

# comando que serve para dizer qual usuário estará logado na imagem
USER www

# comando que serve para dizer qual é o volume da imagem
VOLUME /log 

# comando para dizer qual será o diretório de trabalho deste projeto
WORKDIR /app 

# comando para expor uma porta da imagem para fora dela
EXPOSE 8000


# comando para dizer qual processo será executado quando o container for
# iniciado, neste caso sendo o Python
ENTRYPOINT ["/etc/python"]

# comando que será chamado para o ENTRYPOINT definido acima,
# sendo o comando que será inicializado no python
CMD ["run.py"]


# QUANDO FOR EXECUTAR
# FAZENDO BUILD DESSA IMAGEM: docker image build -t teste-imagem-python
# docker image build: serve para fazer build da imagem
# -t teste-imagem-python: serve para colocar a tag teste-imagem-python na imagem

# CRIANDO UM CONTAINER DESSA IMAGEM: docker container run -it -v $(pwd):/app --name python-server teste-imagem-python
# docker container run: serve para iniciar um container
# -it: serve para apresentar no terminal o container que está sendo criado
# -v $(pwd):/app: serve para criar um volume do diretorio atual do host($(pwd)) em um
# diretorio interno dentro do container chamado /app
# --name python-server teste-imagem-python: coloca o nome do container que será criado
# encima da imagem teste-imagem-python



