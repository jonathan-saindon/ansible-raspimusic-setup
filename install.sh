#!/bin/bash

###################
# Install ansible #
###################
if ! hash ansible >/dev/null 2>&1; then
    echo "Ansible installation not found !"
    echo "Installing Ansible..."
    sudo apt-get install ansible -y
fi

################
# Run playbook #
################
ansible-playbook playbook.yml --ask-become-pass