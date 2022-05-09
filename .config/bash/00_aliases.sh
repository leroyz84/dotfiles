

alias getc='xsel --clipboard --output'
alias setc='xsel --clipboard --input'

alias gg='cd $(find ~/git -maxdepth 1 | fzf)'
alias gf='cd $(dirname $(find ~/git -type f | fzf))'

alias md='markdown_previewer'

alias gcm='git checkout main || git checkout master'
alias gp='git push'

alias pacman='sudo pacman'

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
alias study='cd /mnt/nas/STUDY/__OCP_4_/PEARSON_RED_HAT_OPENSHIFT_ADMINISTRATION_RED_HAT_EX280-iLLiTERATE'
