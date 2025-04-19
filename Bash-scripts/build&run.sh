#!/bin/bash
sudo docker build -t jenkins .

sudo docker run -d  -v $(pwd)/jenkinsvolume:/var/jenkins_home  -v /var/run/docker.sock:/var/run/docker.sock  -v $(which docker):/usr/bin/docker -p 8080:8080 -p 50000:50000 jenkins

sudo docker ps -a