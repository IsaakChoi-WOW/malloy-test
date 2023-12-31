#!/bin/bash

## Set env variables
LOCATION=us-central1
REPOSITORY=malloy-composer
IMAGE=faa
FQN=$LOCATION-docker.pkg.dev/$DEVSHELL_PROJECT_ID/$REPOSITORY/$IMAGE:latest

## Config
gcloud auth configure-docker $LOCATION-docker.pkg.dev

##
docker build -t $FQN .

##
docker push $LOCATION-docker.pkg.dev/$DEVSHELL_PROJECT_ID/$REPOSITORY/$IMAGE:latest

##
gcloud run deploy malloy-test
