#!/bin/bash

docker stop also-unknown-as-container
docker rm also-unknown-as-container
docker rmi -f also-unknown-as-image
docker build -t also-unknown-as-image .
#docker run -dit -p 2222:22 --name also-unknown-as-container also-unknown-as-image
