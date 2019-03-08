#!/bin/sh
STATUS=$(xset q | grep "Caps Lock" | sed -r 's/.*(off|on).*Num.*/\1/')
echo $STATUS
notify-send "Caps lock $STATUS" -u low -t 500
