#!/bin/bash

device="Medfie-192.168.5.11"

#start dection
cd ./stat/
#	./startDection.sh $*
cd ..

a=0
#payload sum
b=2

while [ $a != $b ]
do
	a=`expr $a + 1`
	adb -s $device shell "geoDtnClient eid:13 payload:1 areaid:defo"
#	adb -s $device shell "geoDtnClient eid:14 payload:2 areaid:nmij"
done

a=0
b=263

while [ $a != $b ]
do
	a=`expr $a + 1`
	echo "sleep seconds:$a"
	sleep 1
done

echo "force-stop dtn"
./endExperiment.sh $*

echo "get data"
./getGeoData.sh $*


