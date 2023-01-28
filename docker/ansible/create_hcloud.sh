#!/bin/bash

#set -x

. keep/.hcloud_token

ansible-playbook playbooks/hcloud_hosts.yml -v "$@"

#sleep 5

#ansible-playbook playbooks/local_etc_hosts.yml "$@"
