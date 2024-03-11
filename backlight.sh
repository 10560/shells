#!/bin/bash

variable=`cat /sys/class/backlight/intel_backlight/brightness`
declare -i variable

if [[ "$1" == "up" ]] && [[ "$variable" -lt "7500" ]]; then
	newv=$((variable+500))
	echo $newv > /sys/class/backlight/intel_backlight/brightness
	#echo $newv
	#cat /sys/class/backlight/intel_backlight/brightness
elif [[ "$1" == "down" ]] && [[ "$variable" -gt "500" ]]; then
	newv=$((variable-500))
	echo $newv > /sys/class/backlight/intel_backlight/brightness
	#echo $newv
	#cat /sys/class/backlight/intel_backlight/brightness
else
	echo "huh"
fi
