#push stat packet into the devices
adb -s "Panda-192.168.5.26" push ./pstat_adhoc0_arm /system/bin/packet_stat_adhoc0
adb -s "Panda-192.168.5.26" push ./pstat_eth0_arm /system/bin/packet_stat_eth0
adb -s "Panda-192.168.5.26" shell chmod 777 /system/bin/packet_stat_adhoc0
adb -s "Panda-192.168.5.26" shell chmod 777 /system/bin/packet_stat_eth0

#adb -s "0123456789ABCDEF" push ./pstat_adhoc0_arm /system/bin/packet_stat_adhoc0
#adb -s "0123456789ABCDEF" push ./pstat_eth0_arm /system/bin/packet_stat_eth0
#adb -s "0123456789ABCDEF" shell chmod 777 /system/bin/packet_stat_adhoc0
#adb -s "0123456789ABCDEF" shell chmod 777 /system/bin/packet_stat_eth0

adb -s "Panda-192.168.5.27" push ./pstat_adhoc0_arm /system/bin/packet_stat_adhoc0
adb -s "Panda-192.168.5.27" push ./pstat_eth0_arm /system/bin/packet_stat_eth0
adb -s "Panda-192.168.5.27" shell chmod 777 /system/bin/packet_stat_adhoc0
adb -s "Panda-192.168.5.27" shell chmod 777 /system/bin/packet_stat_eth0


#adb -s "Panda-192.168.5.28" push ./pstat_adhoc0_arm /system/bin/packet_stat_adhoc0
#adb -s "Panda-192.168.5.28" push ./pstat_eth0_arm /system/bin/packet_stat_eth0
#adb -s "Panda-192.168.5.28" shell chmod 777 /system/bin/packet_stat_adhoc0
#adb -s "Panda-192.168.5.28" shell chmod 777 /system/bin/packet_stat_eth0


adb -s "Medfie-192.168.5.11" push  ./pstat_adhoc0_intel /system/bin/packet_stat_adhoc0
adb -s "Medfie-192.168.5.12" push  ./pstat_adhoc0_intel /system/bin/packet_stat_adhoc0
adb -s "Medfie-192.168.5.13" push  ./pstat_adhoc0_intel /system/bin/packet_stat_adhoc0
adb -s "Medfie-192.168.5.14" push  ./pstat_adhoc0_intel /system/bin/packet_stat_adhoc0
adb -s "Medfie-192.168.5.15" push  ./pstat_adhoc0_intel /system/bin/packet_stat_adhoc0
#adb -s "Medfie-192.168.5.16" push  ./pstat_adhoc0_intel /system/bin/packet_stat_adhoc0
adb -s "Medfie-192.168.5.11" shell chmod 777 /system/bin/packet_stat_adhoc0
adb -s "Medfie-192.168.5.12" shell chmod 777 /system/bin/packet_stat_adhoc0
adb -s "Medfie-192.168.5.13" shell chmod 777 /system/bin/packet_stat_adhoc0
adb -s "Medfie-192.168.5.14" shell chmod 777 /system/bin/packet_stat_adhoc0
adb -s "Medfie-192.168.5.15" shell chmod 777 /system/bin/packet_stat_adhoc0
#adb -s "Medfie-192.168.5.16" shell chmod 777 /system/bin/packet_stat_adhoc0

#clear the dir
adb -s "Medfie-192.168.5.11" shell rm /sdcard/packet_stat_adhoc0.txt
adb -s "Medfie-192.168.5.12" shell rm /sdcard/packet_stat_adhoc0.txt
adb -s "Medfie-192.168.5.13" shell rm /sdcard/packet_stat_adhoc0.txt
adb -s "Medfie-192.168.5.14" shell rm /sdcard/packet_stat_adhoc0.txt
adb -s "Medfie-192.168.5.15" shell rm /sdcard/packet_stat_adhoc0.txt
#adb -s "Medfie-192.168.5.16" shell rm /sdcard/packet_stat_adhoc0.txt

adb -s "Panda-192.168.5.26" shell rm /sdcard/packet_stat_adhoc0.txt
adb -s "Panda-192.168.5.26" shell rm /sdcard/packet_stat_eth0.txt
#adb -s "0123456789ABCDEF" shell rm /sdcard/packet_stat_adhoc0.txt
#adb -s "0123456789ABCDEF" shell rm /sdcard/packet_stat_eth0.txt
adb -s "Panda-192.168.5.27" shell rm /sdcard/packet_stat_adhoc0.txt
adb -s "Panda-192.168.5.27" shell rm /sdcard/packet_stat_eth0.txt
#adb -s "Panda-192.168.5.28" shell rm /sdcard/packet_stat_adhoc0.txt
#adb -s "Panda-192.168.5.28" shell rm /sdcard/packet_stat_eth0.txt

