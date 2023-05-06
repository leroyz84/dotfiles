

#alias getc='xsel --clipboard --output'
#alias setc='xsel --clipboard --input'

alias gg='cd $(find ~/git -maxdepth 1 | fzf)'
alias ggl='cd $(find ~/gitlab -maxdepth 1 | fzf)'
#alias gf='cd $(dirname $(find ~/git -type f | fzf))'

#alias md='markdown_previewer'

alias gcm='git checkout main || git checkout master'
alias gp='git push'

alias pacman='sudo pacman'
alias bt='bluetuith'

alias k='kubectl'
alias l='ls -l'
alias ll='ls -l'

alias cp="cp -i"                          # confirm before overwriting something
alias np='nano -w PKGBUILD'
alias more=less
alias dmenu='wofi --dmenu'
alias mutt="neomutt"
alias pm="pulsemixer"
alias cal="cal -m"

# fuzzy search history
alias h='sort  ~/.bash_history  | uniq -d | fzf | sh'
alias hha='cat ~/.bash-history/* | awk "length($0) > 10" sort  | uniq -d | fzf | sh'
alias study='cd /mnt/nas/STUDY/__OCP_4_/PEARSON_RED_HAT_OPENSHIFT_ADMINISTRATION_RED_HAT_EX280-iLLiTERATE'

# sometimes screen doens't come back on...
##alias mm='xset -display :0.0 dpms force off ; xset -display :0.0 dpms force on'
alias mm='swaymsg "output * power off" ; sleep 1; swaymsg "output * power on" ; sleep 1 ; swaymsg "output * power on" '

alias maintenance="cd ; ansible-playbook playbook_maintenance.yaml --vault-id financecloud@~/.ansible_vault/financecloud"

alias micon='pactl load-module module-loopback'
alias micoff='pactl unload-module module-loopback'


#alias fm='vifm .'
#
# yay -S ttwatch
alias tt-update-gps='ttwatch --update-gps'
alias tt-sync-activities='ttwatch --set-formats=TCX,GPX  --activity-store=${HOME}/TomTom/ --get-activities --update-gps'

alias xrandr='echo use wlr-randr'
alias arandr='echo use wdisplays'
function rdp() {
     xfreerdp /u:leroy.zwakman /p:`cat ~/.config/phrases/00-temporary-password` /v:$1
}
alias t=tmux
