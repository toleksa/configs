#!/bin/bash

rm -rf /home/guest/*
echo "export HISTFILE=/dev/null" > /home/guest/.bash_profile
echo "export PATH=/home/guest" >> /home/guest/.bash_profile
chmod 444 /home/guest/.*
chattr +i /home/guest/.*
chmod 500 /home/guest
ln -s /usr/bin/ssh /home/guest/ssh

