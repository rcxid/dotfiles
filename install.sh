#!/bin/bash

dir=$(pwd)

echo "setting nvim config"
nvim_config_dir="$HOME/.config/nvim"
rm -f "$nvim_config_dir"
ln -s "$dir/nvim" "$nvim_config_dir"
echo "setting nvim ok"

echo "setting git config"
git_config_dir="$HOME/.gitconfig"
rm -f "$git_config_dir"
ln -s "$dir/git/gitconfig" "$git_config_dir"
echo "setting git ok"

echo "setting tmux config"
tmux_config_dir="$HOME/.tmux.conf"
rm -f "$tmux_config_dir"
ln -s "$dir/tmux/tmux.conf" "$tmux_config_dir"
echo "setting tmux ok"

echo "setting script"
script_dir="$HOME/script"
rm -f "$script_dir"
ln -s "$dir/script" "$script_dir"
echo "setting script ok"

echo "setting alacritty config"
alacritty_config_dir="$HOME/.config/alacritty"
rm -f "$alacritty_config_dir"
ln -s "$dir/alacritty" "$alacritty_config_dir"
echo "setting alacritty ok"

echo "setting wezterm config"
wezterm_config_dir="$HOME/.config/wezterm"
rm -f "$wezterm_config_dir"
ln -s "$dir/wezterm" "$wezterm_config_dir"
echo "setting wezterm ok"

echo "setting picom config"
picom_config_dir="$HOME/.config/picom"
rm -f "$picom_config_dir"
ln -s "$dir/picom" "$picom_config_dir"
echo "setting picom ok"

echo "setting wallpaper"
wallpaper_dir="$HOME/Pictures/wallpaper"
rm -f "$wallpaper_dir"
ln -s "$dir/wallpaper" "$wallpaper_dir"
echo "setting wallpaper ok"

echo "setting ideavim config"
ideavim_config_dir="$HOME/.ideavimrc"
rm -f "$ideavim_config_dir"
ln -s "$dir/ideavim/ideavimrc" "$ideavim_config_dir"
echo "setting ideavim ok"
