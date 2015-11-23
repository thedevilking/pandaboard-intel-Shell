#set down the ports
adb -s "Medfie-192.168.5.11" shell ifconfig adhoc0 down
adb -s "Medfie-192.168.5.12" shell ifconfig adhoc0 down
adb -s "Medfie-192.168.5.13" shell ifconfig adhoc0 down
adb -s "Medfie-192.168.5.14" shell ifconfig adhoc0 down
adb -s "Medfie-192.168.5.15" shell ifconfig adhoc0 down

adb -s "Panda-192.168.5.26" shell ifconfig adhoc0 down
adb -s "Panda-192.168.5.26" shell ifconfig eth0 down
adb -s "Panda-192.168.5.27" shell ifconfig adhoc0 down
adb -s "Panda-192.168.5.27" shell ifconfig eth0 down
#adb -s "Panda-192.168.5.28" shell ifconfig adhoc0 down
#adb -s "Panda-192.168.5.28" shell ifconfig eth0 down
#adb -s "0123456789ABCDEF" shell ifconfig adhoc0 down
#adb -s "0123456789ABCDEF" shell ifconfig eth0 down

#pull the stat data
adb -s "Medfie-192.168.5.11" pull /sdcard/packet_stat_adhoc0.txt packet-11.txt
adb -s "Medfie-192.168.5.12" pull /sdcard/packet_stat_adhoc0.txt packet-12.txt
adb -s "Medfie-192.168.5.13" pull /sdcard/packet_stat_adhoc0.txt packet-13.txt
adb -s "Medfie-192.168.5.14" pull /sdcard/packet_stat_adhoc0.txt packet-14.txt
adb -s "Medfie-192.168.5.15" pull /sdcard/packet_stat_adhoc0.txt packet-15.txt

adb -s "Panda-192.168.5.26" pull /sdcard/packet_stat_adhoc0.txt packet-26.1.txt
adb -s "Panda-192.168.5.26" pull /sdcard/packet_stat_eth0.txt packet-26.2.txt
adb -s "Panda-192.168.5.27" pull /sdcard/packet_stat_adhoc0.txt packet-27.1.txt
adb -s "Panda-192.168.5.27" pull /sdcard/packet_stat_eth0.txt packet-27.2.txt
#adb -s "Panda-192.168.5.28" pull /sdcard/packet_stat_adhoc0.txt packet-28.1.txt
#adb -s "Panda-192.168.5.28" pull /sdcard/packet_stat_eth0.txt packet-28.2.txt
#adb -s "0123456789ABCDEF" pull /sdcard/packet_stat_adhoc0.txt packet-26.1.txt
#adb -s "0123456789ABCDEF" pull /sdcard/packet_stat_eth0.txt packet-26.2.txt
