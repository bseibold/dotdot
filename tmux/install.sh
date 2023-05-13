#!/bin/bash

mkdir -p ~/.config
ln -s ~/.dotdot/tmux ~/
ln -s ~/.dotdot/tmux ~/.config/
ln -s ~/.dotdot/tmux/tmux-powerline ~/.config/

if [ -e /etc/arch-release ]; then
	sudo pacman -S --needed tmux
fi

tmux new-session '~/.tmux/plugins/tpm/bindings/install_plugins ; sleep 3'
