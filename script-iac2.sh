#!/bin/bash

echo "Atualizando Pacotes..."
apt-get update 
apt-get upgrade -y

echo "Instalando Servidor Web..."
apt-get install apache2 -y

echo "Instalando descompactador (unzip)..."
apt-get install unzip -y

echo "Baixando aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip 
cd linux-site-dio-main

echo "Copiando arquivos da aplicação para o diretório padrão do apache..."
cp -R * /var/www/html/ 

echo "Finalizando Tarefa..."
