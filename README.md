# Ansible-Backup
Database backups using the [Backup gem](backup.github.io/backup/v4/)

A simple project that demonstrates the use of the Backup Gem to backup your database to a S3 bucket. The project will install rbenv, ruby (2.3.4) on your host. The backup process runs as the "archiver" user. Backusp are scheduled to run at 3:37 UTC.

This project requires Vagrant and Ansible. To install Ansible, and create a virtualenv to house Ansible. There's a Makefile which will guide you through the installation process. Once the virtualenv is setup, install ansible using ```make install_ansible``` and then install the zzet.rbenv role using ```make install_roles```

### Env. specific vars.
1. Update groups_vars/all/vars.yml with your host specific settings.  It is highly recommended that you follow Ansible's [vars/vault best practices](http://docs.ansible.com/ansible/latest/playbooks_best_practices.html#variables-and-vaults) when storing your database password or similar secrets. 

### prerequisites
1. setup the virtual environment. Run ``` make prerequisites```

### Dependencies
1. Install Ansible, run ```make install_ansible```
1. Install Ansible roles from Ansible Galaxy, run: ```install_roles```

### Provision
1. run ```vagrant provision``` and watch the script run.

