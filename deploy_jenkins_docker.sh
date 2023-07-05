#!/bin/bash

docker network create jenkins 2>/dev/null

docker run --name jenkins-container -d \
	--network jenkins \
	-p 8080:8080 \
	--volume jenkins-docker-certs:/certs/client \
	--volume jenkins-data:/var/jenkins_home \
	--publish 2376:2376 \
	--restart always \
	jenkins/jenkins:lts
