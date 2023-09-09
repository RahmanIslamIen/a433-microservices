#!/bin/bash

image_name="rahmanislamien/item-app"
image_tag="v1"

docker build -t "rahmanislamien/item-app:v1" .

docker login -u USERNAME -p PASSWORD

docker push "rahmanislamien/item-app:v1"

docker images