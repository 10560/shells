#!/bin/bash

echo "thisll fish ya."

echo "so what season is it? (spring/summer/fall/winter)"
read season

if [[ "$season" == "spring" ]]; then
	echo "is it raining? (y/n)"
	read rain
	if [[ "$rain" == "y" ]]; then
		echo "fish at the river"
		exit 1
	elif [[ "$rain" == "n" ]]; then
		echo "fish at the mountain lake"
		exit 1
	else
		echo "sorry, you musta made a typo"
		exit 1
	fi
elif [[ "$season" == "summer" ]]; then
	echo "is it raining? (y/n)"
	read rain
	if [[ "$rain" == "y" ]]; then
		echo "fish at the secret woods pond"
		exit 1
	elif [[ "$rain" == "n" ]]; then
		echo "fish at the ocean"
		exit 1
	else
		echo "sorry, you musta made a typo"
		exit 1
	fi
elif [[ "$season" == "fall" ]]; then
	echo "fish at the river"
	exit 1
elif [[ "$season" == "winter" ]]; then
	echo "fish at the ocean"
	exit 1
else 
	echo "pardon?"
fi
