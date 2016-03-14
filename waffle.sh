#!/bin/bash

SOURCE="/home/${USER}/Pictures/wallpapers/"

COMMAND=$@
LAST_WALLPAPER=$(cat /tmp/waffle.tmp 2>/dev/null)

cd $SOURCE

if [[ $COMMAND == "prev" ]]; then
    WALLPAPER=$(ls -Rt | grep -A 1 "${LAST_WALLPAPER}" | tail -n 1)
elif [[ $COMMAND == "next" ]]; then
    WALLPAPER=$(ls -Rt | grep -B 1 "${LAST_WALLPAPER}" | head -n 1)
elif [[ $COMMAND == "last" ]]; then
    WALLPAPER=$(ls -t | head -n 1)
else
    WALLPAPER=$(find "." | shuf | head -n 1)
fi

if [ -f "${WALLPAPER}" ]; then
    feh --bg-scale "${WALLPAPER}"
    echo "${WALLPAPER}" > /tmp/waffle.tmp
    echo "${WALLPAPER}"
else
    echo "EOL"
fi
