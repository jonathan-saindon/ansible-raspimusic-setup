#!/bin/bash

###################
# Install ansible #
###################
if ! hash ansible >/dev/null 2>&1; then
    echo "Ansible installation not found !"
    echo "Installing Ansible and all its dependencies..."

    sudo apt-get install -y libffi-dev python-setuptools >> /dev/null
    sudo easy_install python-pip >> install.log

    echo "Initial install can take several minutes"

    sudo easy_install PyYAML ansible >> install.log

    echo "Done"

    ansible --version
fi

################
# Run playbook #
################
echo "Running playbook"
ansible-playbook playbook.yml -b