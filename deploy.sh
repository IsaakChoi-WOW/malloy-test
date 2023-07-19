#!/bin/bash

LOCATION=us-central1
REPOSITORY=malloy-composer
IMAGE=faa
FQN=$LOCATION-docker.pkg.dev/$DEVSHELL_PROJECT_ID/$REPOSITORY/$IMAGE:latest

gcloud auth configure-docker $LOCATION-docker.pkg.dev

docker build -t $FQN .

docker push $LOCATION-docker.pkg.dev/$DEVSHELL_PROJECT_ID/$REPOSITORY/$IMAGE:latest

