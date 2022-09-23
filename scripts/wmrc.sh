#!/bin/bash

# general env vars
source ~/.xprofile
# set qt theme
export QT_QPA_PLATFORMTHEME=qt5ct

# auto locker
~/scripts/locker &
# picom
picom --experimental-backends -b
# wallpaper
~/.fehbg &
# input method
fcitx5 -d --verbose 2
# clash
cfw &

# tray apps
blueberry-tray
udiskie --tray &
nm-applet &
