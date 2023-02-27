#!/bin/bash 
dunstify "Surf Bookmarks" "fetching bookmarks" -t 2000
pyfile="/home/ghost/.scripts/decodejsonlz4.py"
python3 $pyfile
url=$(cat /home/ghost/.scripts/bookmark.json | jq '.' | grep uri | cut -d\" -f4 | rofi -dmenu -p "URL")
if [ -z "$url" ]
then
      dunstify "Surf Bookmarks" "bye bye" -t 2000
else
    xdotool type $url
fi 

