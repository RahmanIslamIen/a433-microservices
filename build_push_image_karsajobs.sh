#!/bin/bash

# untuk username dan password nya buat login kalo belum login docker desktop
# DOCKER_USERNAME="username"
# DOCKER_PASSWORD="password"

# bagian untuk nama repo dan nama image
DOCKER_REPO="nama_repo"
IMAGE_NAME="karsajobs-backend"

# Build Docker image
docker build -t $IMAGE_NAME .

# jika belum login dari docker dekstop
# docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD

# membuat Tag image agar sesuai dangan nama repository
docker tag $IMAGE_NAME $DOCKER_REPO/$IMAGE_NAME

# Push image ke Docker Hub
docker push $DOCKER_REPO/$IMAGE_NAME
