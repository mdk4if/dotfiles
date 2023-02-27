#!/usr/bin/env bash

path="/home/$USER/pix/wallpapers/"
wall=$(ls /home/$USER/pix/wallpapers/ | shuf -n 1)
betterlockscreen -u $path$wall
