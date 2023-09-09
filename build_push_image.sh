#!/bin/bash

image_name="rahmanislamien/item-app"
image_tag="v1"

docker build -t "rahmanislamien/item-app:v1" .

#jika belum login
#docker login -u <USERNAME> -p <PASSWORD>

#login tidak perlu karena sudah bisa login dari docker desktop sebelum nya

docker push "rahmanislamien/item-app:v1"

docker images