#!/bin/bash

echo "Installing dependencies..."
apt-get update && apt-get install -y wget tar

echo "Downloading hellminer from custom source..."
wget https://github.com/moyz57/miner/blob/main/m5.tar.gz -O hellminer.tar.gz

echo "Extracting..."
tar -xvf hellminer.tar.gz

echo "Running miner..."
chmod +x ./hellminer
./hellminer -c stratum+tcp://na.luckpool.net:3956 -u RRW8L1SMPA7eyp6aGQHrXj1iDbRtbmRgaE.MOYZ1 -p x
