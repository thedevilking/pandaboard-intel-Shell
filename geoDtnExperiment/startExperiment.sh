#!/bin/bash

device="Medfie-192.168.5.11"


adb -s $device shell "geoDtnClient eid:13 payload:1 areaid:defo"
adb -s $device shell "geoDtnClient eid:13 payload:2 areaid:defo"
adb -s $device shell "geoDtnClient eid:13 payload:3 areaid:defo"
#adb -s $device shell "geoDtnClient eid:13 payload:1 areadid:defo"
