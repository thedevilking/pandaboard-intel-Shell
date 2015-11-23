#!/bin/bash

for device in $*
do
	adb -s $device pull /sdcard/dtn_test_data/ ./geoDTN/$device/dtn_test_data/
	adb -s $device pull /sdcard/geoHistory_dtn/ ./geoDTN/$device/geoHistory_dtn/
done
