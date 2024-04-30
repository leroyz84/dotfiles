

#alias getc='xsel --clipboard --output'
alias getc='wl-paste'
#alias setc='xsel --clipboard --input'
alias setc='wl-copy'

alias scale=' for i in {1..10}; do echo sway output DP-$i scale 1.7; done | sh'
alias gg='cd $(find ~/git -maxdepth 1 | fzf)'
alias ggl='cd $(find ~/gitlab -maxdepth 1 | fzf)'
alias ggh='cd $(find ~/github -maxdepth 1 | fzf)'
alias dot='cd ~/github/dotfiles/'
#alias gf='cd $(dirname $(find ~/git -type f | fzf))'

#alias md='markdown_previewer'

alias git='git --no-pager'
alias gcm='git checkout main || git checkout master'
alias gP='git push'
alias gp='git pull'
alias gd='git diff'
alias gs='git status'

alias pacman='sudo pacman'
alias bt='bluetuith'

alias k='kubectl'
complete -o default -F __start_kubectl k
alias l='ls -l'
alias ll='ls -l'

alias cp="cp -i"                          # confirm before overwriting something
alias np='nano -w PKGBUILD'
alias more=less
alias dmenu='wofi --dmenu'
alias mutt="neomutt"

alias pm="TERM=xterm pulsemixer"
alias cal="cal -m -3"
alias v="virsh"
#alias iftop="iftop -i wlan0 -B -P"
#complete -o default -F _virsh_complete v
#complete -o default -o filenames -F _virsh_complete v

# fuzzy search history
alias h='sort  ~/.bash_history  | uniq -d | fzf | sh'
alias hha='cat ~/.bash-history/* | awk "length($0) > 10" sort  | uniq -d | fzf | sh'
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
alias tt-sync-activities='ttwatch --set-formats=TCX,GPX  --activity-store=${HOME}/TomTom/ --get-activities '

alias xrandr='echo use wlr-randr'
alias arandr='echo use wdisplays'
function rdp() {
     xfreerdp /u:leroy /v:$1 /w:1280 /h:1024 /drive:rdp,/home/leroy/rdp
}
alias t=title

alias wg-ssv-on='wg-quick up ~/.config/wireguard/wg1.conf'
alias wg-ssv-off='wg-quick down ~/.config/wireguard/wg1.conf'

alias wg-thuis-on='wg-quick up ~/.config/wireguard/wg0.conf'
alias wg-thuis-off='wg-quick down ~/.config/wireguard/wg0.conf'

