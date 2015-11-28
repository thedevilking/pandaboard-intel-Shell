#!/bin/bash

device="Medfie-192.168.5.11"

#start dection
cd ./stat/
	./startDection.sh $*
cd ..

a=0
#payload sum
b=11

while [ $a != $b ]
do
	a=`expr $a + 1`
	adb -s $device shell "geoDtnClient eid:13 payload:1 areaid:defo"
	adb -s $device shell "geoDtnClient eid:14 payload:2 areaid:nmij"
done

#	adb -s $device shell "geoDtnClient eid:13 payload:1 areaid:defo"
#	adb -s $device shell "geoDtnClient eid:13 payload:1 areaid:defo"

#	adb -s $device shell "geoDtnClient eid:13 payload:1 areaid:defo"
#	adb -s $device shell "geoDtnClient eid:14 payload:2 areaid:nmij"

#	adb -s $device shell "geoDtnClient eid:13 payload:1 areaid:defo"
#	adb -s $device shell "geoDtnClient eid:13 payload:1 areaid:defo"

#	adb -s $device shell "geoDtnClient eid:13 payload:1 areaid:defo"
#	adb -s $device shell "geoDtnClient eid:14 payload:2 areaid:nmij"

#adb -s $device shell "geoDtnClient eid:13 payload:1 areaid:defo"
#adb -s $device shell "geoDtnClient eid:13 payload:2 areaid:defo"
#adb -s $device shell "geoDtnClient eid:13 payload:3 areaid:defo"

