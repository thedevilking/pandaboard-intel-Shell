adb -s "pan-192.168.1.7" push pstat_adhoc0_arm /system/bin/packet_stat_adhoc0
adb -s "pan-192.168.1.7" push pstat_eth0_arm /system/bin/packet_stat_eth0
adb -s "pan-192.168.1.7" shell chmod 777 /system/bin/packet_stat_adhoc0
adb -s "pan-192.168.1.7" shell chmod 777 /system/bin/packet_stat_eth0

adb -s "0123456789ABCDEF" push pstat_adhoc0_arm /system/bin/packet_stat_adhoc0
adb -s "0123456789ABCDEF" push pstat_eth0_arm /system/bin/packet_stat_eth0
adb -s "0123456789ABCDEF" shell chmod 777 /system/bin/packet_stat_adhoc0
adb -s "0123456789ABCDEF" shell chmod 777 /system/bin/packet_stat_eth0

adb -s "pan-192.168.1.8" push pstat_adhoc0_arm /system/bin/packet_stat_adhoc0
adb -s "pan-192.168.1.8" push pstat_eth0_arm /system/bin/packet_stat_eth0
adb -s "pan-192.168.1.8" shell chmod 777 /system/bin/packet_stat_adhoc0
adb -s "pan-192.168.1.8" shell chmod 777 /system/bin/packet_stat_eth0


adb -s "pan-192.168.1.9" push pstat_adhoc0_arm /system/bin/packet_stat_adhoc0
adb -s "pan-192.168.1.9" push pstat_eth0_arm /system/bin/packet_stat_eth0
adb -s "pan-192.168.1.9" shell chmod 777 /system/bin/packet_stat_adhoc0
adb -s "pan-192.168.1.9" shell chmod 777 /system/bin/packet_stat_eth0

adb -s "med-192.168.1.5" push  pstat_adhoc0_intel /system/bin/packet_stat_adhoc0
adb -s "med-192.168.1.6" push  pstat_adhoc0_intel /system/bin/packet_stat_adhoc0
adb -s "med-192.168.1.5" shell chmod 777 /system/bin/packet_stat_adhoc0
adb -s "med-192.168.1.6" shell chmod 777 /system/bin/packet_stat_adhoc0

adb -s "med-192.168.1.3" push  pstat_adhoc0_intel /system/bin/packet_stat_adhoc0
adb -s "med-192.168.1.4" push  pstat_adhoc0_intel /system/bin/packet_stat_adhoc0
adb -s "med-192.168.1.3" shell chmod 777 /system/bin/packet_stat_adhoc0
adb -s "med-192.168.1.4" shell chmod 777 /system/bin/packet_stat_adhoc0


#pause
