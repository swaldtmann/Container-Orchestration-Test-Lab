# Container-Orchestration-Test-Lab

Test Lab for Container Orchestration with hcloud

## After Install

```bash
$ ssh-keygen -t ed25519 -C "cotl-ansible-control" -N '' -f keep/id_ed25519
$ cd ansible && ansible-galaxy collection install hetzner.hcloud
```

## TODOs

- better solution for . keep/.hcloud_token
- Hetzner Cloud ssh key management
- create key in docker image
- Upload to hetzner
