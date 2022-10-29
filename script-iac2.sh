#!/bin/bash

echo "Atualizando o servidor..."
apt-get update 
apt-get upgrade 
apt-get install apache2 unzip -y
cd /tmp

echo "baixando e copiando os arquivos da aplicação..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/ 

echo "FIM"
