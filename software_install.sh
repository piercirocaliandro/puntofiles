#!/bin/bash

## This script installs userfull software (in case of Arch, it installs all that is needed to get the system ready for use) 


## Since the software requires sudo permissions to be run, check the user uid first
if [ $UID -ne 0 ]; then
    echo 'Error: you need to be root'
    exit 1
fi

# First thing first, install yay
pacman -Sy yay

packet_manager='yay'
download_dir='Scaricati'

echo 'Installing software ...'

$packet_manager -Sy i3 light nmcli polybar feh nitrogen rofi

## necessary to make sure that polybar can display video and audio values
usermod -a -G video $whoami
usermod -a -G audio $whoami

echo 'Installing nerd fonts ...'

# Pull fira code from github (you can choose the nerd font you prefer, I like this one)
cd ~/$download_dir
curl -L -O https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/FiraCode.zip
tar -xzvf Hack-v3.003-ttf.tar.gz
mkdir ~/.local/share/fonts
mv FiraCode/Fira\ Code\ Regular\ Nerd\ Font\ Complete\ Mono.ttf ~/.local/share/fonts/Fira\ Code\ Regular\ Nerd\ Font\ Complete\ Mono.ttf
fc-cache -f -v
