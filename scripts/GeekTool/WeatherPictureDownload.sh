#!/bin/bash
curl --silent "http://weather.yahoo.com/republika-hrvatska/splitsko-dalmatinska/split-850357" | grep "current-weather" | sed "s/.*background\\:url(\\'\\(.*\\)\\') no-repeat.*/\\1/" | xargs curl --silent -o /Users/viktorfonic/scripts/GeekTool/weather.png
