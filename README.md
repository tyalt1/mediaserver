# mediaserver

Ansible playbook and more for setup of mediaserver.

## Setup Server

Install [Ansible](https://www.ansible.com/)
and run the playbook.

```
sudo pip install ansible
ansible-playbook playbooks/server_setup.yml
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
