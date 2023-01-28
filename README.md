# Container-Orchestration-Test-Lab

Test Lab for Container Orchestration with hcloud

## After Install

```bash
$ ssh-keygen -t ed25519 -C "cotl-ansible-control" -N '' -f keep/id_ed25519
$ cd ansible && ansible-galaxy collection install hetzner.hcloud
```

## Usage

./create_hcloud.sh --check
./create_hcloud.sh

```
# ./create_hcloud.sh # Erstellen der Hosts
# ./delete_hcloud.sh # Entfernen der Hosts
```
# Hosts vorbereiten
```
# ./run.sh -t "update,reboot" 

make site

## TODOs

- better solution for . keep/.hcloud_token
- Editing /etc/hosts file indise a docker container is not easy ... so we skip it.
  https://stackoverflow.com/questions/37860601/how-to-edit-etc-hosts-file-in-running-docker-container

