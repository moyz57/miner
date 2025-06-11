#!/bin/bash

echo "Installing dependencies..."
apt-get update && apt-get install -y wget tar

echo "Downloading hellminer from custom source..."
wget https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/assets/hellminer_cpu_linux.tar.gz -O hellminer.tar.gz

echo "Extracting..."
tar -xvf hellminer.tar.gz

echo "Running miner..."
chmod +x ./hellminer
./hellminer -c stratum+tcp://na.luckpool.net:3956 -u RRW8L1SMPA7eyp6aGQHrXj1iDbRtbmRgaE.moyz1 -p x
