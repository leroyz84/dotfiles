

alias getc='xsel --clipboard --output'
alias setc='xsel --clipboard --input'

alias gg='cd $(find ~/git -maxdepth 1 | fzf)'
alias gf='cd $(dirname $(find ~/git -type f | fzf))'

alias md='markdown_previewer'

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
alias dmenu='rofi -dmenu'
alias mutt="neomutt"
alias pm="pulsemixer"
alias cal="cal -m"

# fuzzy search history
alias hh='sort  ~/.bash_history  | uniq -d | fzf | sh'
alias hha='cat ~/.bash-history/* | sort  | uniq -d | fzf | sh'
alias study='cd /mnt/nas/STUDY/__OCP_4_/PEARSON_RED_HAT_OPENSHIFT_ADMINISTRATION_RED_HAT_EX280-iLLiTERATE'

# sometimes screen doens't come back on...
alias mm='xset -display :0.0 dpms force off ; xset -display :0.0 dpms force on'

alias maintenance="cd ; ansible-playbook playbook_maintenance.yaml --vault-id financecloud@~/.ansible_vault/financecloud"
