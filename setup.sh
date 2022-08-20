#!/bin/sh

# Temporary bugfix as of `02/28/2020`
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 78BD65473CB3BD13

# Install Ansible
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
echo 'deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main' | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install -y ansible
ansible-galaxy install alzadude.firefox-addon

# Clone repository
git clone https://github.com/perguth/chromeos-welcome-to-estonia.git
cd chromeos-welcome-to-estonia

# Run playbook
ansible-playbook playbook.yml

# Clean up
cd ..
rm -rf chromeos-welcome-to-estonia
