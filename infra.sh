#!/bin/bash

sudo su -
apt-get update && apt-get upgrade -y
apt-get remove docker docker-engine docker.io
apt-get -y install apt-transport-https ca-certificates curl software-properties-common docker.io socat composer docker-compose git
systemctl daemon-reload
systemctl enable docker
systemctl restart docker
docker --version

echo " Criando network nginx-proxy"
docker network create --driver bridge nginx-proxy

echo " exit"
