#!/usr/bin/env bash

function prereqs() {
    echo "the following are required to run this script:"
    echo
    echo "  - this script is intended to run on Linux only"
    echo "  - docker, docker-compose, and jq must be installed: 'sudo apt-get -y install docker.io docker-compose jq'"
    echo "  - the current user must be added to the 'docker' group: 'sudo usermod -a -G docker $(whoami)' and log back in to pick up new permissions"
    echo
    read -N 1 -p "Would you like to install packages and set permissions now? [y/N] " RUN_SETUP
    [ "$RUN_SETUP" == "y" || "$RUN_SETUP" == "Y" ] || kill 0
    sudo apt-get -y install docker.io docker-compose jq
    sudo usermod -a -G docker $(whoami)
    echo "Re-run the script after logging out and back in, or run 'newgrp -' to start a subshell with updated permissions"
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

