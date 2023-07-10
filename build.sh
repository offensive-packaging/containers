#!/bin/bash

REGISTRY_USER=$1
REGISTRY_PASSWORD=$2
DOCKER_USER=$3
DOCKER_PASSWORD=$4
NAME=$5
BUILDPATH=$6
BRANCH=5.3

echo $REGISTRY_PASSWORD | docker login -u $REGISTRY_USER --password-stdin registry.parrot.run
echo $DOCKER_PASSWORD | docker login -u $DOCKER_USER --password-stdin docker.io
docker pull tonistiigi/binfmt:latest
docker run --privileged --rm tonistiigi/binfmt --uninstall qemu-*
docker run --privileged --rm tonistiigi/binfmt --install all
docker run --rm --privileged multiarch/qemu-user-static --reset -p yes -c yes
docker context create build-env || true
docker buildx create --name multiarch-build --use build-env --driver docker-container --bootstrap --buildkitd-flags '--allow-insecure-entitlement security.insecure' --use
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 --allow security.insecure --tag parrotsec/${NAME}:$BRANCH --tag parrotsec/${NAME}:latest --tag registry.parrot.run/${NAME}:$BRANCH --tag registry.parrot.run/${NAME}:latest --push $BUILDPATH
