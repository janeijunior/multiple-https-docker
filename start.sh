#!/bin/bash

cd nginx-proxy
echo " iniciando container nginx, nginx-gen e nginx-letsencrypt"
docker-compose up -d
sleep 5
cd ..

cd inmanager.com.br
echo " iniciando container inmanager.com.br"
docker-compose up -d
sleep 5
cd ..

cd easymanager.com.br
echo " iniciando container easymanager.com.br"
docker-compose up -d
sleep 5

echo " exit"
