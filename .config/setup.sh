#!/bin/bash

###################### Specific to Arch based distributions ######################
## Install needed packages
# WM : bspwm sxhkd xorg-xinit xorg-server xorg-randr xterm alacritty
# Cosmetic : feh
# Fonts : nerd-fonts-meslo
# Dev env : git tmux
# Yay dep : base-devel
sudo pacman -S bspwm sxhkd xorg-xinit xorg-server xorg-xrandr xterm alacritty \
    feh \
    nerd-fonts-meslo \
    git tmux \
    base-devel 

## Install yay
git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay
makepkg -si

## Install AUR packages
yay -S polybar pulseaudio-control eww-git

###################### Distribution agnostic ######################

## Install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

## Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

## Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
