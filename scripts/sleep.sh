#!/bin/bash
let "sleeptime = $1 * 60"
sleep $sleeptime
osascript -e 'tell application "System Events" to sleep'
