#! /bin/bash

case "$(pidof myprocess | wc -w)" in

0)  echo "Restarting My Process:     $(date)" >> /var/log/myprocess.txt
    /home/pi/myprocess -and -some -args &
    ;;
1)  # all ok
    ;;
*)  echo "Removed double My Process: $(date)" >> /var/log/myprocess.txt
    kill $(pidof myprocess | awk '{print $1}')
    ;;
esac