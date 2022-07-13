#!/usr/bin/env bash

function prereqs() {
    echo
    echo "The following are required to run this script (ubuntu-specific):"
    echo "  - docker, and docker-compose must be installed. To install docker, first configure the docker repository:"
    echo "  -   sudo apt-get update"
    echo "  -   sudo apt-get install ca-certificates curl gnupg lsb-release"
    echo "  -   sudo mkdir -p /etc/apt/keyrings"
    echo "  -   curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg"
    echo "  -   echo \"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \\"
    echo "  -     $(lsb_release -cs) stable\" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null"
    echo
    echo "  - Install docker:"
    echo "  -   sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin"
    echo
    echo "  - Configure user with ability to run docker commands:"
    echo "  -   sudo usermod -aG docker $USER"
    echo
    echo "  - Log out and back in to pick up new permissions"
    echo
    echo "  - Note that old versions of docker may exist and should be removed. To do this run the command:"
    echo "  -   sudo apt-get remove docker docker-engine docker.io containerd runc"
    echo
    echo "  - Note: jq is also needed for json processing. To install jq:"
    echo "  -   sudo apt-get update"
    echo "  -   sudo apt-get jq"
    echo
    read -p "Would you like to install packages and set permissions now? [y/N] " RUN_SETUP
    [ "$RUN_SETUP" == "y" ] || [ "$RUN_SETUP" == "Y" ] || kill 0
    echo "Removing old versions of docker..."
    sudo apt-get -y remove docker docker-engine docker.io containerd runc
    echo
    echo "Update apt package index..."
    sudo apt-get update
    echo
    echo "Updating ubuntu repos..."
    sudo apt-get -y install ca-certificates curl gnupg lsb-release
    echo
    echo "Add Docker’s official GPG key..."
    sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    echo
    echo "Set up the Docker repository..."
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    echo
    echo "Install docker and jq..."
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
    sudo usermod -a -G docker $(whoami)
    echo
    echo "NOTE: It's recommended to exit the script and either a) execute the command 'newgrp -' or"
    echo "b) log out and back in. Doing will load the new docker permissions into the user's environment."
    read -N -s 1
}

# ensure pre-requisites are met:
uname |grep -q Linux || {
  echo "*** this script is only meant to work on linux. ***";
  prereqs;
}

id |grep -q docker || {
  echo "*** this user is not in the 'docker' group. ***";
  prereqs;
}

# ensure tools are present:
hash docker || {
  echo "*** did not find docker-compose ***";
  prereqs;
}
hash docker-compose || {
  echo "*** docker-compose is not installed ***"
  prereqs;
}
hash jq || {
  echo "*** jq is not installed ***"
  prereqs;
}

