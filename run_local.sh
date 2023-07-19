#!/bin/bash

DOCKER_RUN_ARGS=--network=host
IMAGE=faa

docker build -t $IMAGE .

docker run $DOCKER_RUN_ARGS $IMAGE &
