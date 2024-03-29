#!/bin/bash

echo "Now Testing..."

# CHECK FOR USE OF ENVIRONMENTAL VARIABLES
# $HOME
if [[ "$(grep -w 'echo' Challenge/challenge4.sh)" == *'echo'* && "$(grep 'echo' Challenge/challenge4.sh)" == *'echo "The current network host name is $(hostname)"'* ]]; then
  echo 'Nice command substitution!'
else 
  echo 'Check your command substitution'
  exit 1
fi

if [[ "$(grep -w 'ls' Challenge/challenge4.sh)" == *'ls'* && "$(grep 'ls' Challenge/challenge4.sh)" == *'ls c*.txt'* ]]; then
  echo 'Nice use of the asterisk wildcard'
else 
  echo 'Check your use of wildcard characters.'
  exit 1
fi

if [[ "$(grep -w 'ls' Challenge/challenge4.sh)" == *'ls'* && "$(grep 'ls' Challenge/challenge4.sh)" == *'ls [:digit:]'* ]]; then
  echo 'Nice use of the named character class'
else 
  echo 'Check your use of the named character class.'
  exit 1
fi

if [[ "$(grep -w 'ls' Challenge/challenge4.sh)" == *'ls'* && "$(grep 'ls' Challenge/challenge4.sh)" == *'ls file2?.txt'* ]]; then
  echo 'Nice use of ? wildcard'
else 
  echo 'Did you use the proper wildcard character while globbing?'
  exit 1
fi



# CHECK FOR CORRECT PROGRAM OUTPUT FOR EACH LINE
