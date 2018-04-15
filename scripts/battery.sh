batteryPercent=`pmset -g batt | sed -n '2 p' | cut -f1 -d";" | tail -c 5`
connectionStatus=`pmset -g batt | sed -n '2 p' | cut -f2 -d';' `
batteryIcon=🔋 
chargeIcon=⚡
case `pmset -g batt | sed -n '1 p' | cut -f2 -d"'"` in
'AC Power')
  message=$chargeIcon
  ;;
'Battery Power')
  message=$batteryIcon
  ;;
esac
echo $message' '$batteryPercent 
