# vim: set filetype=bash:




#  bash completion
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# run p to open a tmuxp project
function p() {
  project=`find  ~/.config/tmuxp -name "*.yaml"  | fzf` &&   tmuxp load --yes ${project}
}

# run pe to edit tmnux projects
function pe() {
  vim ~/.config/tmuxp
}

# run z <watchfile>
function  z() {

	if [ -z $1 ]; then
		echo "USAGE: z <file-to-watch> <command>"
	elif [ ! -e $1 ]; then
		echo "file $1 does not exit (yet)"
	else
		if [[ -z $2 ]]; then
			echo -n "command to run on $1: "
			read z_cmd
        else
            $z_cmd = $2
		fi
		while true; do
			echo -e "\nwaiting on $1";
			inotifywait $1 > /dev/null 2>&1
            sleep .1
			clear;
			$z_cmd $1
		done
	fi
}

title () {
  echo -ne "\e]0;"
  echo -n "$@"
  echo -ne "\a"
}
