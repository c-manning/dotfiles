#!/bin/bash

IP=$(ipconfig getifaddr en0)
#PUB_IP=$(dig +short myip.opendns.com @resolver1.opendns.com)
PUB_IP=`curl https://canihazip.com/s`

#INTERNET=''
#INTERNET='📶'
INTERNET='📡'

internet_info=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | grep CtlRSSI | sed -e 's/^.*://g' | sed 's/-//g' | tr -d " ")

if [[ $internet_info -lt 20 ]]; then
    echo -n '#[fg=colour116]'
elif [[ $internet_info -lt 30 ]]; then
    echo -n '#[fg=colour117]'
elif [[ $internet_info -lt 40 ]]; then
    echo -n '#[fg=colour118]'
elif [[ $internet_info -lt 50 ]]; then
    echo -n '#[fg=colour119]'
else
    echo -n '#[fg=colour120]'
fi

#echo -n "$INTERNET[$internet_info] #[fg=colour197]$IP | $PUB_IP"
echo -n "$INTERNET[$internet_info] #[fg=colour197]$PUB_IP"


