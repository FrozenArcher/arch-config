#!/bin/bash

# autostart
~/scripts/locker &
picom --experimental-backends -b
~/.fehbg &
fcitx5 -d --verbose 2
cfw &
xfce4-power-manager &

# avoid multiple launch
killall blueberry-tray
killall udiskie

# tray apps
blueberry-tray
udiskie --tray &
nm-applet &
