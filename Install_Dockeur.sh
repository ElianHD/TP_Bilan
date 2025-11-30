#!/bin/bash

set -e
apt update
apt upgrade
apt install curl -y
apt install ca-certificates -y
curl https://get.docker.com | bash
apt install docker-compose -y
systemctl enable --now docker
systemctl start docker
echo "Terminer "

apt install containerd.io=1.7.28-1~debian.12~bookworm -y
docker run hello-world
