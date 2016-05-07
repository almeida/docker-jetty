#!/bin/bash
TAG_NAME=${1}
if [ -z "${TAG_NAME}" ]
  then
    echo "Error: Tag name required"
    exit 1
fi
docker build --force-rm=true -t almeida/jetty:${TAG_NAME} .
