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
# avoid multiple launch
killall blueberry-tray
killall udiskie

blueberry-tray
udiskie --tray &
nm-applet &
