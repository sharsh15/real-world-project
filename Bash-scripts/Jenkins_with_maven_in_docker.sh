#!/bin/bash

mkdir jenkinsvolume
sudo chown -R 1000:1000 $(pwd)/jenkinsvolume

sudo apt update -y
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt install -y docker-ce
echo "***********************************************" 
echo "Docker installed successfully"
echo "***********************************************" 

sudo systemctl status docker --no-pager | head -n 20