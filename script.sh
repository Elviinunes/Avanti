#!bin/bash

echo "Criando diretórios..."

sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

echo "Criando grupos..."

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

echo "Criando usuários..."
#User on GRP_ADM
sudo useradd carlos -c "Carlos de Lima" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
sudo useradd maria -c "Maria de Fátima" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
sudo useradd joao -c "João Carlos" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
#User on GRP_VEN
sudo useradd debora -c "Débora da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
sudo useradd sebastiana -c "Sebastiana Moreira" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
sudo useradd roberto -c "Roberto Monteiro" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
#User on GRP_SEC
sudo useradd josefina -c "Josefina Bezerra" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
sudo useradd amanda -c "Amanda Souza" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
sudo useradd rogerio -c "Rogerio Falcão" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Modificando proprietário do diretório..."

# Alternando o proprietário
sudo chown root:GRP_ADM /adm
sudo chown root:GRP_VEN /ven
sudo chown root:GRP_SEC /sec

echo "Alterando as permissões dos diretórios..."
#Alterando as permissões de acesso de cada usuário
sudo chmod 777 /publico
sudo chmod 770 /adm
sudo chmod 770 /ven
sudo chmod 770 /sec

echo "Fim"