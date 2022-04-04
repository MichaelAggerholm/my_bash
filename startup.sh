#!/bin/bash

# nohub starts process and runs in background without shell having to be open.
# $@ catches all passed arguments.
# 1> trows all non-error messages to /dev/null which is basicly the trash bin..
# 2> throws all error messages to temporary ram file, which is deleted on shutdown.
function startApp() {
	nohup $@ 1>/dev/null 2>/tmp/startupErrors &
}

# Function to open chrome tabs and throw all messages to trash bin.
function xdgOpenTab() {
	nohup xdg-open $@ &>/dev/null &
}

# Programs to startup:
startApp flameshot
startApp spotify
startApp phpstorm
startApp discord

# Open my chrome tabs.
xdgOpenTab https://crm.tigermedia.dk/
xdgOpenTab https://mail.google.com/

# Change sound settings to fit bluetooth headset in / out.
pacmd set-default-sink 1
pacmd set-default-source 2

# Set position and size of applications
# xprop used to find current details about window locations
# wmctrl used to move and resize. 
wmctrl -e 0,68,27,1676,1383 -r git.repo
