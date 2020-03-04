#!/bin/sh

INTERFACE="${instance:-_first_}"
FORMAT_UP="${format_up:-E: %ip (%speed)}"
FORMAT_DOWN="${format_down:-E: down}"

_first_ () {
  for i in /sys/class/net/*
  do
    if test -d $i/device -a ! -d $i/wireless
    then
      basename $i
      break
    fi
  done
}

if [ "$INTERFACE" = "_first_" ]
then
  INTERFACE="$(_first_)"
fi

ip () {
  ifconfig "$INTERFACE" | grep -w inet | awk '{ print $2 }'
}

speed () {
  sed -e 's,$, MBit/s,' "/sys/class/net/$INTERFACE/speed"
}

if grep -wq up "/sys/class/net/$INTERFACE/operstate"
then
  echo "" 
  echo
  echo '#00ff00'
else
  echo ""
  echo
  echo '#ff0000'
fi

exit
