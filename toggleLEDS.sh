#!/bin/bash

LED0=/sys/class/leds/beaglebone:green:usr0/brightness
LED1=/sys/class/leds/beaglebone:green:usr1/brightness
LED2=/sys/class/leds/beaglebone:green:usr2/brightness
LED3=/sys/class/leds/beaglebone:green:usr3/brightness
LED0_STATE=$(cat "$LED0")
LED1_STATE=$(cat "$LED1")
LED2_STATE=$(cat "$LED2")
LED3_STATE=$(cat "$LED3")

if [ $# -eq 0 ]; then
	echo "Usage:		./toggleLEDS <on/off/toggle>"
	echo "Alternatively: 	./toggleLEDS <0-3> <on/off/toggle>"
	exit 2
fi

#Switch all LEDS ON
if [ "$1" == "on" ]; then
	echo "All LEDS ON!"
	echo 1 >> "$LED0"
	echo 1 >> "$LED1"
	echo 1 >> "$LED2"
	echo 1 >> "$LED3"
fi

#Switch all LEDS OFF
if [ "$1" == "off" ]; then
	echo "All LEDS OFF!"
	echo 0 >> "$LED0"
	echo 0 >> "$LED1"
	echo 0 >> "$LED2"
	echo 0 >> "$LED3"
fi

#Switch LED0 ON
if [ "$1" == "0" ] && [ "$2" == "on" ]; then
	echo "LED0 ON!"
	echo 1 >> "$LED0"
fi

#Switch LED0 OFF
if [ "$1" == "0" ] && [ "$2" == "off" ]; then
	echo "LED0 OFF!"
	echo 0 >> "$LED0"
fi

#Switch LED1 ON
if [ "$1" == "1" ] && [ "$2" == "on" ]; then
	echo "LED1 ON!"
	echo 1 >> "$LED1"
fi

#Switch LED1 OFF
if [ "$1" == "1" ] && [ "$2" == "off" ]; then
	echo "LED1 OFF!"
	echo 0 >> "$LED1"
fi

#Switch LED2 ON
if [ "$1" == "2" ] && [ "$2" == "on" ]; then
	echo "LED2 ON!"
	echo 1 >> "$LED2"
fi

#Switch LED2 OFF
if [ "$1" == "2" ] && [ "$2" == "off" ]; then
	echo "LED2 OFF!"
	echo 0 >> "$LED2"
fi

#Switch LED3 ON
if [ "$1" == "3" ] && [ "$2" == "on" ]; then
	echo "LED3 ON!"
	echo 1 >> "$LED3"
fi

#Switch LED3 OFF
if [ "$1" == "3" ] && [ "$2" == "off" ]; then
	echo "LED3 Off!"
	echo 0 >> "$LED3"
fi

#Toggle all LEDs
if [ "$1" == "toggle" ]; then
	echo "all LEDs toggled"
	if [[ LED0_STATE -eq 0 ]]; then echo 1 > "$LED0" 
	else echo 0 > "$LED0" 
	fi
	if [[ LED1_STATE -eq 0 ]]; then echo 1 > "$LED1" 
	else echo 0 > "$LED1" 
	fi
	if [[ LED2_STATE -eq 0 ]]; then echo 1 > "$LED2" 
	else echo 0 > "$LED2" 
	fi
	if [[ LED3_STATE -eq 0 ]]; then echo 1 > "$LED3" 
	else echo 0 > "$LED3" 
	fi
fi

#Toggle LED0
if [ "$1" == "0" ] && [ "$2" == "toggle" ]; then
	if [[ LED0_STATE -eq 0 ]]; then echo 1 > "$LED0" 
	else echo 0 > "$LED0" 
	fi
fi

#Toggle LED1
if [ "$1" == "1" ] && [ "$2" == "toggle" ]; then
	if [[ LED1_STATE -eq 0 ]]; then echo 1 > "$LED1"
	else echo 0 > "$LED1"
	fi
fi

#Toggle LED2
if [ "$1" == "2" ] && [ "$2" == "toggle" ]; then
	if [[ LED2_STATE -eq 0 ]]; then echo 1 > "$LED2"
	else echo 0 > "$LED2"
	fi
fi

#Toggle LED3
if [ "$1" == "3" ] && [ "$2" == "toggle" ]; then
	if [[ LED3_STATE -eq 0 ]]; then echo 1 > "$LED3"
	else echo 0 > "$LED3"
	fi
fi
