#!/bin/bash
# copy to /etc/profile.d/prompt.sh

if [[ ${EUID} == 0 ]] ; then
  PS1='\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w#\[\033[00m\] '
else
  PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\$\[\033[00m\] '
fi
