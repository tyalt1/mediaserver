# mediaserver
[![Build Status](https://travis-ci.org/tyalt1/mediaserver.svg?branch=master)](https://travis-ci.org/tyalt1/mediaserver)

Ansible playbook for setup of mediaserver.

## Setup Server

Install [Ansible](https://docs.ansible.com/ansible/)
and run the playbook.

```
sudo pip install ansible
ansible-playbook -i hosts server_setup.yml
```

Where `hosts` is an [Ansible Inventory file](http://docs.ansible.com/ansible/intro_inventory.html).

## Ansible Roles

All the roles install the program if it does not already installed.

### MergerFS

[MergerFS Github](https://github.com/trapexit/mergerfs)

MergerFS is a FUSE-based JBOD (Just a Bunch Of Drives) union filesystem.

The mergerfs role mounts all the drives at a specific mount point.

### Samba

The samba role installs the configuration and starts the service.

### SnapRAID

[SnapRAID Github](https://github.com/amadvance/snapraid)  
[SnapRAID Website](http://www.snapraid.it/)

SnapRAID is a backup for disk arrays using parity blocks.

The snapraid role installs the config files and sets a service to do daily backups.

### Docker

Docker is a container-based application platform.

The docker role starts up the services inside containers.

#### Docker Containers

All services are run inside docker containers.
The containers are created in `roles/docker/tasks/containers.yml`.

1. [dockerui](https://hub.docker.com/r/dockerui/dockerui/)
Web interface for managing docker containers.
1. [plex](https://hub.docker.com/r/linuxserver/plex)
Media streaming server.
1. [transmission](https://hub.docker.com/r/linuxserver/transmission)
Torrent download client.
1. [sonarr](https://hub.docker.com/r/linuxserver/sonarr)
TV show management.
1. [couchpotato](https://hub.docker.com/r/linuxserver/couchpotato)
Movie management.
1. [gitlab](https://hub.docker.com/r/gitlab/gitlab-ce)
Git repository hosting server.
1. [minecraft-vanilla](https://hub.docker.com/r/kitematic/minecraft/)
Minecraft game server.
