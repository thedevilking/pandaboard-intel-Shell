#!/bin/bash
devices="0123456789ABCDEF"
devices_new="med-192.168.1.11"
change_name_file="change1.11.sh"
#change_name_file="change1.13.sh"

echo "mount /system"
adb -s $devices shell mount -o remount rw /system

echo "push push ./$change_name_file /system/change.sh"
adb -s $devices push ./$change_name_file /system/change.sh

echo "push ./adhoc-config-intel3.sh /system/adhoc-config-intel.sh"
adb -s $devices push ./adhoc-config-pan3.sh /system/adhoc-config-intel.sh
adb -s $devices_new push ./adhoc-config-pan3.sh /system/adhoc-config-intel.sh

echo "push ./fbaodv_intel.ko /system/fbaodv_intel.ko"
adb -s $devices push ./fbaodv_panda.ko /system/fbaodv_panda.ko
adb -s $devices_new push ./fbaodv_panda.ko /system/fbaodv_panda.ko

echo "sh /system/change.sh"
adb -s $devices shell sh /system/change.sh

adb kill-server
sudo adb devices

echo "adb -s $devices_new shell rm /sdcard/dtn/storage/*"
adb -s $devices_new shell rm /sdcard/dtn/storage/*
adb -s $devices_new shell rm /sdcard/dtn_test_data/*

echo "adb -s $devices_new shell sh /system/adhoc-config-intel.sh 192.168.1.11"
adb -s $devices_new shell sh /system/adhoc-config-intel.sh 192.168.1.11

#adb -s $devices_new shell rmmod fbaodv_intel
