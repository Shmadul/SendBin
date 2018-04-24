#!/bin/bash
go=$(/usr/local/Cellar/python/3.6.5/Frameworks/Python.framework/Versions/3.6/Resources/Python.app/Contents/MacOS/Python ./fusee-launcher.py $1)
if [ "$go" = "No TegraRCM device found?" ]; then
	osascript -e 'tell application (path to frontmost application as text) to display dialog "					No Switch Detected" buttons {"OK"} with title "SendBin"'
fi