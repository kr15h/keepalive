#! /bin/bash

case "$(pidof myprocess | wc -w)" in

0)  echo "Restarting My Process:     $(date)" >> /var/log/myprocess.txt
    /home/pi/startprocess.sh &
    ;;
1)  # all ok
    ;;
*)  echo "Removed double My Process: $(date)" >> /var/log/myprocess.txt
    kill $(pidof omxplayer | awk '{print $1}')
    ;;
esac