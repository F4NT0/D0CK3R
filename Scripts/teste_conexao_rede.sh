# Teste de Conexão de Dois container via ping

# Criado um container da imagem alpine
# Onde o nome do container é container1. onde ele fica ativo via deamon
# -d : faz rodar o container no modo deamon
# --name container1 : define o nome do container 
# sleep 1000:  faz com que o container continue ativo e executando
docker container run -d --name container1 alpine sleep 1000

# verificando as redes no do container usando o container
# no modo interativo e rodando o comando ifconfig para verificar as redes
# que estão configuradas nele
# verifique o inet addr do eth0: mostra qual endereço de rede

docker container exec -it container1 ifconfig

# Criando o segundo container como foi feito o container1
docker container run -d --name container2 alpine sleep 1000

# verificando a rede também do desse novo container
docker container exec -it container2 ifconfig

# Para se fazer o ping de um container em outro, é necessário
# saber qual o inet address do container
docker container exec -it container1 ping "inet addr do container2"

# Podemos pingar tbm uma página eepecifica dentro do container
docker container exec -it container1 ping www.google.com

