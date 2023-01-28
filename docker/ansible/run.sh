#!/bin/bash

#set -x

#ansible-playbook playbooks/site.yml --list-hosts
ansible-playbook playbooks/site.yml "$@"
