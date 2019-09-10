#!/usr/bin/env bash

#count=0
#disconnected="DISCONNECTED"
#wireless_connected=""
#ethernet_connected=""

#SSID="$(iwgetid -r)"
#SSID+=" | "
#SSID+="$(wicd-cli -d --wireless | grep Quality | cut -d ' ' -f2)"
#SSID+="%"
#ID="$(ip link | awk '/state UP/ {print $2}')" 
#while true; do
    #if (ping -c 1 archlinux.org || ping -c 1 google.com || ping -c 1 bitbucket.org || ping -c 1 github.com || ping -c 1 sourceforge.net) &>/dev/null; then
        #if [[ $ID == e* ]]; then
            #echo "$SSID" ; sleep 25
        #else
            #echo "$SSID" ; sleep 25
        #fi
    #else
        #echo "$disconnected" ; sleep 0.5
    #fi
#done

CURRENT_LAYOUT=$(~/.bin/kblayout print "%s")
if [ $CURRENT_LAYOUT == "fr" ]; then
  setxkbmap us -variant colemak
else
  setxkbmap fr
fi