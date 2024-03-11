#!/bin/bash

# foul evil code that is needlessly complicated for no reason <3

for arg in $@; do
	shift
	case "$arg" in
		'--on') 	set -- "$@" '-o'	;;
		'--off') 	set -- "$@" '-O'	;;
		*)		set -- "$@" "$arg"	;;	
	esac
done

# defauls
on="on"
off="off"

OPTIND=1
while getopts "oO" opt
do
	case "$opt" in
		'o') tog=$on ;;
		'O') tog=$off ;;
		'?') echo "you typed something wrong..."; exit 1;;
	esac
done

if [[ "$tog" == "on" ]]; then
	nmcli radio wifi on
	exit 0
elif [[ "$tog" == "off" ]]; then
	nmcli radio wifi off
	exit 0
else
	echo "now howd you manage this?"
	exit 1
fi

shift $(expr $OPTIND - 1)
