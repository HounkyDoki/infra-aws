#!/bin/bash

# Met à jour la machine
sudo apt update -y && sudo apt upgrade -y

# Installe NGINX
sudo apt install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx

# Installe Grafana
sudo apt install -y software-properties-common
sudo apt-add-repository "deb https://packages.grafana.com/oss/deb stable main"
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
sudo apt update -y
sudo apt install grafana -y
sudo systemctl enable grafana-server
sudo systemctl start grafana-server

# Installe l’agent CloudWatch
cd /tmp
wget https://s3.amazonaws.com/amazoncloudwatch-agent/ubuntu/amd64/latest/amazon-cloudwatch-agent.deb
sudo dpkg -i -E ./amazon-cloudwatch-agent.deb
