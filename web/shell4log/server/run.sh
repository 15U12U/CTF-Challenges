#!/bin/bash

docker stop shell4log-server-container
docker rm shell4log-server-container
docker rmi -f shell4log-server-image
docker build -t shell4log-server-image .
#docker run -p 8080:8080 --rm --name shell4log-server-container shell4log-server-image
