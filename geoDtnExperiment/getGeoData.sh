#!/bin/bash

for device in $*
do
	adb -s $device pull /sdcard/dtn_test_data ./geoDTN/$device/
	adb -s $device pull /sdcard/geoHistory_dtn ./geoDTN/$device/
done
