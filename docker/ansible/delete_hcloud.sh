#!/bin/bash

#set -x

. keep/.hcloud_token

#ansible-playbook playbooks/local_etc_hosts.yml -e host_status=absent "$@"

#sleep 5

ansible-playbook playbooks/hcloud_hosts.yml -v -e host_status=absent "$@"
