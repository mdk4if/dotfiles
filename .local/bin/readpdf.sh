pdf=$(find ~/dox/ "*.pdf" | rofi -dmenu -i -p "search")
if [[ $pdf = "" ]]; then
    exit 0
fi
zathura $pdf


