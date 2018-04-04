#!/bin/bash
IP=10.2.255.254
COUNT=20
cd $(dirname "$0")
SCRIPTNAME=$(basename "$0")
for myHost in $IP
do
  msg=$(ping -c $COUNT $myHost| grep 'loss' | grep 'received')
  echo "($myHost $COUNT) $msg" >> /home/admin/PINGres.txt
  #count=$(ping -c $COUNT $myHost | grep 'received' | awk -F',' '{ print $2 }' | awk '{ print $1 }')
  #if [ $count -eq 0 ]; then
    # 100% failed
  #  echo "Host : $myHost is down (ping failed) at $(date)" | mail -s "$SUBJECT" $EMAILID
  #fi
done
