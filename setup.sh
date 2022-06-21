#!/bin/sh

IMG_NAME=${DOCKER_REGISTRY}bluedata/web-notes
IMG_VER=1.0
PUSHIMAGE=${PUSHIMAGE:-false}

tar -czvf configscripts/appconfig.tgz configscripts/appconfig > /dev/null

docker build -t ${IMG_NAME}:${IMG_VER} .

if [ $PUSHIMAGE = "true" ] ; then
    docker push ${IMG_NAME}:${IMG_VER}
fi

rm configscripts/appconfig.tgz