#!/bin/bash

source .env

mkdir -p ./cfg/auth
docker-compose run registry htpasswd -Bbn ${REGISTRY_USER} ${REGISTRY_PASSWORD} > ./cfg/auth/htpasswd
