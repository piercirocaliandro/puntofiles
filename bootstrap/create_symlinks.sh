#!/bin/bash

echo -e "Creating symlinks for dotfiles\n"

# Create i3 symbolic link
if [ ! -d $HOME/.config/i3 ]; then
    echo -e "Creating default i3 directory...\n"
    mkdir $HOME/.config/i3/
fi

if [ ! -d $HOME/.config/i3/config ]; then
    echo -e "Creating i3 symlink...\n"
    ln dotfiles/i3/config ~/.config/i3/config
fi

# Create alacritty symbolic link
if [ ! -d $HOME/.config/alacritty ]; then
    echo -e "Creating default alacritty directory...\n"
    mkdir $HOME/.config/alacritty/
fi

if [ ! -d $HOME/.config/alacritty/alacritty.yml ]; then
    echo -e "Creating alacritty symlink...\n"
    ln dotfiles/i3/config ~/.config/alacritty/alacritty.yml
fi

# Create picom symbolic link
if [ ! -d $HOME/.config/picom ]; then
    echo -e "Creating default picom directory...\n"
    mkdir $HOME/.config/picom/
fi

if [ ! -d $HOME/.config/picom/picom.conf ]; then
    echo -e "Creating picom symlink...\n"
    ln dotfiles/i3/config ~/.config/picom/picom.conf
fi

# Create rofi symbolic link
if [ ! -d $HOME/.config/rofi ]; then
    echo -e "Creating default rofi directory...\n"
    mkdir $HOME/.config/rofi/
fi

if [ ! -d $HOME/.config/rofi/config.rasi]; then
    echo -e "Creating rofi symlink...\n"
    ln dotfiles/i3/config ~/.config/rofi/config.rasi
fi
