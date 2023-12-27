#!/bin/bash

echo "Criando script de atualização!!!"

echo "Atualizando o servidor"

apt-get update
apt-get upgrade -y

echo "Instando o Apache2..."

apt install apache2 -y

echo " Instalando o unzip..."

apt install unzip -y

echo "Baixar arquivo.."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip 
cd linux-site-dio-main 
cp -R * /var/www/html/





