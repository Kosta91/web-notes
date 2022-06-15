#!/bin/sh

docker build -t ${DOCKER_REGISTRY}bluedata/web-notes:1.0 .

docker run -it --name dummy -p 5000:5000 ${DOCKER_REGISTRY}bluedata/web-notes:1.0
