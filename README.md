# Container-Orchestration-Test-Lab

Test Lab for Container Orchestration with hcloud

## After Install

```bash
$ ssh-keygen -t ed25519 -C "cotl-ansible-control" -N '' -f keep/id_ed25519
$ cd ansible && ansible-galaxy collection install hetzner.hcloud
$ docker build --pull --rm -f "docker/Dockerfile" -t ansible-control "docker"
$ cd docker/ansible
$ make dcrun
```

the last command started the ansible-control docker container and the prompt is now inside this container.

Create ansible vault password file and ansible vault file:

```bash
echo "<your very safe password>" >> /ansible/keep/.vault_pass
ansible-vault create inventories/test/group_vars/all/vault
```

Insert the following definition in the vault file

```bash
---
vault_hcloud_token: <hcloud token here>
```

Create token in Hetzner Cloud ui and insert token in docker/ansible/keep/.hcloud_token.example
then rename to docker/ansible/keep/.hcloud_token

## hcloud host creation and deletion

```bash
# ./create_hcloud.sh --check # Check scripts
# ./create_hcloud.sh # Create hosts in hcloud !!! this will produce costs !!!
# ./delete_hcloud.sh # Delete hosts in hcloud
```

## Customize hosts

```bash
# ./run.sh -t "update,reboot" "$@"
# ./run.sh "$@"
```

## TODOs

- better solution for . keep/.hcloud_token
- Editing /etc/hosts file inside a docker container is not easy ... so we skip it.
  https://stackoverflow.com/questions/37860601/how-to-edit-etc-hosts-file-in-running-docker-container
