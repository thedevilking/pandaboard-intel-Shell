 脚本使用帮助
 ==
 * echo "this bash's help:"  使用./detach-device -h出来的提示信息
 * echo "with no argument :"
 * echo "./detach-device.sh : push aodv.ko,insmod aodv.ko,install app"
 * echo "with 1 argument :"
 * echo "./detach-device.sh -aodv-[aodv dir] : push aodv dir's aodv.ko,inmod aodv.ko"
 * echo "./detach-device.sh -startApp : set the time with the track.txt,and start app"
 * echo "./detach-device.sh -resetTime : reset the time with the track.txt's started time"
 * echo "./detach-device.sh -clearAodv : clear the sh file and the aodv.ko file in the device"
 * echo "./detach-device.sh -clearAPP : uninstall the installed app in the device"
 * echo "./detach-device.sh -dmesgWatch : open another terminal to watch device's dmesg"
 * echo "./detach-device.sh -reboot : reboot the all the devices"
 * echo "./detach-device.sh -renameDevices : rename all the devices with -ip"
 * echo "./detach-device.sh -getGeoDataLog : get the geoDtn data from devices"
 * echo "with 2 arguments :"
 * echo "./detach-device.sh -reinstallApp [app name] : reinstall the app with the app name"
 * echo "./detach-device.sh -startApp [app name] : start the app with the app name"
 * echo "./detach-device.sh -clearData [dataname:(geoDTN)] : excute dataname's sh to clear data"
