#!/bin/bash -e
./gradlew installDebug
app_name=`echo $1 | tr [A-Z] [a-z]`
if [[ "$#" == "1" ]]; then
  activity_name="MainActivity"
else
  activity_name="$2"
fi
/Applications/Android\ Studio.app/sdk/platform-tools/adb shell am start -a android.intent.action.MAIN -n bdjnk.android.wakeydroid/.Wakey
/Applications/Android\ Studio.app/sdk/platform-tools/adb shell am start -n com.viktorfonic.$app_name/.activity.$activity_name
say "Running $1"
