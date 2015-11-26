#!/bin/bash

for device in `ls ./geoDTN`
do 
	if [ -d "./geoDTN/"$device ];then
		echo "处理$device的必要实验文件"
		#push dtn payload file
		echo "push dtn payload file"
		adb -s $device push ./dtnMessage /sdcard/dtnMessage
		#push client program
		echo "push client program"
		adb -s $device shell mount -o remount rw /system
		adb -s $device push ./geoDtnClient /system/xbin/geoDtnClient
		adb -s $device shell chmod 7555 /system/xbin/geoDtnClient
		#push map file
		echo "push map file"
		adb -s $device push ./sumoMap.db /sdcard/osmand-db/sumoMap.db

		#push dtn area neighbour info
		echo "push dtn area neighbour info"
		for file in `ls ./geoDTN/$device`
		do
			adb -s $device push ./geoDTN/$device/$file /sdcard/$file
		done
	else
		echo "存在不合法的文件:$device"
		exit
	fi

done
