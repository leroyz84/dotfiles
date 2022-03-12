
# ssh agent, symlink your default key
eval $(systemctl --user show-environment | grep SSH_AUTH_SOCK)
export SSH_AUTH_SOCK
if [[ `ssh-add -L | grep ssh | wc -l` -eq 0 ]]; then
   ssh-add -vvv
fi
