# Ansible training

A basic training project for ansible

# Provisioning environment

vagrant up

# Acessing Ansible control plane

vagrant ssh bastionhost

# Using Ansible ad hoc mode

Ansible has an option to run without playbooks. You just need to enter with module, optional module argument and inventory.

## Sending ping in all production environment

ansible all -m ping -i inventory/prod/inventory.ini

## Sending ping in all staging environment

ansible all -m ping -i inventory/staging/inventory.ini