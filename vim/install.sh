#!/bin/bash

mkdir -p ~/.config
[ ! -e ~/.vim ] && ln -s ~/.dotdot/vim/ ~/.vim
[ ! -e ~/.config/nvim ] && ln -s ~/.dotdot/vim/ ~/.config/nvim

if [ -e /etc/arch-release -a -z "$(which vim)" ]; then
	sudo pacman -S --needed vim
fi

if [ -e /etc/arch-release -a -z "$(which nvim)" ]; then
	sudo pacman -S --needed neovim
fi

vim +BundleInstall
nvim +BundleInstall
