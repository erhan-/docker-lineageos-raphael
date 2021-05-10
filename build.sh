#!/bin/bash

mkdir -p volume/lineage
mkdir -p volume/zips
mkdir -p volume/logs
mkdir -p volume/cache
mkdir -p volume/keys
mkdir -p volume/manifests

docker run \
    -e "BRANCH_NAME=lineage-18.1" \
    -e "DEVICE_LIST=raphael" \
    -e "SIGN_BUILDS=true" \
    -e "INCLUDE_PROPRIETARY=false" \
    -e "CCACHE_SIZE=60G" \
    -e "WITH_SU=true" \
    -e "RELEASE_TYPE=UNOFFICIAL" \
    -v "./volume/lineage:/srv/src" \
    -v "./volume/zips:/srv/zips" \
    -v "./volume/logs:/srv/logs" \
    -v "./volume/cache:/srv/ccache" \
    -v "./volume/keys:/srv/keys" \
    -v "./volume/manifests:/srv/local_manifests" \
    lineageos4microg/docker-lineage-cicd