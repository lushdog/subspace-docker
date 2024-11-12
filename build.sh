#!/bin/bash

docker build . -f Dockerfile.farm --tag trancelife/subspace-farmer:latest --no-cache
docker build . -f Dockerfile.node --tag trancelife/subspace-node:latest --no-cache

# 执行 docker info 并查找是否有 "trancelife"
if docker info | grep "trancelife"; then
    # 如果有内容，执行 docker push
    echo "Found 'trancelife', executing 'docker push'..."
    docker trancelife/subspace-farmer:latest
    docker trancelife/subspace-node:latest
else
    # 如果没有找到，不执行 docker push
    echo "'trancelife' not found, skipping 'docker push'."
fi
