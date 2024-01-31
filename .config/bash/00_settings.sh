# vim: set filetype=bash:

#Allow 'reverse ctrl+r' ctrl + s search
stty -ixon
set -eo  pipefail

#https://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html
shopt -s autocd
shopt -s histappend

shopt -s expand_aliases
#don't strop on error
set +e

export HISTCONTROL=ignoredups
export HISTFILESIZE=100000
export HISTSIZE=100000
export PATH=$PATH:~/.local/bin/

#export BROWSER=chromium
export EDITOR='vim'
export VISUAL='vim'
