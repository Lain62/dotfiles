#!/bin/sh
set xe

# Sets up my laptop monitor
xrandr --output eDP --mode 1920x1080 --pos 0x0 --scale 1x1
# Sets up xp-pen artist 12 (2nd gen) graphic tablet
xrandr --output HDMI-A-0 --mode 1920x1080 --right-of eDP --scale 1x1
