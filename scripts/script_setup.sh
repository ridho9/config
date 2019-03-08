#!/bin/bash

CONFIG_DIR=~/Project/config

if [[ ! -r $CONFIG_DIR ]]; then
    echo "MISSING CONFIG FOLDER"
    exit 1
fi

# Symlink dotfiles in ~
ln -s $CONFIG_DIR/Xresources ~/.Xresources && echo "symlink Xresouces"
ln -s $CONFIG_DIR/zshrc ~/.zshrc && echo "symlink zshrc"

# Create config folder
[[ ! -r ~/.config ]] && mkdir ~/.config
ln -s $CONFIG_DIR/i3 ~/.config/i3
ln -s $CONFIG_DIR/nvim ~/.config/nvim