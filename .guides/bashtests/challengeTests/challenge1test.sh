#!/bin/bash

echo "Now Testing..."

# CHECK FOR USE OF ENVIRONMENTAL VARIABLES
# PWD
if [[ "$(grep -w '$PWD' ~/workspace/Challenge/challenge1.sh)" == *'$PWD'* ]]; then
  echo '$PWD is there.'
else 
  echo '$PWD is missing'
  exit 1
fi

# USER
if [[ "$(grep -w '$USER' ~/workspace/Challenge/challenge1.sh)" == *'$USER'* ]]; then
  echo '$USER is there.'
else 
  echo '$USER is missing'
  exit 1
fi
# HOME
# 
if [[ "$(grep -w '$HOME' ~/workspace/Challenge/challenge1.sh)" == *'$HOME'* ]]; then
  echo '$HOME is there.'
else 
  echo '$HOME is missing'
  exit 1
fi


# CHECK FOR CORRECT PROGRAM OUTPUT FOR EACH LINE
StudentFile=$(bash ~/workspace/Challenge/challenge1.sh)

if [[ "$(echo "$StudentFile" | tr -d '[:space:]')" =~ "$(echo "Hello from user: $USER" | tr -d '[:space:]')" ]]; then 
    echo "First line exists"
else
    echo "Username message displayed incorrectly"
    exit 1
fi

if [[ "$(echo "$StudentFile" | tr -d '[:space:]')" =~ "$(echo "Our home directory is: $HOME" | tr -d '[:space:]')" ]]; then 
    echo "Home directory line exists"
else
    echo "Home directory message displayed incorrectly"
    exit 1
fi

if [[ "$(echo "$StudentFile" | tr -d '[:space:]')" =~ "$(echo "Our current working directory is: $PWD" | tr -d '[:space:]')" ]]; then 
    echo "Current working directory line exists"
else
    echo "Current directory message displayed incorrectly"
    exit 1
fi

if [[ "$(echo "$StudentFile" | tr -d '[:space:]')" =~ "$(echo "Congratulations!! You've run all of the commands in the file!" | tr -d '[:space:]')" && "$(grep -w 'source' ~/workspace/Challenge/challenge1.sh)" == *'source'* ]]; then 
    echo "Source Command Successful"
else
    echo "Check the source command"
    exit 1
fi
