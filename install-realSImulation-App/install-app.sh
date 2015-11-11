#!/bin/bash

help(){
	echo "install-app.sh [device name]"
}

if [ $# -gt 0 ];then 
#	echo "with arguments:$#,$*"
	installedApp=`adb -s $1 shell dumpsys package com.realsimulator.Main`
#echo $installedApp
	installedApp=${installedApp:0:3}
#echo $installedApp
	if [ ! $installedApp ];then
		#echo "$1 has not installed app"
		echo "$1 install RealSimulator.apk"
		adb -s $1 install ./RealSimulator.apk

		#push the necessary file
		if [ -z `ls ../data/track.txt` ];then
			echo "$1 the track.txt is't existed in the ../data/"
			exit 0
		fi
		#echo "$1 push the file ../data/nodeInfo.txt into device[$1]"
		#`adb -s $1 push ../data/nodeInfo.txt /sdcard/RealSimulator/nodeInfo.txt`
		#`adb -s $1 push ../data/track.txt /sdcard/RealSimulator/track.txt`
	else
		echo "$1 already install app"
	fi

	
else
	help
fi
