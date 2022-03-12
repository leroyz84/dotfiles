# vim: set filetype=bash:



# edit the current terminal, was used with termite
function le() {
  xdotool key Print
  tmp_file="/tmp/`ls -1rt /tmp | tail -1`"
  vim +1 ${tmp_file}
}

#  bash completion
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
