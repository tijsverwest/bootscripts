#!/usr/bin/env bash

cd /tmp
wget https://apt.puppetlabs.com/puppet5-release-xenial.deb
sudo dpkg -i puppet5-release-xenial.deb
sudo apt update
sudo apt-get install -y puppet

cd /etc
sudo mv puppet/ puppet-bak
git clone https://github.com/tijsverwest/tma-puppet.git /etc/puppet

cd /etc/puppet
sudo puppet apply /etc/puppet/manifests/site.pp
