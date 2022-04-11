#!/bin/bash

mkdir /home/shell/bin
chmod 755 /home/shell/bin
ln -s /usr/bin/ssh /.home/shell/bin/ssh

echo "export HISTFILE=/dev/null" > /home/shell/.bash_profile
echo "PATH=$HOME/bin" > /home/shell/.bashrc
chmod 444 /home/shell/.bash_profile /home/shell/.bashrc
chattr +i /home/shell/.bashrc /home/shell/.bash_profile
chmod 500 /home/shell

