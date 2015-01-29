#!/bin/sh

# create virtual server
vagrant init centos-6.6-x86_64-mini-2015

# start virtual server
vagrant up

# take out ssh settings
vagrant ssh-config --host=webdb > vagrant-ssh.conf

# install gem
bundle

# install basic package to virtual server
knife solo bootstrap webdb -F vagrant-ssh.conf

# test status
rake ci:setup:rspec spec

# delete ssh settings
rm -f vagrant-ssh.conf

# delete virtual server
vagrant destroy -f
