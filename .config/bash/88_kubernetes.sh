alias kp='kubectl get pods'
alias kns='kubectl get ns'
alias kd='kubectl get deployments'
alias krs='kubectl get rs'
alias kds='kubectl get ds'
alias kl='kubectl get logs -f'
alias kexe='oc rsh '
alias k='__k8s; kubectl'
complete -o default -F __start_kubectl k



# kubectl Bash completion
if [ `which kubectl 2>/dev/null` ]; then
	source <(kubectl completion bash)
fi

__k8s()
{
    # Get current context
    CONTEXT=$(kubectl config current-context)

    if [ -n "$CONTEXT" ]; then
        echo -e "\e[30;46m(k8s: ${CONTEXT})\033[0m"
    fi
}


