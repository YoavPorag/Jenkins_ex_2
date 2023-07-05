#!/bin/bash


docker network create jenkins 2>/dev/null

docker run --name jenkins-container -d \
	--network jenkins \
	-p 8080:8080 \
	-p 50000:50000 \
	-p 2376:2376 \
	--volume jenkins-docker-certs:/certs/client \
	--volume jenkins-data:/var/jenkins_home \
	--restart always \
	jenkins/jenkins:lts
