#!/bin/bash

# .xprofile should be sourced in .xinitrc or by display manager

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
if [ "$(pgrep -u $UID -x blueberry-tray)" != "" ]; then
    blueberry-tray
fi
#blueberry-tray
udiskie --tray &
nm-applet &
