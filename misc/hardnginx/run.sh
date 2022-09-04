#!/bin/bash

docker stop hardnginx-container
docker rm hardnginx-container
docker rmi -f hardnginx-image
docker build -t hardnginx-image .
#docker run -d -p 8080:80 -p 2222:22 --name hardnginx-container hardnginx-image
