#!/bin/bash
curl --silent "http://weather.yahoo.com/croatia/grad-zagreb/zagreb-851128/?unit=c" | grep "current-weather" | sed "s/.*background\\:url(\\'\\(.*\\)\\') no-repeat.*/\\1/" | xargs curl --silent -o /Users/viktorfonic/scripts/GeekTool/weather.png
