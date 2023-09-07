#!/bin/bash

image_name="item-app"
image_tag="v1"

docker build -t "item-app:v1" .

docker images
