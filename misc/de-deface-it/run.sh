#!/bin/bash

docker stop de-deface-it-container
docker rm de-deface-it-container
docker rmi -f de-deface-it-image
docker build -t de-deface-it-image .
#docker run -d -p 8080:80 -p 2222:22 --name de-deface-it-container de-deface-it-image
