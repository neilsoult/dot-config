#!/bin/bash

# apt
# sudo apt-get update && sudo apt-get install git zsh wget unzip curl
# Git
echo "Copying git config"
cp ./.gitconfig ~
# Oh My Zsh!
echo "download oh my zsh"
echo dirname "$0"
sh -c "$(wget -qO https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh)"
sudo sh -c "$(wget -qO https://raw.githubusercontent.com/deluan/zsh-in-docker/master/zsh-in-docker.sh)"
echo "copy configs"
cp ./.zshrc ~
cp ./zshenv ~
cp -r ./.zsh ~
# Nerd Fonts
echo "download and install nerdfonts"
sudo mkdir -p /usr/share/fonts && cd /usr/share/fonts
sudo wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/RobotoMono.zip
sudo unzip RobotoMono.zip
sudo rm RobotoMono.zip && cd ~
# Starship
echo "download starship"
sh -c "$(curl -fsSL https://starship.rs/install.sh)" -y -f
echo dirname "$0"
cp -r ./.config ~
