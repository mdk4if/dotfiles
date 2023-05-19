#!/usr/bin/bash -e

while true
do
  echo "GO and work" | rofi -dmenu
	sleep 25m
  mpv ~/sound.mp3
  echo "take rest" | rofi -dmenu
  sleep 5m
done
