# vim: set filetype=bash:




#  bash completion
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

clean_ssh () {
	 sed -i -e '/dev.local/d' ~/.ssh/known_hosts
	 sed -i -e '/tux.lan/d' ~/.ssh/known_hosts
}
