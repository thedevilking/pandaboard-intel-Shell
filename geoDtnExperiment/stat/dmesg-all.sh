devices_string=`sudo adb devices`
isDevices="0"
for str in $devices_string
do
	if [ $isDevices = "1" ];then
		isDevices="0"
		funForDevice $str
		continue
	fi

	if [ $str = "attached" ];then 
		isDevices="1";
	fi

	if [ $str = "device" ];then
		isDevices="1";
	fi

done
