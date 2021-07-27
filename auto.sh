#!/bin/dash

cd ~/dotfiles
dir=$(pwd)

for file in $(ls $dir); do
    if [ -d "$dir/$file" ]; then
        stow -R "$file"
    fi
done
