#!/bin/bash
for i in 10.2.255.254
do
   ping -c 10 -t 1 "$i" >/dev/null 2>&1 &&
   echo "Ping Status of $i : Success" || echo "Ping Status of $i : Failed"  
done
