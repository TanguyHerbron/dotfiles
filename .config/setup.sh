#!/bin/bash

trap "exit" SIGINT

FONT_NORMAL="0"
FONT_BOLD="1"
FONT_DIM="2"
FONT_ITALIC="3"

FG_BLACK="30"
FG_RED="31"
FG_GREEN="32"
FG_YELLOW="33"
FG_BLUE="34"
FG_MAGENTA="35"
FG_CYAN="36"
FG_WHITE="37"

BG_BLACK="40"
BG_RED="41"
BG_GREEN="42"
BG_YELLOW="43"
BG_BLUE="44"
BG_MAGENTA="45"
BG_CYAN="46"
BG_WHITE="47"

highlight() {
    printf "\x1b[1;34m"
}

print_reset() {
    printf "\x1b[0m"
}

install_debian() {
    echo "Not yet implemented"
}

install_arch () {
    ###################### Specific to Arch based distributions ######################
    ## Install needed packages
    # WM : bspwm sxhkd xorg-xinit xorg-server xorg-randr xterm alacritty
    # Cosmetic : feh w3m
    # Fonts : nerd-fonts-meslo
    # Dev env : git tmux
    # Yay dep : base-devel
    # CLI bitwarden integration : bitwarden-cli jq fzf
    # Rofi bitwarden integration : bitwarden-cli bitwarden-rofi
    # Vim plugin dependencies : the_silver_searcher
    echo -n "Installing required packages using" ; highlight ; echo " Pacman " ; print_reset ; "\n"

    sudo pacman ---quiet -S --needed bspwm sxhkd xorg-xinit xorg-server xorg-xrandr xterm alacritty \
        feh w3m \
        nerd-fonts-meslo \
        git tmux \
        base-devel \
        bitwarden-cli jq fzf  \
        bitwarden-rofi \
        the_silver_searcher

    ## Install yay
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay
    makepkg -si

    ## Install AUR packages
    yay -S polybar pulseaudio-control eww-git
}

arch="$(lsb_release -si)"

case $arch in
    Arch)
        install_arch
        ;;
    Raspbian)
        ;&
    Debian)
        install_debian
esac

###################### Distribution agnostic ######################

## Install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

## Once vimplug is installed, install all plugins automatically
/usr/bin/nvim +VimEnter +PlugInstall +qall

## Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

## Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
