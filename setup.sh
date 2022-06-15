#!/bin/sh

IMG_NAME=${DOCKER_REGISTRY}bluedata/web-notes
IMG_VER=2.0
PUSHIMAGE=${PUSHIMAGE:-false}

if [ ! $(docker image list | grep "${IMG_NAME}" | grep "${IMG_VER}") ] ; then
    docker build -t ${IMG_NAME}:${IMG_VER} .
    
    if [ $PUSHIMAGE = "true" ] ; then
        docker push ${IMG_NAME}:${IMG_VER}
    fi
fi   

docker run -it -p 5000:5000 ${IMG_NAME}:${IMG_VER}
