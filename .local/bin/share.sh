#!/bin/bash

if [[ $1 = "" ]]; then
  echo "share.sh <filename>"
  exit 0
fi
file=$1
curl -F"file=@$file" http://0x0.st | wl-copy > /dev/null 2>&1
echo "link copied !!"
