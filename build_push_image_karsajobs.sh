#!/bin/bash

docker build -t karsajobs:latest . # build images karsajobs based from dockerfile config

docker image tag karsajobs:latest ghcr.io/arr16/karsajobs:latest # rename images to ghcr policy name

echo $PASSWORD_DOCKER_HUB | docker login ghcr.io -u arr16 --password-stdin # login to github ghcr.io

docker push ghcr.io/arr16/karsajobs:latest # push image to ghcr io github