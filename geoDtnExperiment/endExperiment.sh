#!/bin/bash

package="android.geosvr.dtn"

for device in $*
do 
	adb -s $device shell am force-stop $package

done
