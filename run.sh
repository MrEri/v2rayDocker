#!/bin/bash

mkdir /var/run/sshd 
useradd --user-group --create-home --system mogenius

echo 'root:root' | chpasswd
sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config
mkdir /root/.ssh
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
echo 'mogenius:mogenius' | chpasswd
