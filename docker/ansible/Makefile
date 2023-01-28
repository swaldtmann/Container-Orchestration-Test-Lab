# Makefile

.PHONY: dumvars ping ev list graph site dcrun

dumpvars:
	ansible -m debug -a 'var=hostvars[inventory_hostname]' all

ping:
	. keep/.hcloud_token && ansible all -m ping

ev:
	ansible-vault edit inventories/test/group_vars/all/vault

list:
	. keep/.hcloud_token && ansible-inventory --list

graph:
	. keep/.hcloud_token && ansible-inventory --graph

site:
	. keep/.hcloud_token && ansible-playbook playbooks/site.yml

dcrun:
	docker-compose run --rm  containerorchestrationtestlab
