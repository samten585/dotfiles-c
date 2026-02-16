#!/usr/bin/env bash

# get wallpaper path from waypaper config
wallpaper=$(grep '^wallpaper' ~/.config/waypaper/config.ini | awk '{print $3}')

# expand ~ to $HOME
wallpaper="${wallpaper/#\~/$HOME}"

if [ -f $HOME/.cache/my_wallpaper.png ]; then
    rm $HOME/.cache/my_wallpaper.png  && ln -sf $wallpaper $HOME/.cache/my_wallpaper.png
fi

ln -sf $wallpaper $HOME/.cache/my_wallpaper.png

