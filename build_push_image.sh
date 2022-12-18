#!/bin/bash

docker build -t item-app:v1 . # build npm application with item-app image name and v1 tag
docker images # list all docker images

# this command below is working with dockerhub which is not used.
: '
docker tag item-app:v1 arr16/item-app:v1
echo $PASSWORD_DOCKER_HUB | docker login -u arr16 --password-stdin
docker push arr16/item-app:v1
'

docker tag item-app:v1 ghcr.io/arrizki16/item-app:v1 # Rename item-app images to github container registry format name
echo $CR_PAT | docker login ghcr.io -u Arrizki16 --password-stdin # Login to github container registry
docker push ghcr.io/arrizki16/item-app:v1 # Push images to docker container registry with v1 tag
