
# ssh agent, symlink your default key
eval $(systemctl --user show-environment | grep SSH_AUTH_SOCK)
export SSH_AUTH_SOCK
#if [[ `ssh-add -L | grep ssh | wc -l` -eq 0 ]]; then
#   ssh-add -vvv
#fi

## Instructions

#mkdir -p ~/.config/systemd/user/

#cat > ~/.config/systemd/user/ssh-agent.service << "EOF"
#[Unit]
#Description=OpenSSH private key agent
#IgnoreOnIsolate=true
#
#[Service]
#Type=forking
#Environment=SSH_AUTH_SOCK=%t/ssh-agent.socket
#ExecStart=/usr/bin/ssh-agent -a $SSH_AUTH_SOCK
#ExecStartPost=/usr/bin/systemctl --user set-environment SSH_AUTH_SOCK=${SSH_AUTH_SOCK}
#
#[Install]
#WantedBy=default.target
#EOF

#systemctl --user enable --now ssh-agent.service

