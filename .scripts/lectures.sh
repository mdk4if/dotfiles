#!/bin/bash

path="/home/$USER/arena/lectures/"
vdo=$(ls /home/ghost//arena/lectures/ | rofi -dmenu -i -p "Search")
mpv $path$vdo
