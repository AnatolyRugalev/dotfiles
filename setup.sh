#!/usr/bin/env bash

dotfiles="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
files=$(find -name ".*" -type f -printf '%P\n')
files="$files .xmonad/xmonad.hs .config/rofi/config.rasi .config/alacritty/alacritty.yml"

for file in $files; do
	if [[ -f $HOME/$file ]]; then
		echo "File $file already exists. Do you want to replace it? (y/n)"
	        read replace
		if [[ $replace == "y" ]]; then
			rm $HOME/$file
		else
			continue
		fi
	fi
	mkdir -p $(dirname $HOME/$file)
	ln -sf $dotfiles/$file $HOME/$file
done

xmonad --recompile
