#!/bin/sh

IMG_NAME=${DOCKER_REGISTRY}bluedata/web-notes
IMG_VER=2.0
PUSHIMAGE=${PUSHIMAGE:-false}

docker build -t ${IMG_NAME}:${IMG_VER} .

if [ $PUSHIMAGE = "true" ] ; then
    docker push ${IMG_NAME}:${IMG_VER}
fi
