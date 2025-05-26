#!/bin/bash
sudo apt update
sudo apt install -y docker.io docker-compose
cd ~/MiniWebApp
sudo docker-compose up -d --build
