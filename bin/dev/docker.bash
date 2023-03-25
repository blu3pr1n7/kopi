#!/usr/bin/env bash
PROJECT_NAME=$1
VERSION=$2
docker build \
  -t $(PROJECT_NAME):latest \
  -t $(PROJECT_NAME):$(VERSION)