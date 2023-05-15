alias kp='kubectl get pods'
alias kns='kubectl get ns'
alias kd='kubectl get deployments'
alias krs='kubectl get rs'
alias kds='kubectl get ds'
alias kl='kubectl get logs -f'
alias kexe='oc rsh '

source <(kubectl completion bash)
