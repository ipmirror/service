#!/bin/sh

# Sync
#ftp2mfs --config ./configs/alpine.yml
ftp2mfs --config ./configs/debian.yml

# Update IPNS
cid=$(ipfs files stat /mirror/debian)
ipfs name publish -k debian $cid
