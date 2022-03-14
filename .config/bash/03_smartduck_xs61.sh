# i use a duck xs61 keyboard, make escape a tilde :)

if [[ `lsusb | grep SONiX` ]]; then
    xmodmap -e 'keycode 9 = grave asciitilde'
    echo "nee"
fi

