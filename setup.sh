#!/bin/sh

IMG_NAME=${DOCKER_REGISTRY}bluedata/web-notes
IMG_VER=1.0

if [ ! $(docker image list | grep "${IMG_NAME}" | grep "${IMG_VER}") ]; then
    docker build -t ${IMG_NAME}:${IMG_VER} .
    docker push ${IMG_NAME}:${IMG_VER}
fi   

docker run -it -p 5000:5000 ${IMG_NAME}:${IMG_VER}
