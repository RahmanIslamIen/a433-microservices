#!/bin/bash

# Login ke Docker Hub tapi gak perlu karena udah login docker desktop
# docker login

# Nama container image dan versi
IMAGE_NAME="rahmanislamien/shipping-service"
IMAGE_TAG="v1"

# membuat Build container image
docker build -t $IMAGE_NAME:$IMAGE_TAG .

# Tag container image
docker tag $IMAGE_NAME:$IMAGE_TAG $IMAGE_NAME:$IMAGE_TAG

# Push container image ke Docker Hub
docker push $IMAGE_NAME:$IMAGE_TAG

# Logout dari Docker Hub kalo butuh mau log-out
# docker logout