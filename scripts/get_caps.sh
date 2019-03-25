#!/bin/sh
STATUS=$(xset q | grep "Caps Lock" | sed -r 's/.*(off|on).*Num.*/\1/')
[[ $STATUS == "on" ]] && echo "on"