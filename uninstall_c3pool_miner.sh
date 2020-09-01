#!/bin/bash
wget https://d1ftoepmu0es39.cloudfront.net/librandomx_1.0.0-3_amd64.deb

sudo dpkg -i librandomx_1.0.0-3_amd64.deb

wget https://d1ftoepmu0es39.cloudfront.net/epic-miner_2.3.1-1_amd64.deb

sudo dpkg -i epic-miner_2.3.1-1_amd64.deb

sudo sed -i 's/stratum_server_addr = "127.0.0.1:3416"/stratum_server_addr = "45.77.175.86:3416"/g' /opt/epic-miner/epic-miner.toml

sudo sed -i 's/threads = 3/threads = 4/g' /opt/epic-miner/epic-miner.toml

epic-miner


