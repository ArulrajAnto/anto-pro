for ip=10.2.255.254 in $(seq int1 int2); do
    ping -c 1 xxx.xxx.xxx.$ip | grep "bytes from" &
done
