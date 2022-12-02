#!/bin/bash
sudo apt update
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ubuntu
sudo systemctl restart docker
sudo docker info
                