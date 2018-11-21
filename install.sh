#!/bin/bash

###################
# Install ansible #
###################
if ! hash ansible >/dev/null 2>&1; then
    echo "Ansible installation not found !"
    echo "Installing Ansible and all its dependencies..."
    sudo apt-get install libffi-dev python-pip -y > /dev/null
    echo "Initial install can take several minutes"
    sudo pip install ansible > /dev/null
    echo "Done"
    ansible --version
fi

################
# Run playbook #
################
ansible-playbook playbook.yml --ask-become-pass