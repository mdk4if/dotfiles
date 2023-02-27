#!/usr/bin/python

import lz4.block  # pip install lz4 --user
import os
import json
filepaths = "/home/ghost/.mozilla/firefox/szz41jmj.default-release/bookmarkbackups/"
for filepath in os.listdir(filepaths):
    final_path = filepaths + filepath 
    bytestream = open(final_path, "rb")
    bytestream.read(8)  # skip past the b"mozLz40\0" header
    valid_bytes = bytestream.read()
    text = lz4.block.decompress(valid_bytes)
output = open("/home/ghost/.scripts/bookmark.json","wb")
output.write(text)
output.close()
