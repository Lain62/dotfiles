#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Launch bar1 and bar2
#echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
# polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown
# olybar bar1 2>&2 | tee -a /tmp/polybar2.log & disown
# polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown

# MONITOR=eDP polybar bar1 &
# MONITOR=HMDI-A-0 polybar bar1 

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload bar1 &
done


echo "Bars launched..."
