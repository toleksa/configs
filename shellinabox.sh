#!/bin/bash

mkdir /home/shell/bin
ln -s /usr/bin/ssh /.home/shell/bin/ssh

echo "" > /home/shell/.bash_profile
echo "PATH=$HOME/bin" > /home/shell/.bashrc
chmod 444 /home/shell/.bash_profile /home/shell/.bashrc
chattr +i /home/shell/.bashrc /home/shell/.bash_profile

