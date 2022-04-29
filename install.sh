#!/bin/bash

dir=$(pwd)

echo "install nvim config"
nvim_config_dir="$HOME/.config/nvim"
rm -f "$nvim_config_dir"
ln -s "$dir/nvim" "$nvim_config_dir"
echo "ok"

echo "install git config"
git_config_dir="$HOME/.gitconfig"
rm -f "$git_config_dir"
ln -s "$dir/git/.gitconfig" "$git_config_dir"
echo "ok"
