#!/bin/bash
help(){
	echo "setTime.sh [all the devices\'s name]"
}

if [ $# -gt 0 ];then
	filepath="../data/track.txt"
	if [ -e $filepath -a -r $filepath -a -w $filepath ];then
		echo "file $filepath has permission"

		#get time
		line=`head -1 $filepath`

		line=${line//[^0123456789.]/' '}
		line=${line#*' '}
		line=${line%%' '*}
		line=${line:0:0-3}
		echo "line:$line"
		temp=`date -d @$line +%F%T`
		#temp="2015-09-13 03:37:56"
		echo "temp:$temp"
		temp=${temp//[-:]/}
		date=${temp:0:0-6}
		time=${temp:0-6}
		time=$date.$time
		#echo "time:$temp"

		#adb -s Medfield4154E1D7 shell date -s $time
		#set all the device time
		for device_name in $*
		do
			echo "set device[$device_name]'s time $time"
			adb -s $device_name shell date -s $time
		done

	else
		echo "can't find the track.txt"
		exit 0
	fi
else
	echo "don't input the device name"
	help
fi
