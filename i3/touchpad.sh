#!/bin/bash

sleep 2

DEVICE=$(xinput list | grep -i touchpad | grep -o 'id=[0-9]*' | cut -d= -f2)

xinput set-prop $DEVICE "libinput Natural Scrolling Enabled" 1
xinput set-prop $DEVICE "libinput Accel Speed" 0.2
xinput set-prop $DEVICE "libinput Tapping Enabled" 1
