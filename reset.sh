#!/bin/sh

echo "stop docker..."
echo "----------------------"
docker-compose -f docker-compose-multe.yml down

echo "clean & update code..."
echo "----------------------"
git checkout .
git clean -df
git pull

echo "start docker..."
echo "----------------------"
docker-compose -f docker-compose-multe.yml up -d

echo "*********************"
docker ps
