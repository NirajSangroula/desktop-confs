#!/bin/sh
setxkbmap us dvorak
xmodmap ~/.Xmodmap

#xinput fix
xinput set-prop 17 "libinput Natural Scrolling Enabled" 1
xinput set-prop 17 "libinput Tapping Enabled" 1
