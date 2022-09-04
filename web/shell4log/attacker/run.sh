#!/bin/bash

docker stop shell4log-attacker-container
docker rm shell4log-attacker-container
docker rmi -f shell4log-attacker-image
docker build -t shell4log-attacker-image .
#docker run -p 8080:8080 --rm --name shell4log-attacker-container shell4log-attacker-image
