#!/bin/bash

sudo systemctl start bluetooth.service
bluetoothctl power on
bluetoothctl remove 41:42:82:21:5D:77
bluetoothctl pair 41:42:82:21:5D:77
bluetoothctl connect 41:42:82:21:5D:77

