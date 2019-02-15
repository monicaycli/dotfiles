#!/usr/bin/env bash
login_items=(\
  "/Applications/Bartender 3.app" \
  "/Applications/Alfred 3.app" \
  "/Applications/SizeUp.app" \
  "/Applications/Setapp/Switchem.app" \
  "/Applications/Setapp/Timing.app" \
  #"/Applications/Setapp/iStat Menus.app" \
  "/Applications/Setapp/Forecast Bar.app" \
  "/Applications/Fantastical 2.app" \
  "/Applications/Cardhop.app" \
  "/Applications/OmniFocus.app" \
  "/Applications/TotalSpaces2.app" \
  "/Applications/Setapp/Boom 3D.app" \
  "/Applications/Spotify.app" \
  "/Applications/Google Drive File Stream.app" \
  "/Applications/Backup and Sync.app" \
  "/Applications/Dropbox.app" \
  "/Applications/LastPass.app" \
  )

for ((i=0; i < ${#login_items[@]}; i++))
do
  open -a "${login_items[$i]}" --hide
  sleep 3s
done

osascript \
  -e 'activate application "Timing"' \
  -e 'tell application "System Events"' \
  -e 'tell process "Timing"' \
  -e 'click menu item "Close" of menu "File" of menu bar item "File" of menu bar 1 of it' \
  -e 'end tell' \
  -e 'end tell'

osascript \
  -e 'activate application "Spotify"' \
  -e 'tell application "System Events"' \
  -e 'tell process "Spotify"' \
  -e 'click menu item "Minimize" of menu "Window" of menu bar item "Window" of menu bar 1 of it' \
  -e 'end tell' \
  -e 'end tell'
