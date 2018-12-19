#!/bin/bash

###################
# Install ansible #
###################
echo "Installing Ansible and all its dependencies..."
sudo apt-get install -y libffi-dev python-setuptools python-dev python-pip >> install.log

echo "Initial install can take several minutes"
sudo pip install pynacl pyyaml bcrypt ansible >> install.log

echo "Done"

ansible --version

################
# Run playbook #
################
echo "Running playbook"
ansible-playbook playbook.yml -b
