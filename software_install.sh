#!/bin/bash

echo "Bootstrap start"

## Since the software requires sudo permissions to be run, check the user uid first
if [ $UID -ne 0 ]; then
    echo 'Error: you need to be root'
    exit 1
fi

# first thing first, install yay to grab programs from AUR
mkdir Sources
cd Sources
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd -

if [ -d "Scaricati" ]; then
    echo "Download folder already exists"
else
    mkdir "Scaricati"
fi

packet_manager='yay'
download_dir='Scaricati'

echo 'Installing software ...'

# Install essential software
if $packet_manager -Sy alacritty curl discord feh firefox fish gimp i3 i3lock i3status inkscape keepassxc light neovim nmcli okular onlyoffice picom rofi unzip vlc xorg-server xorg-apps xorg-xinit; then
    echo "Essential software installed correctly"
else
    echo "Error while installing essential software"
    exit 1
fi

# Grant perms to use keys for audio and video values
usermod -a -G video $whoami
usermod -a -G audio $whoami

cp -r alacritty/ i3/ i3status/ fish/ picom/ rofi/ starship.toml ~/.config/
cp .xinitrc ~/.

echo 'Installing nerd fonts ...'

# Pull Fira Code from github
cd ~/$download_dir
curl -L -O https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/FiraCode.zip
unzip -x FiraCode.zip
mkdir ~/.local/share/fonts
mv FiraCode/Fira\ Code\ Regular\ Nerd\ Font\ Complete\ Mono.ttf ~/.local/share/fonts/Fira\ Code\ Regular\ Nerd\ Font\ Complete\ Mono.ttf
mv FiraCode/Fira\ Code\ Retina\ Nerd\ Font\ Complete.ttf ~/.local/share/fonts/Fira\ Code\ Retina\ Nerd\ Font\ Complete.ttf
fc-cache -f -v
cd -

echo "bootstrap ended"
exit 0
