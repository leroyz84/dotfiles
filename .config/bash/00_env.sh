export LF_BOOKMARK_PATH=~/.config/lf/bookmarks
if [[ -e ~/.config/phrases/00-temporary-password ]]; then
	export SSHPASS=`cat ~/.config/phrases/00-temporary-password`
fi
 export LIBVIRT_DEFAULT_URI="qemu:///system"
