#!/bin/bash

variable=`cat /sys/class/backlight/amdgpu_bl1/brightness`
declare -i variable

if [[ "$1" == "up" ]] && [[ "$variable" -lt "255" ]]; then
	newv=$((variable+20))
	echo $newv > /sys/class/backlight/amdgpu_bl1/brightness
	#echo $newv
	#cat /sys/class/backlight/intel_backlight/brightness
elif [[ "$1" == "down" ]] && [[ "$variable" -gt "15" ]]; then
	newv=$((variable-20))
	echo $newv > /sys/class/backlight/amdgpu_bl1/brightness
	#echo $newv
	#cat /sys/class/backlight/intel_backlight/brightness
elif [[ "$1" == "down" ]] && [[ "$variable" == "15" ]]; then
	newv=$((variable-15))
	echo $newv > /sys/class/backlight/amdgpu_bl1/brightness
elif [[ "$1" == "down" ]] && [[ "$variable" == "0" ]]; then
	echo ""
elif [[ "$1" == "up" ]] && [[ "$variable" == "0" ]]; then
	newv=$((variable+15))
	echo $newv > /sys/class/backlight/amdgpu_bl1/brightness
else
	echo "huh"
fi
