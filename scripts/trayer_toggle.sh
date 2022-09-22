result=$(pgrep -u $UID -x trayer)
if [ "$result" == "" ]; then
    trayer --edge top --align center --distance 40 --width 15 --height 40 --SetDockType true --transparent true --tint 0xED3F3F3F --padding 5 &
else
    eval "killall trayer"
fi
