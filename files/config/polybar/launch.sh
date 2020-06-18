#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
# polybar -c ~/.config/polybar/config.ini mybar &
# polybar -c ~/.config/polybar/config.ini secondary &

polybar -c ~/.config/polybar/config2.ini left &
polybar -c ~/.config/polybar/config2.ini center1 &
polybar -c ~/.config/polybar/config2.ini center2 &
polybar -c ~/.config/polybar/config2.ini right &

polybar -c ~/.config/polybar/config.ini secondary &
