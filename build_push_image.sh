#!/bin/bash

image_name="rahmanislamien/item-app"
image_tag="v1"

docker build -t "item-app:v1" .

docker images

docker push "rahmanislamien/item-app:v1"