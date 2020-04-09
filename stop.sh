#!/bin/bash

cd nginx-proxy
echo " parando container nginx, nginx-gen e nginx-letsencrypt"
docker-compose down
sleep 5
cd ..

cd inmanager.com.br
echo " parando container inmanager.com.br"
docker-compose down
sleep 5
cd ..

cd easymanager.com.br
echo " parando container easymanager.com.br"
docker-compose down
sleep 5

echo " exit"
