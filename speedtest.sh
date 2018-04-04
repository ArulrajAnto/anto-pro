#!/bin/bash
start()
{
val1=$(awk 'NR==3' output.txt | grep -oP '\(\K[^)]+')
val2=$(awk -F ": " '{print $2}' output.txt | sed '/^$/d')
#echo -e "$val1 \n$val2"
if [ $val1 = "113.193.186.10" ]; then
key="Tikona"
elif [ $val1 == '182.74.233.246' ]; then
key="Airtel"
elif [ $val1 == 'null' ]; then
key="unknown"
else
exit 1
fi
#echo $val2
Download=$(echo "$val2" | awk 'FNR == 2 {print $1}' ) 
upload=$(echo "$val2" | awk 'FNR == 3 {print $1}' ) 
echo `hostname` "$key."download" $Download"
echo `hostname` "$key."upload" $upload"
}
speedtest()
{
cd /root/speedtest
/usr/bin/python speedtest_cli.py > output.txt
check=$(cat output.txt | wc -l)
if [ $check -eq 9 ]; then
start
else
exit 1
fi
}
#ifconfig eth1 10.1.5.205 netmask 255.255.0.0
speedtest
