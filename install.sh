#!/bin/bash

# apt
sudo apt-get update && sudo apt-get install git zsh wget unzip curl
# Git
cp ./.gitconfig ~
# Oh My Zsh!
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
cp ./.zshrc ~
cp ./zshenv ~
cp -r ./.zsh ~
# Nerd Fonts
sudo mkdir -p /usr/share/fonts && cd /usr/share/fonts
sudo wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/RobotoMono.zip
sudo unzip RobotoMono.zip
sudo rm RobotoMono.zip && cd ~
# Starship
curl -sS https://starship.rs/install.sh --yes | sh
cp -r ./.config ~
