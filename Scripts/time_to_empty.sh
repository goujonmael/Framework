#!/bin/bash

# upower pour obtenir le "time to empty"
time_to_empty=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep "time to empty" | awk '{print $4 " " $5}')

# Affiche le "time to empty"
echo $time_to_empty
