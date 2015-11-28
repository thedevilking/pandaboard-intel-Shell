#!/bin/bash
for device in $*
do
	adb -s $device shell mount -o remount rw /system
	if [ ${device:0:6} = "Medfie" ];then
		adb -s $device push  ./pstat_adhoc0_intel /system/bin/packet_stat_adhoc0
	else
		adb -s $device push ./pstat_adhoc0_arm /system/bin/packet_stat_adhoc0
	fi

	adb -s $device shell chmod 777 /system/bin/packet_stat_adhoc0

	#clear the dir
	echo "adb -s $device shell rm /sdcard/packet_stat_adhoc0.txt"
	adb -s $device shell rm /sdcard/packet_stat_adhoc0.txt

	#run
	name=${device#*-}
	echo "adb -s $device shell  packet_stat_adhoc0 $name"
	gnome-terminal -x bash -c "adb -s $device shell  packet_stat_adhoc0 ${name}"

done
