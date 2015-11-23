adb -s "med-192.168.1.3" shell ifconfig adhoc0 down
adb -s "med-192.168.1.4" shell ifconfig adhoc0 down
adb -s "med-192.168.1.5" shell ifconfig adhoc0 down
adb -s "med-192.168.1.6" shell ifconfig adhoc0 down

adb -s "pan-192.168.1.7" shell ifconfig adhoc0 down
adb -s "pan-192.168.1.7" shell ifconfig eth0 down
adb -s "0123456789ABCDEF" shell ifconfig adhoc0 down
adb -s "0123456789ABCDEF" shell ifconfig eth0 down

adb -s "pan-192.168.1.8" shell ifconfig adhoc0 down
adb -s "pan-192.168.1.8" shell ifconfig eth0 down

adb -s "pan-192.168.1.9" shell ifconfig adhoc0 down
adb -s "pan-192.168.1.9" shell ifconfig eth0 down

#pause
