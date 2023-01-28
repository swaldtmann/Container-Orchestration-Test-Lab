#!/bin/bash
#set -x

# Erstellen der Hosts
./create_hcloud.sh "$@"

sleep 10

# Hosts vorbereiten
./run.sh -t "update,reboot" "$@"

sleep 5

./run.sh "$@"
