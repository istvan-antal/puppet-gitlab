#!/bin/bash
sudo apt-get install puppet
cd "$(dirname ${BASH_SOURCE[0]})"
puppet module install computology-packagecloud --modulepath=./modules
sudo puppet apply --verbose --debug --modulepath=./modules main.pp