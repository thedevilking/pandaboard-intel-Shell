#!/bin/bash

if [ $# -eq 1 ];then
	adb -s $1 shell netcfg
	adb -s $1 logcat -s "routerTest"
	#adb -s $1 logcat -s "EpidemicBundleRouter"
	#adb -s $1 logcat -s "TableBasedRouter"
else
	echo "error format"
fi
