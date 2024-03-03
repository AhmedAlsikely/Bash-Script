#!/bin/bash

choice=$(echo -e "Shutdown\nReboot\nLogout" | rofi -p -dmenu "Select an action:")

if [ "$choice" = "Logout" ]; then
    pkill -KILL -u "$USER"
elif [ "$choice" = "Reboot" ]; then
    sudo reboot
elif [ "$choice" = "Shutdown" ]; then
    sudo shutdown -h now
else 
echo "Invalid choice"
fi