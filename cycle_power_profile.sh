#!/bin/bash

# Get current power profile
current_profile=$(powerprofilesctl get)

# Define the profiles in order
profiles=("power-saver" "balanced" "performance")

# Find the next profile
next_profile=""
for i in "${!profiles[@]}"; do
    if [ "${profiles[$i]}" = "$current_profile" ]; then
        # Get the next profile, wrapping around to the first if we're at the end
        next_index=$(( (i + 1) % ${#profiles[@]} ))
        next_profile="${profiles[$next_index]}"
        break
    fi
done

# Set the new profile
powerprofilesctl set "$next_profile"

# Send notification
notify-send "Power Profile" "Switched to $next_profile mode" --icon=preferences-system-power 