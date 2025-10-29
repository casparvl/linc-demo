#!/bin/bash

# Installation
wget https://ecsft.cern.ch/dist/cvmfs/cvmfs-release/cvmfs-release-latest_all.deb
sudo dpkg -i cvmfs-release-latest_all.deb && 
rm -f cvmfs-release-latest_all.deb
sudo apt-get update
sudo apt-get install -y cvmfs

# Minimal config
sudo bash -c "echo 'CVMFS_CLIENT_PROFILE="single"' > /etc/cvmfs/default.local"
sudo bash -c "echo 'CVMFS_QUOTA_LIMIT=10000' >> /etc/cvmfs/default.local"

# Make sure it works
sudo cvmfs_config setup
