#!/bin/bash

mkdir /home/guest/bin
chmod 755 /home/guest/bin
ln -s /usr/bin/ssh /.home/guest/bin/ssh

echo "export HISTFILE=/dev/null" > /home/guest/.bash_profile
echo "PATH=$HOME/bin" > /home/guest/.bashrc
chmod 444 /home/guest/.bash_profile /home/guest/.bashrc
chattr +i /home/guest/.bashrc /home/guest/.bash_profile
chmod 500 /home/guest

