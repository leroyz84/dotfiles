# vim: set filetype=bash:

#Allow 'reverse ctrl+r' ctrl + s search
stty -ixon

#https://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html
shopt -s autocd
shopt -s histappend
shopt -s expand_aliases

export HISTCONTROL=ignoredups
export HISTFILESIZE=100000
export HISTSIZE=100000
export PATH=$PATH:~/scripts

export BROWSER=chromium
export EDITOR='vim'
export VISUAL='vim'
