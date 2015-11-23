adb -s "med-192.168.1.3" pull /sdcard/packet_stat_adhoc0.txt packet-3.txt
adb -s "med-192.168.1.4" pull /sdcard/packet_stat_adhoc0.txt packet-4.txt
adb -s "med-192.168.1.5" pull /sdcard/packet_stat_adhoc0.txt packet-5.txt
adb -s "med-192.168.1.6" pull /sdcard/packet_stat_adhoc0.txt packet-6.txt

adb -s "pan-192.168.1.7" pull /sdcard/packet_stat_adhoc0.txt packet-7.1.txt
adb -s "pan-192.168.1.7" pull /sdcard/packet_stat_eth0.txt packet-7.2.txt
adb -s "0123456789ABCDEF" pull /sdcard/packet_stat_adhoc0.txt packet-7.1.txt
adb -s "0123456789ABCDEF" pull /sdcard/packet_stat_eth0.txt packet-7.2.txt

adb -s "pan-192.168.1.8" pull /sdcard/packet_stat_adhoc0.txt packet-8.1.txt
adb -s "pan-192.168.1.8" pull /sdcard/packet_stat_eth0.txt packet-8.2.txt

adb -s "pan-192.168.1.9" pull /sdcard/packet_stat_adhoc0.txt packet-9.1.txt
adb -s "pan-192.168.1.9" pull /sdcard/packet_stat_eth0.txt packet-9.2.txt

pause
