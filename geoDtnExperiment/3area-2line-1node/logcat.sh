#!/bin/bash
for device in `ls ./geoDTN`
do 
	if [ -d "./geoDTN/"$device ];then
		echo "$device logcat"
		gnome-terminal -x bash -c "adb -s $device logcat -s routerTest"
	fi
done
