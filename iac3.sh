#!/bin/bash

echo "Atualizando o servidor . . . ."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação . . . ."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp cp -R * /var/www.html/   #copia os arquivos do repositorio para a pasta padrão do Apache (de maneira recursiva, ou seja, também as subpastas e seus conteúdos) 

echo "Concluído"
