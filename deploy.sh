#!/bin/bash

## Get path to this script
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

## Config
LOCATION=us-central1
gcloud config set project gcp-wow-ent-it-security-dev
gcloud config set run/region $LOCATION
gcloud auth configure-docker $LOCATION-docker.pkg.dev

## Set env variables
SERVICE_NAME=malloy-test
REPOSITORY=malloy-composer
IMAGE=faa
FQN=$LOCATION-docker.pkg.dev/$DEVSHELL_PROJECT_ID/$REPOSITORY/$IMAGE:latest

## Run from source
gcloud run deploy $SERVICE_NAME --source $SCRIPT_DIR

## OLD
# docker build -t $FQN .
# docker push $LOCATION-docker.pkg.dev/$DEVSHELL_PROJECT_ID/$REPOSITORY/$IMAGE:latest
# gcloud run deploy malloy-test





