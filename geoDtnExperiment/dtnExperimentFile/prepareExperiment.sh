#!/bin/bash

for device in $*
do 
	echo "处理$device的必要实验文件"
	#push dtn payload file
	#echo "push dtn payload file"
	#adb -s $device push ./dtnMessage /sdcard/dtnMessage

	#push client program
	echo "push client program"
	#adb -s $device shell mount -o remount rw /system
	#adb -s $device push ./geoDTNClient/libs/armeabi/geoDtnClient-intel /system/xbin/geoDtnClient
	#adb -s $device shell chmod 755 /system/xbin/geoDtnClient
	#push map file
	echo "push map file"
	adb -s $device push ./sumoMap.db /sdcard/osmand-db/sumoMap.db

	#push dtn area neighbour info
	adb -s $device push ./geoDTN/$device/geoHistory_dtn/historyNeighbour /sdcard/geoHistory_dtn/historyNeighbour
	adb -s $device push ./geoDTN/$device/geoHistory_dtn/historyarea.obj /sdcard/geoHistory_dtn/historyarea.obj

done
