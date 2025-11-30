#!/bin/bash

set -e
apt update
apt upgrade
echo "Update && Upgrade des Paquets"
apt install curl -y
apt install ca-certificates -y
echo "Installation DOCKEUR sur le dockeur.com"
curl https://get.docker.com | bash
apt install docker-compose -y
systemctl enable --now docker
systemctl start docker
apt install containerd.io=1.7.28-1~debian.12~bookworm -y
echo "Terminer "


