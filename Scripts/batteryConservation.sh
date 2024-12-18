#!/bin/bash

# Get the current charge limit value in the form "Minimum 0%, Maximum 100%"
current_limit=$(sudo framework_tool --charge-limit | awk '{print $4}' | tr -d '%')

# Determine the new charge limit based on the current value
if [ "$current_limit" -eq 60 ]; then
  new_limit=100
elif [ "$current_limit" -eq 100 ]; then
  new_limit=60
else
  new_limit=100
fi

# Set the new charge limit
sudo framework_tool --charge-limit $new_limit
# If the command failed, display an error message and exit, otherwise display a success message
if [ $? -ne 0 ]; then
  notify-send "Failed to set charge limit to $new_limit%" --icon=error
  exit 1
else
  notify-send "Charge limit set to $new_limit%" --icon=info
fi
