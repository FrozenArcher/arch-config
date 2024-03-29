#!/bin/sh

run() {
	if ! pgrep -f "$1" ; then
		"$@"
	fi
}

~/.fehbg
run picom -b
run cfw &
run fcitx5 &
run nm-applet &
run udiskie --tray &
run blueman-applet &
run xfce4-power-manager &
run xfce4-screensaver &
run pasystray &
