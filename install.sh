#!/bin/bash

dir=$(pwd)

rm -f "$HOME/.config/nvim"
ln -s "$dir/nvim" "$HOME/.config/nvim"
