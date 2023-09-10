#!/bin/bash

# untuk login docker masukan username dan password
# DOCKER_USERNAME="username"
# DOCKER_PASSWORD="password"

# untuk nama image dan nama repository
DOCKER_REPO="nama_repo"
IMAGE_NAME="karsajobs-ui"

# Build Docker image
docker build -t $IMAGE_NAME .

# Untuk login ke Docker kalo belum login docker dekstop
# docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD

# Membuat tag image agar sesuai dangan nama repository
docker tag $IMAGE_NAME $DOCKER_REPO/$IMAGE_NAME

# Push image ke Docker Hub
docker push $DOCKER_REPO/$IMAGE_NAME
