#!/usr/bin/env bash

# Automatically install purchased apps from the Mac App Store

mas signout

read -r -t 60 -p "What is yout Apple ID?: " appleid
mas signin --dialog "$appleid"
  
apps=(
	"Magnet:441258766"
	"907364780" #install pomodoro one 
	"Zee3:"
	"Coca:1000808993"
)

for app in "${apps[@]}"; do
    name=${app%%:*}
    id=${app#*:}

    echo -e "Attempting to install $name"
    mas install "$id"
done

    
