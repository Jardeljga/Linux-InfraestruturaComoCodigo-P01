#!/bin/bash

echo "Iniciando a execução dos comandos para criação do ambiente de usuários e grupos"

echo "Realizando a criação dos novos diretórios."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Realizando a criação dos grupos de usuários."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Realizando a crição dos usuários e os adicionando a seus devidos grupos."

useradd carlos -c "Carlos Silva" -m -s /bin/bash -p $(openssl passwd -crypt Dio123456) -G GRP_ADM
useradd maria -c "Maria Auxiliadora" -m -s /bin/bash -p $(openssl passwd -crypt Dio123456) -G GRP_ADM
useradd joao -c "João de Deus" -m -s /bin/bash -p $(openssl passwd -crypt Dio123456) -G GRP_ADM
useradd debora -c "Debora Teixeira" -m -s /bin/bash -p $(openssl passwd -crypt Dio123456) -G GRP_VEN
useradd sebastiana -c "Sebastiana Maria" -m -s /bin/bash -p $(openssl passwd -crypt Dio123456) -G GRP_VEN
useradd roberto -c "Roberto Cardoso" -m -s /bin/bash -p $(openssl passwd -crypt Dio123456) -G GRP_VEN
useradd josefina -c "Josefina Gomes" -m -s /bin/bash -p $(openssl passwd -crypt Dio123456) -G GRP_SEC
useradd amanda -c "Amanda Barbosa" -m -s /bin/bash -p $(openssl passwd -crypt Dio123456) -G GRP_SEC
useradd rogerio -c "Rogerio Brito" -m -s /bin/bash -p $(openssl passwd -crypt Dio123456) -G GRP_SEC

echo "Adicionando as devidas permissões aos diretórios criados"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Configurações finalizadas!"















