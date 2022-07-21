#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return
#[ -z "$PS1" ] && return

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

export HISTSIZE=5000
export HISTFILESIZE=10000
export HISTCONTROL=ignoreboth

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

if [ -f ~/.bash_local ]; then
    . ~/.bash_local
fi

if [ -f ~/.bash_kube ]; then
    . ~/.bash_kube
fi

if [[ ${EUID} == 0 ]] ; then
  PS1='\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w#\[\033[00m\] '
else
  PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\$\[\033[00m\] '
fi

export PATH="$PATH"

