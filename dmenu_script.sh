#!/bin/bash

value="${HOME}/codes\n${HOME}/embeddedLinux/repo3/poky\n${HOME}/Downloads"

select=$(echo -e "$value" | rofi -dmenu)

nautilus "$select" &