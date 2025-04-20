#!/bin/bash

# upower pour obtenir la consommation en watts
power=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep "energy-rate" | awk '{print $2}')

# Affiche la consommation en watts avec deux décimales
printf "%.2fW" $power
