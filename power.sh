#!/bin/bash

choice=$(echo -e "Shutdown\nReboot\nLogout\nCancel" | rofi -p -dmenu "Select an action:")

if [ "$choice" = "Logout" ]; then
    pkill -KILL -u "$USER"
elif [ "$choice" = "Reboot" ]; then
    sudo reboot
elif [ "$choice" = "Shutdown" ]; then
    sudo shutdown -h now
elif [ "$choice" = "Cancel" ]; then
    exit 1
else 
echo "Invalid choice"
fi