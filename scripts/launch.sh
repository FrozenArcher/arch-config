#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# wait until the processes have been shutdown
#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config.ini
#polybar main 2>&1 | tee -a /tmp/polybar.log & disown
polybar --config="~/.config/polybar/config.ini" -q $1
#polybar -q info

echo "Polybar launched..."

