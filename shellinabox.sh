#!/bin/bash

rm -rf /home/guest/* /home/guest/.*
echo "export HISTFILE=/dev/null" > /home/guest/.bash_profile
echo "export PATH=/home/guest" >> /home/guest/.bash_profile
chmod 555 /home/guest/.bash_profile
chattr +i /home/guest/.*
chmod 500 /home/guest
chmod 555 /home
ln -s /usr/bin/ssh /home/guest/ssh

chmod -x /etc/update-motd.d/*

