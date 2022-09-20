#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

source ~/.xprofile

# Here dwm is kept as default
session=${1:-dwm}

case $session in
    dwm               )
        # Statusbar loop
        while true; do
            xsetroot -name "$( date +"%F %R" )"
            sleep 1m    # Update time every minute
        done &

        # Autostart section
        # pcmanfm &

        # wallpaper
        ~/.fehbg &
        # input method
        fcitx5 -d --verbose 2
        # tray apps
        blueberry-tray
        udiskie --tray &
        nm-applet &

        exec dwm;;

    i3|i3wm           ) exec i3;;
    kde|plasma        )
        unset QT_QPA_PLATFORMTHEME
        exec startplasma-x11;;

    # No known session, try to run it as command
    *                 ) exec $1;;
esac

