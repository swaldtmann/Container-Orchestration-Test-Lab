#!/bin/bash

#set -x

. keep/.hcloud_token

#ansible-playbook playbooks/site.yml --list-hosts
ansible-playbook playbooks/site.yml "$@"
