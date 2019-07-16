#!/bin/sh
BASE="http://192.168.86.74/decoder_control.cgi?loginuse=admin&loginpas=admin&onestep=0&15632464760490.1568509176296169&_=1563246476049&command="
DELAY=.3
if [ "$1" = "right" ]
  then curl "${BASE}6"
  sleep $DELAY
  curl "${BASE}7"
elif [ "$1" = "left" ]
  then curl "${BASE}4"
  sleep $DELAY
  curl "${BASE}5"
elif [ "$1" = "down" ]
  then curl "${BASE}2"
  sleep $DELAY
  curl "${BASE}3"
elif [ "$1" = "up" ]
  then curl "${BASE}0"
  sleep $DELAY
  curl "${BASE}1"
fi
