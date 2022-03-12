# dotfiles
my dot files

## bashrc / bash profile
My bash profile settings are included

The files / content should be self explanatory

### instructions

i've symlinked bash to ~/.config/bash

`cd ~/.config ; ln -s ~/github/dotfiles/.config/bash`

Add to the bottom of the ~/.bashrc
```bash
# read config files
for configfile in ~/.config/bash/*; do
    source $configfile
done
```



