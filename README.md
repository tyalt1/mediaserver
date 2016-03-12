# mediaserver
[![Build Status](https://travis-ci.org/tyalt1/mediaserver.svg?branch=master)](https://travis-ci.org/tyalt1/mediaserver)

Ansible playbook and more for setup of mediaserver.

## Setup Server

Install [Ansible](https://www.ansible.com/)
and run the playbook.

```
sudo pip install ansible
ansible-playbook -i hosts server_setup.yml
```

## Ansible Roles

All the roles install the program if it is not already installed.

role     | description |
---------|-----------------------
[mergerfs](https://github.com/trapexit/mergerfs) | JBOD union filesystem
[snapraid](https://github.com/amadvance/snapraid) | Backup for disk arrays.
docker   | Container-based application platform.

The mergerfs role mounts all the drives at a specific mount point.

The snapraid role sets a service to do daily backups.

The docker role starts up the services inside containers.

## Docker Containers

All services run are run inside docker containers.
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
1. [minecraft](https://hub.docker.com/r/kitematic/minecraft/)
Minecraft game server.
