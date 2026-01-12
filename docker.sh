#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install ca-certificates gnupg curl

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update -y

sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin

sudo mkdir -p /usr/local/lib/docker/cli-plugins/

sudo curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/lib/docker/cli-plugins/docker-compose

sudo chmod +x /usr/local/lib/docker/cli-plugins/docker-compose

docker compose version


