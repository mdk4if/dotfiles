#!/bin/bash

script=$(ls ~/.scripts | rofi -dmenu -i -p "Search")
bash ~/.scripts/$script
