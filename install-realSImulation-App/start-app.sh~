#!/bin/bash
if [ $# -eq 1 ];then 

	if [ ! -e "../data/$1.txt" ];then
		echo ""
		echo "error: ../data/$1.txt dos't exist"
		echo ""
		exit 0
	fi

	echo "push the file ../data/nodeInfo.txt into device[$1]"
	adb -s $1 push ../data/$1.txt /sdcard/RealSimulator/nodeInfo.txt
	adb -s $1 push ../data/track.txt /sdcard/RealSimulator/track.txt


	installedApp=`adb -s $1 shell dumpsys package com.realsimulator.Main`
#echo $installedApp
	installedApp=${installedApp:0:3}
#echo $installedApp
	if [ ! $installedApp ];then
		#echo "$1 has not installed app"
		echo "$1 install RealSimulator.apk"
		adb -s $1 install ./RealSimulator.apk
	fi

	runApp=`adb -s $1 shell ps|grep "com.realsimulator.Main"`
	runApp=${runApp:0:3}
	if [ $runApp ];then
		adb -s $1 shell am force-stop com.realsimulator.Main
	fi

	echo "start realSimulator"
	adb -s $1 shell am start -n com.realsimulator.Main/com.realsimulator.Main.MainActivity
	
	runApp=`adb -s $1 shell ps|grep "com.realsimulator.Main"`
	echo "started realSimulator:$runApp"
fi
