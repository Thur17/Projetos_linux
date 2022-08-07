#!/bin/bash

echo "atualização"

apt-get update
apt-get upgrade -y 

echo "instalação do apache"

apt-get install apache2 -y

echo "instalação do unzip"

apt-get install unzip -y

echo "baixando arquivos"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Finalizado"