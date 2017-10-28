#!/bin/bash
#
#

LED0=/sys/class/leds/beaglebone:green:usr0/brightness
LED1=/sys/class/leds/beaglebone:green:usr1/brightness
LED2=/sys/class/leds/beaglebone:green:usr2/brightness
LED3=/sys/class/leds/beaglebone:green:usr3/brightness

if [ $# -eq 0 ]; then
	echo "Usage: ./toggleLEDS <on/off>"
	echo "Alternatively ./toggleLEDS <0-3> <on/off>"
	exit 2
fi

if [ "$1" == "on" ]; then
	echo "All LEDS are ON!"
	echo 1 >> "$LED0"
	echo 1 >> "$LED1"
	echo 1 >> "$LED2"
	echo 1 >> "$LED3"
fi

if [ "$1" == "off" ]; then
	echo "All LEDS are OFF!"
	echo 0 >> "$LED0"
	echo 0 >> "$LED1"
	echo 0 >> "$LED2"
	echo 0 >> "$LED3"
fi

if [ "$1" == "0" ] && [ "$2" == "on" ]; then
	echo "Toggled LED0 ON!"
	echo 1 >> "$LED0"
fi
if [ "$1" == "0" ] && [ "$2" == "off" ]; then
	echo "Toggled LED0 OFF!"
	echo 0 >> "$LED0"
fi
if [ "$1" == "1" ] && [ "$2" == "on" ]; then
	echo "Toggled LED1 ON!"
	echo 1 >> "$LED1"
fi
if [ "$1" == "1" ] && [ "$2" == "off" ]; then
	echo "Toggled LED1 OFF!"
	echo 0 >> "$LED1"
fi
if [ "$1" == "2" ] && [ "$2" == "on" ]; then
	echo "Toggled LED2 ON!"
	echo 1 >> "$LED2"
fi
if [ "$1" == "2" ] && [ "$2" == "off" ]; then
	echo "Toggled LED2 OFF!"
	echo 0 >> "$LED2"
fi
if [ "$1" == "3" ] && [ "$2" == "on" ]; then
	echo "Toggled LED3 ON!"
	echo 1 >> "$LED3"
fi
if [ "$1" == "3" ] && [ "$2" == "off" ]; then
	echo "Toggled LED3 Off!"
	echo 0 >> "$LED3"
fi

