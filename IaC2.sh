#!/bin/bash

echo  "Atualizando o servidor..."

apt-get update
agt-get upgrade -y

echo "Instalando o apache..."

apt-get install apache2 -y

echo "Instalando o unzip"

apt-get  install unzip

cd /tmp

echo "Configurando o servidor..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/


