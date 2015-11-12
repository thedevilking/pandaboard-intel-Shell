#!/bin/bash

for device in $*
do
	echo "clear device($device)'s geoDTN expriment data"
	echo "clear dtn/storage/"
	adb -s $device shell rm -r /sdcard/dtn/*

	echo "dtn_test_data/"
	adb -s $device shell rm -r /sdcard/dtn_test_data/*
	#adb -s $device shell rm /sdcard/dtn_test_data/areamoving.log
	#adb -s $device shell rm /sdcard/dtn_test_data/upload.log
	#adb -s $device shell rm /sdcard/dtn_test_data/download.log
	#adb -s $device shell rm /sdcard/dtn_test_data/battery.log

	echo "geoHistory_dtn/"
	adb -s $device shell rm -r /sdcard/geoHistory_dtn/*
	#adb -s $device shell rm /sdcard/geoHistory_dtn/GeohistoryLog.txt
	#adb -s $device shell rm /sdcard/geoHistory_dtn/historyarea.obj
	#adb -s $device shell rm -r /sdcard/geoHistory_dtn/neighbour_area
done
