#!/usr/bin/env bash

NAMESPACE='bedrocksolutions'
IMAGE_NAME='tfa-bot'
TAG='latest'

set -xe

docker push ${NAMESPACE}/${IMAGE_NAME}:${TAG}
