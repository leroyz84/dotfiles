

export gitlocation=~/github/dotfiles/.config/

cd ~/.config
for folder in `find ${gitlocation} -mindepth 1 -maxdepth 1 -type d`; do
    echo ln -s ${folder}
done

