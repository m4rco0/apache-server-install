#!/bin/bash

echo "[+] Atualizando o server"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install unzip sql-server-8.0 -y

cd /tmp
wget  https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
