#!/bin/bash

echo "shell hard nproc 256" >> /etc/security/limits.conf
echo "shell soft nproc 256" >> /etc/security/limits.conf
echo "shell hard nofile 256" >> /etc/security/limits.conf
echo "shell soft nofile 256" >> /etc/security/limits.conf

rm -rf /home/guest/* /home/guest/.*
touch /home/guest/.hushlogin
chmod 444 /home/guest/.hushlogin
echo "export HISTFILE=/dev/null" > /home/guest/.bash_profile
echo "export PATH=/home/guest" >> /home/guest/.bash_profile
chmod 555 /home/guest/.bash_profile
chattr +i /home/guest/.*
chmod 500 /home/guest
chmod 555 /home
ln -s /usr/bin/ssh /home/guest/ssh

chmod -x /etc/update-motd.d/*
echo "" > /etc/legal
