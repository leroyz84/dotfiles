# vim: set filetype=bash:




#  bash completion
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

clean_ssh () {
	 sed -i -e '/dev.local/d' ~/.ssh/known_hosts
	 sed -i -e '/tux.lan/d' ~/.ssh/known_hosts
}

# run p to open a tmuxp project
function p() {
  project=`find  ~/.config/tmuxp -name "*.yaml"  | fzf` &&   tmuxp load --yes ${project}
}

# run z <watchfile>
function  z() {

	if [ -z $1 ]; then
		echo "USAGE: z <file-to-watch>"
	elif [ ! -e $1 ]; then
		echo "file $1 does not exit (yet)"
	else
		echo test
		if [[ -z $z_cmd ]]; then
			echo -n "command to run on $1: "
			read z_cmd
		fi
		while true; do
			echo -e "\nwaiting on $1";
			inotifywait $1 > /dev/null 2>&1
			clear;
			$z_cmd
		done
	fi
}

