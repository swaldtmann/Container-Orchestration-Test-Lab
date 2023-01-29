#!/bin/bash
#set -x

# Creating hosts
./create_hcloud.sh "$@"

sleep 10

# Custimize hosts
./run.sh -t "update,reboot" "$@"

sleep 5

./run.sh "$@"
