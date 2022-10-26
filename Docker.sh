#!/bin/bash

#Date: 10/25/22

#### This is to install Docker ingine \n 

echo "Installing Docker engine. This will start in a few minutes......................"

echo "\n"

sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin
yum list docker-ce --showduplicates | sort -r

sudo systemctl status docker
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker
sudo docker run hello-world

echo "docker installation successful"


