#!/usr/bin/env bash

RED='\033[0;31m'
GREEN='\033[0;32m'

cp -r -v ~/.config/dunst ~/dotfiles
cp -r -v ~/.config/i3 ~/dotfiles
cp -r -v ~/.config/polybar ~/dotfiles
cp -r -v ~/.config/rofi ~/dotfiles
cp -r -v ~/.config/picom.conf ~/dotfiles
cp -r -v ~/.config/kitty/ ~/dotfiles
cp -r -v ~/sync.sh ~/dotfiles
cp -r -v ~/.bashrc ~/dotfiles
cp -r -v ~/.vimrc ~/dotfiles

echo -e "${RED}DOTFILES COPIED"

cd ~/dotfiles
git add -A
read -p "ENTER COMMIT: " c
git commit -m "$c"
git push -u -f origin master

echo -e "${GREEN}DOTFILES PUSHED"
