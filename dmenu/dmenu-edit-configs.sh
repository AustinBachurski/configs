#!/bin/bash
#  ____ _____
# |  _ \_   _|  Derek Taylor (DistroTube)
# | | | || |    http://www.youtube.com/c/DistroTube
# | |_| || |    http://www.gitlab.com/dwt1/
# |____/ |_|
#
# Dmenu script for editing some of my more frequently edited config files.


declare options=("quit
bash
editconfigs
emacs
i3
i3blocks
lightdm
polybar
vim
xresources
zsh
")

choice=$(echo -e "${options[@]}" | dmenu -i -p 'Edit a config file: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
	bash)
		choice="$HOME/.bashrc"
	;;
	editconfigs)
		choice="$HOME/.scripts/dmenu-edit-configs.sh"
	;;
	emacs)
		choice="$HOME/.emacs.d/init.el"
	;;
	i3)
		choice="$HOME/.config/i3/config"
	;;
	i3blocks)
		choice="$HOME/.config/i3blocks/config"
	;;
	lightdm)
		choice="/etc/lightdm/lightdm.conf"
	;;
	polybar)
		choice="$HOME/.config/polybar/config"
	;;
	vim)
		choice="$HOME/.vimrc"
	;;
	xresources)
		choice="$HOME/."
	;;
	zsh)
		choice="$HOME/.zshrc"
	;;
	*)
		exit 1
	;;
esac
urxvt -e vim "$choice"
