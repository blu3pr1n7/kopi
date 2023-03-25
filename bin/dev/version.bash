#!/usr/bin/env bash

SEED="0.0.0.0"
CUR_VERSION=$(git tag -l | head -n 1)


if [ -z "${CUR_VERSION}" ]
then
      git tag ${SEED}
else

fi