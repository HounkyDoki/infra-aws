#!/bin/bash
sudo apt update -y
sudo apt install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx
