# vim: set filetype=bash:

#Allow 'reverse ctrl+r' ctrl + s search
stty -ixon
shopt -s autocd
shopt -s histappend

export HISTCONTROL=ignoredups
export HISTFILESIZE=
export HISTSIZE=
export PATH=$PATH:~/scripts

export BROWSER=chromium
export EDITOR='vim'
export VISUAL='vim'
