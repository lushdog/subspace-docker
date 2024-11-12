#!/bin/bash

docker build . -f Dockerfile.farm --tag trancelife/subspace-farmer:latest --no-cache
docker build . -f Dockerfile.node --tag trancelife/subspace-node:latest --no-cache

if docker info | grep "trancelife"; then
    echo "Found 'trancelife', executing 'docker push'..."
    docker push trancelife/subspace-farmer:latest
    docker push trancelife/subspace-node:latest
else
    echo "not login, skipping 'docker push'."
fi
