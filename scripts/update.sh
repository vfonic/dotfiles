#!/bin/bash -e

function update_updater {
  echo Updating "$1"
  cd ~/Developer/Java/"$1 Updater"
  git checkout -f
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
elif [[ "$1" == "btt" ]]; then
  ~/scripts/ultimate\ ant\ script.sh BioTricoTest "${@:2}"
elif [[ "$1" == "tt" ]]; then
  ~/scripts/ultimate\ ant\ script.sh TRAINING\ TEST "${@:2}"
elif [[ "$1" == "st" ]]; then
  ~/scripts/ultimate\ ant\ script.sh Slim\ test "${@:2}"
elif [[ "$1" == "dls" ]]; then
  ~/scripts/ultimate\ ant\ script.sh DLS\ -\ Functional\ Systems "${@:2}"
elif [[ "$1" == "mngr" ]]; then
  ~/scripts/ultimate\ ant\ script.sh Sitar\ Application\ Manager "${@:2}"
elif [[ "$1" == "updater" ]]; then
  update_updater "BioTricoTest" "biotricotest"
  update_updater "TRAINING TEST" "trainingtest"
  update_updater "Slim test" "slimtest"
  update_updater "DLS - Functional Systems" "functionalsystems"
  update_updater "Sitar Application Manager" "application-manager"
elif [[ "$1" == "licence" ]]; then
  update_licence "BioTricoTest" "biotricotest"
  update_licence "TRAINING TEST" "trainingtest"
  update_licence "Slim test" "slimtest"
  update_licence "DLS - Functional Systems" "functionalsystems"
elif [[ "$1" == "rvm" ]]; then
  rvm get stable
elif [[ "$1" == "ruby" ]]; then
  echo "To update Ruby version, follow these instructions:"
  echo "rvm list"
  echo "rvm list known"
  echo "rvm install 2.0.0"
  echo "rvm --default use 2.0.0"
elif [[ "$1" == "gems" ]]; then
  rvm all do gem update
fi
