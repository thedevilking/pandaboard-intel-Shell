#!/bin/bash
devices="Medfield4154E1D7"

echo "mount /system"
adb -s $devices shell mount -o remount rw /system

echo "push push ./change1.13.sh /system/change.sh"
adb -s $devices push ./change1.13.sh /system/change.sh

echo "push ./adhoc-config-intel3.sh /system/adhoc-config-intel.sh"
adb -s $devices push ./adhoc-config-intel3.sh /system/adhoc-config-intel.sh
adb -s "med-192.168.1.13" push ./adhoc-config-intel3.sh /system/adhoc-config-intel.sh

echo "push ./fbaodv_intel.ko /system/fbaodv_intel.ko"
adb -s $devices push ./fbaodv_intel.ko /system/fbaodv_intel.ko
adb -s "med-192.168.1.13" push ./fbaodv_intel.ko /system/fbaodv_intel.ko

echo "sh /system/change.sh"
adb -s $devices shell sh /system/change.sh

adb kill-server
adb devices

echo "adb -s "med-192.168.1.13" shell rm /sdcard/dtn/storage/*"
adb -s "med-192.168.1.13" shell rm /sdcard/dtn/storage/*
adb -s "med-192.168.1.13" shell rm /sdcard/dtn_test_data/*

echo "adb -s "med-192.168.1.13" shell sh /system/adhoc-config-intel.sh 192.168.1.13"
adb -s "med-192.168.1.13" shell sh /system/adhoc-config-intel.sh 192.168.1.13

#adb -s "med-192.168.1.3" shell rmmod fbaodv_intel
