#!/bin/bash

if [ $# -ne 2 ];then
	echo "error : `basename $0` devices-name ip-addr"
	exit
fi

ip=$2

filename="./blacklist.txt"
if [ ! -e $filename ];then
	echo "blacklist.txt is't exist"
	exit
fi

aodvblacklist=""
dtnblacklist=""

while read line
do
	#echo "check blacklist.txt line:$line"
	temp="0"
	for str in $line
	do
		if [ $temp = "1" ];then
			temp="2"
			aodvblacklist=$str
			continue
		elif [ $temp = "2" ];then
			dtnblacklist=$str
			
			break
		fi

		if [  $str = $ip ];then
			temp="1"
			continue
		else
			break
		fi
	done

#	if [ ! temp = "0" ];then
#		break
#	fi

done < $filename

#echo "adb -s $1 shell sh /system/adhoc-config-intel.sh $ip $aodvblacklist $dtnblacklist"
adb -s $1 shell sh /system/adhoc-config-intel.sh $ip $aodvblacklist $dtnblacklist
