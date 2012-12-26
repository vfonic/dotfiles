#!/bin/zsh -e
if [[ "$#" == "0" ]]
then
  sudo port selfupdate
  sudo port upgrade outdated
  sudo softwareupdate -ia
elif [[ "$#" == "1" ]]
then
  if [[ "$1" == "dls" ]]
  then
    ~/scripts/ultimate\ ant\ script.sh DLS\ -\ Functional\ Systems
  elif [[ "$1" == "btt" ]]
  then
    ~/scripts/ultimate\ ant\ script.sh BioTricoTest
  elif [[ "$1" == "tt" ]]; then
    ~/scripts/ultimate\ ant\ script.sh TRAINING\ TEST
  elif [[ "$1" == "st" ]]; then
    ~/scripts/ultimate\ ant\ script.sh Slim\ test
  fi
else
  echo "Wrong number of arguments"
fi
