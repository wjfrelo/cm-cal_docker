#!/usr/bin/env bash

# Install docker
sudo apt-get install -y git maven apt-transport-https ca-certificates curl software-properties-common

# Add docker repo key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Setup repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Install docker
sudo apt-get install docker-ce

# Allow user access
sudo usermod -a -G docker ubuntu

# uninstall packages sudo apt-get purge docker-ce docker-ce-cli containerd.io
# delete all images sudo rm -rf /var/lib/docker

