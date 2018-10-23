# Script de testes com portas para websites com docker
# o comando -p serve para pegar a porta de saida de um container
# e fazer ele sair por uma porta do host

# docker container run -p porta_Host:porta_Container imagem

# COMO FAZER ESSE SCRIPT EXECUTÁVEL: chmod +x Teste_Portas.sh
# PARA RODAR O PROGRAMA: ./Teste_Portas.sh

#Print de saida no terminal
printf "baixando o nginx e fazendo ele rodar na porta 8080"

#Comando que será executado no terminal
docker container run -p 8080:80 nginx

