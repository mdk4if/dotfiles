pdf=$(find ~/dox -name "*.pdf" | rofi -dmenu -i -p "search")
if [[ $pdf = "" ]]; then
    exit 0
fi
zathura $pdf


