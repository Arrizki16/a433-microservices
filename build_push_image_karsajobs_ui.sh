#!/bin/bash

docker build -t karsajobs-ui:latest . # build karsajobs-ui from dockerfile config

docker image tag karsajobs-ui:latest ghcr.io/arr16/karsajobs-ui:latest # rename images to ghcr policy name

echo $PASSWORD_DOCKER_HUB | docker login ghcr.io -u arr16 --password-stdin # login to github ghcr.io

docker push ghcr.io/arr16/karsajobs-ui:latest # push image to ghcr io github