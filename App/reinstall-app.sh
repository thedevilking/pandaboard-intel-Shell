#!/bin/bash

help(){
	echo "install-app.sh [device name] [app name]"
}

mapfile="./app-package-laucher.txt"
if [ ! -e $mapfile ];then
	echo "error : the app-package-laucherAcitivity file do not exist"
	exit
fi

if [ $# -eq 2 ];then 

	while read line
	do
		sig="0"
		package=""
		activity=""
		for element in $line
		do
			if [ $sig = "1" ];then
				package=$element
				sig="2"	
			elif [ $sig = "2" ];then		
				activity=$element
			else
				if [ $2 = $element ];then
					sig="1"
				else
					break
				fi
			fi
		done

		if [ $sig = "2" ];then
			echo "check package $package if it's installed"
			installedApp=`adb -s $1 shell dumpsys package $package`
			#echo $installedApp
			installedApp=${installedApp:0:3}
			#echo $installedApp
			if [ $installedApp ];then
				echo "uninstall package $package"
				adb -s $1 uninstall $package
			fi
			echo "$1 install app $2.apk"
			adb -s $1 install ./$2.apk
			#restart app end
			break
		fi
	done < $mapfile


	
else
	echo "error : ./reinstall-app.sh ,wrong arugment"
	help
fi
