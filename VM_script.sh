#!/bin/bash

apt install sudo | yes
sudo apt-get install ca-certificates curl gnupg lsb-release | yes
sudo mkdir -p /etc/apt/keyrings
 curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
 echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
 sudo chmod a+r /etc/apt/keyrings/docker.gpg
 sudo apt-get update
 sudo apt-get install docker-ce docker-ce-cli containerd.io
 docker-compose-plugin | yes
 sudo systemctl enable docker.service // автозапуск докера при boot системы
 sudo systemctl enable containerd.service

 #импортнуть переменные в дебиане чтоб по ssh не ругался 
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8 

#MARIADB 
apt install mariadb-server
systemctl status mariadb

#WordPress
apt install php libapache2-mod-php php-mysql

