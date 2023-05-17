
# openshift Bash completion
if [ `which oc 2>/dev/null` ]; then
    source <(oc completion bash)
fi

