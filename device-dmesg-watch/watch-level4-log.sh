#!/bin/bash

help(){
	echo "watch-level4-log.sh [device's name]"
}

if [ $# -eq 1 ];then
	
	echo "this is device $1"
	
	while true
	do
		clear
		echo "************************************"
		
		adb -s $1 shell "dmesg -c -n 4"|grep "iAODV in RS"
		#adb -s $1 shell "dmesg -c -n 4"|grep "testWu:temp"
		adb -s $1 shell netcfg
		sleep 2
	done
	
else
	echo "error : You don't input the device's name"
	help
fi
