#!/bin/bash -e

function update_updater {
  echo Updating "$1"
  cd ~/Developer/Java/"$1 Updater"
  git checkout master
  git pull origin master
  git checkout $2
  git merge master -m "Merge branch 'master' into $2" -X theirs
  cd ..
  echo ""
}

function update_licence {
  echo Updating licence of "$1"
  cd ~/Developer/Java/"$1"/src/it/sitarlabs/licence
  git checkout -f
  git pull
  echo ""
}

if [[ "$#" == "0" ]]; then
  sudo port selfupdate
  sudo port upgrade outdated
  sudo softwareupdate -ia
elif [[ "$#" == "1" ]]; then
  if [[ "$1" == "dls" ]]; then
    ~/scripts/ultimate\ ant\ script.sh DLS\ -\ Functional\ Systems
  elif [[ "$1" == "btt" ]]; then
    ~/scripts/ultimate\ ant\ script.sh BioTricoTest
  elif [[ "$1" == "tt" ]]; then
    ~/scripts/ultimate\ ant\ script.sh TRAINING\ TEST
  elif [[ "$1" == "st" ]]; then
    ~/scripts/ultimate\ ant\ script.sh Slim\ test
  elif [[ "$1" == "updater" ]]; then
    update_updater "BioTricoTest" "biotricotest"
    update_updater "BioTricoTest Manager" "biotricotest-manager"
    update_updater "DLS - Functional Systems" "functionalsystems"
    update_updater "DLS - Functional Systems Manager" "functionalsystems-manager"
    update_updater "Slim test" "slimtest"
    update_updater "Slim test Manager" "slimtest-manager"
    update_updater "TRAINING TEST" "trainingtest"
    update_updater "TRAINING TEST Manager" "trainingtest-manager"
  elif [[ "$1" == "licence" ]]; then
    update_licence "BioTricoTest" "biotricotest"
    update_licence "DLS - Functional Systems" "functionalsystems"
    update_licence "Slim test" "slimtest"
    update_licence "TRAINING TEST" "trainingtest"
  fi
else
  echo "Wrong number of arguments"
fi
