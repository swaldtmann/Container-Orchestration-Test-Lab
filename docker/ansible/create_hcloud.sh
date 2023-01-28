#!/bin/bash

#set -x

. keep/.hcloud_token

ansible-playbook playbooks/hcloud_hosts.yml -v "$@"
