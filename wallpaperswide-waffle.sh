#!/bin/sh

export DISPLAY=:0
UA="Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B405"
CAT=$(echo -e "girls\ntravel\nfantasy\nspace\nnature" | shuf -n1)
echo -e "category\t${CAT}"
URL=http://wallpaperswide.com/download$(curl -c /tmp/wallpaperswide.cookie -s http://wallpaperswide.com/${CAT}-desktop-wallpapers/page/`shuf -i 1-100 -n 1` | grep -o "\/[^\"]*-wallpapers.html" | grep -v "desktop" | uniq | shuf -n1 | sed 's/wallpapers.html/wallpaper-1366x768.jpg/g')

echo -e "url\t$URL"
FILENAME=$(basename "${URL}")
cd "/home/${USER}/Pictures/wallpapers"
curl --cookie /tmp/wallpaperswide.cookie -A "${UA}" "${URL}" -o "${CAT}-${FILENAME}" && /usr/local/bin/waffle.sh last
