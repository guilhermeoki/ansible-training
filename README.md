# Ansible training

A basic training project for ansible

# Provisioning environment using VirtualBox

vagrant up --provider=virtualbox

# Acessing Ansible host

vagrant ssh bastionhost

# Using Ansible ad hoc mode

Ansible has an option to run without playbooks. You just need to enter with module, optional module argument and inventory.

### Ping all production environment

```
ansible all -m ping -i inventory/prod/inventory.ini
```

# Running Ansible playbooks

The powerful way to run ansible is using playbooks. Playbooks are composed of one or more plays. The goal of a play is to map a group of hosts to some well defined roles, represented by things ansible calls tasks.

### Install and configure all the environment

```
ansible-playbook prod.yml -i inventory/prod/inventory.ini
```

