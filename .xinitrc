#!/bin/sh

unset http_proxy
unset https_proxy

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

export QT_QPA_PLATFORMTHEME=qt5ct

session=${1:-dwm}

case $session in
    bsp|bspwm|b       )
        exec bspwm;;
    dwm|d             )
        exec ~/dwm/scripts/loop-dwm.sh;;
    i3|i3wm|i         )
        exec i3;;
    kde|k             )
        unset QT_QPA_PLATFORMTHEME
        exec startplasma-x11;;
    *                 )
        exec $1;;
esac

