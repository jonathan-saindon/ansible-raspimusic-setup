#!/bin/bash

###################
# Install ansible #
###################
if ! hash ansible >/dev/null 2>&1; then
    echo "Ansible installation not found !"
    echo "Installing Ansible and all its dependencies..."

    sudo apt-get install libffi-dev -y >> /dev/null
    sudo easy_install python-pip -y >> install.log

    echo "Initial install can take several minutes"

    sudo pip install PyYAML ansible >> install.log

    echo "Done"

    ansible --version
fi

################
# Run playbook #
################
ansible-playbook playbook.yml -b