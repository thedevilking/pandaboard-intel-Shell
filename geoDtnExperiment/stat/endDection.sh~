#!/bin/bash

#set down the ports
echo "adb -s $1 shell ifconfig adhoc0 down"
adb -s $1 shell ifconfig adhoc0 down

#pull the stat data
adb -s $1 pull /sdcard/packet_stat_adhoc0.txt ../geoDTN/packet-${1}.txt


