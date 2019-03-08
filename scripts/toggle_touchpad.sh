#!/bin/bash
#TOUCHPAD=$1
TOUCHPAD=$(xinput | grep Touchpad | sed -r 's|.*id=([0-9]+).*$|\1|')
TOUCHPAD_STATUS=`xinput list-props $TOUCHPAD | grep "Device Enabled" | sed -r 's|.*([0-9]+)\s*$|\1|'`

if [ $TOUCHPAD_STATUS -eq 1 ]; then
	xinput disable $TOUCHPAD
	echo "touchpad now disabled"
	notify-send "Touchpad disabled" -u low -t 500
else
	xinput enable $TOUCHPAD
	echo "touchpad now enabled"
	notify-send "Touchpad enabled" -u low -t 500
fi