# mediaserver
[![Build Status](https://travis-ci.org/tyalt1/mediaserver.svg?branch=master)](https://travis-ci.org/tyalt1/mediaserver)

Ansible playbook for setup of mediaserver.

## Setup Server

Install [Ansible](https://docs.ansible.com/ansible/)
and run the playbook.

```
ansible-playbook -i hosts -b server_setup.yml
```

Use `-i` to specify an [Ansible Inventory file](http://docs.ansible.com/ansible/intro_inventory.html).  
The `-b` or `--become` flags allows the script to run as root.

## Ansible Roles

All the roles install the program if already installed, then configures it.

### MergerFS

[Github](https://github.com/trapexit/mergerfs)

MergerFS is a FUSE-based JBOD (Just a Bunch Of Drives) union filesystem.

The mergerfs role mounts all the drives at a specific mount point.

### Samba

[Website](https://www.samba.org/) |
[Github](https://github.com/samba-team/samba)

The samba role installs the configuration file and starts the service.

### SnapRAID

[Website](http://www.snapraid.it/) |
[Github](https://github.com/amadvance/snapraid)

SnapRAID is a backup for disk arrays using parity blocks.

The snapraid role installs the configuration files and sets a cron job to do daily backups.

### Docker

[Website](https://www.docker.com/) | 
[Github](https://github.com/docker/docker)

Docker is a container-based application platform.

The docker role starts up the services inside containers.

#### Docker Containers

All services run inside docker containers.
The containers are created in `roles/docker/tasks/containers.yml`.

1. [dockerui](https://hub.docker.com/r/abh1nav/dockerui/)
Web interface for managing docker containers running on the machine.
1. [plex](https://hub.docker.com/r/linuxserver/plex)
Media streaming server.
1. [transmission](https://hub.docker.com/r/linuxserver/transmission)
Torrent download client.
1. [nzbget](https://hub.docker.com/r/linuxserver/nzbget)
Usenet download client.
1. [sonarr](https://hub.docker.com/r/linuxserver/sonarr)
TV show management.
1. [couchpotato](https://hub.docker.com/r/linuxserver/couchpotato)
Movie management.
1. [gitlab](https://hub.docker.com/r/gitlab/gitlab-ce)
Git repository hosting server.
1. [minecraft-vanilla](https://hub.docker.com/r/kitematic/minecraft/)
Minecraft game server.
