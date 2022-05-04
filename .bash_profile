#
# ~/.bash_profile
#

[ ! -z "$BASH_PROFILE_SET" ] && return
export BASH_PROFILE_SET=1

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ ${EUID} == 0 ]] ; then
  PS1='\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w#\[\033[00m\] '
else
  PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\$\[\033[00m\] '
fi

export HISTSIZE=5000
export HISTFILESIZE=10000
export HISTCONTROL=ignoreboth

