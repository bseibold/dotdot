#!/bin/bash

ln -s $HOME/.dotdot/zsh/zshrc ~/.zshrc
ln -s $HOME/.dotdot/zsh/p10k.zsh ~/.p10k.zsh

if [ -e /etc/arch-release ]; then
	sudo pacman -S --needed zsh
	getent passwd $(whoami) | cut -d: -f7 | grep -q zsh
	[ $? -ne 0 ] && chsh -s /usr/bin/zsh
fi

zsh -ic true
