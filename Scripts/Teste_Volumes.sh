# Script de teste de criação de volumes
# O comando -v serve para mapear um diretorio de fora do container
# com um diretorio do container
# docker container run -v $(pwd)/Diretorio_Host:/Diretorio_Container





# PARA TORNAR EXECUTÁVEL: chmod +x Teste_Volumes.sh
# PARA COMPILAR: ./Teste_Volumes.sh


#Criando um diretorio dentro do host
mkdir Pasta_1

#Criando um arquivo txt
nano arquivo.txt

#Fazendo um volume dentro do Container conectando com o do Host
docker container run -v $(pwd)/Pasta_1:/home/Pasta_1 debian

#Iniciando a imagem do Debian
docker container run -it debian

