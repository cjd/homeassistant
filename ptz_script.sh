#!/bin/sh
BASE="http://${1}/decoder_control.cgi?loginuse=admin&loginpas=admin&onestep=0&15632464760490.1568509176296169&_=1563246476049&command="
DELAY=.3
if [ "$2" = "right" ]
  then curl -s "${BASE}6" >/dev/null
  sleep $DELAY
  curl -s "${BASE}7" >/dev/null
elif [ "$2" = "left" ]
  then curl -s "${BASE}4" >/dev/null
  sleep $DELAY
  curl -s "${BASE}5" >/dev/null
elif [ "$2" = "down" ]
  then curl -s "${BASE}2" >/dev/null
  sleep $DELAY
  curl -s "${BASE}3" >/dev/null
elif [ "$2" = "up" ]
  then curl -s "${BASE}0" >/dev/null
  sleep $DELAY
  curl -s "${BASE}1">/dev/null
elif [ "$2" = "away" ]
  then curl -s "${BASE}31" >/dev/null
elif [ "$2" = "home" ]
  then curl -s "${BASE}33" >/dev/null
fi
