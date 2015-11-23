#adb -s "med-192.168.1.3" shell rm /sdcard/dtn/storage/*
#adb -s "med-192.168.1.3" shell rm /sdcard/dtn_test_data/*

adb -s "med-192.168.1.5" shell rm /sdcard/packet_stat_adhoc0.txt
adb -s "med-192.168.1.6" shell rm /sdcard/packet_stat_adhoc0.txt

adb -s "pan-192.168.1.7" shell rm /sdcard/packet_stat_adhoc0.txt
adb -s "pan-192.168.1.7" shell rm /sdcard/packet_stat_eth0.txt
adb -s "0123456789ABCDEF" shell rm /sdcard/packet_stat_adhoc0.txt
adb -s "0123456789ABCDEF" shell rm /sdcard/packet_stat_eth0.txt
adb -s "pan-192.168.1.8" shell rm /sdcard/packet_stat_adhoc0.txt
adb -s "pan-192.168.1.8" shell rm /sdcard/packet_stat_eth0.txt
adb -s "pan-192.168.1.9" shell rm /sdcard/packet_stat_adhoc0.txt
adb -s "pan-192.168.1.9" shell rm /sdcard/packet_stat_eth0.txt

#pause
