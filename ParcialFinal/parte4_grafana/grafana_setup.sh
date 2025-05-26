#!/bin/bash
sudo apt install -y adduser libfontconfig1
wget https://dl.grafana.com/oss/release/grafana_10.3.3_amd64.deb
sudo dpkg -i grafana_10.3.3_amd64.deb
sudo systemctl enable --now grafana-server
