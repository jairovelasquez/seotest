#!/bin/bash

echo "Now Testing..."

# CHECK FOR USE OF ENVIRONMENTAL VARIABLES
# $USER
if [[ "$(grep -w 'echo' Challenge/challenge3.sh)" == *'echo'* && "$(grep 'echo' Challenge/challenge3.sh)" == *'echo ~+'* ]]; then
  echo 'Great use of tilde expansion'
else 
  echo 'Did you use tilde expansion correctly?'
  exit 1
fi

# $HOME
if [[ "$(grep -w 'echo' Challenge/challenge3.sh)" == *'echo'* && "$(grep 'echo' Challenge/challenge3.sh)" == *'echo {1..100..5}'* ]]; then
  echo 'Great Counting with brace expansion'
else 
  echo 'Check your counting with brace expansion'
  exit 1
fi

# ls and standard error redirection
if [[ "$(grep -w 'mkdir' Challenge/challenge3.sh)" == *'mkdir'* && "$(grep 'mkdir' Challenge/challenge3.sh)" == *'mkdir {png,jpg,pdf}_files{1..3}'* ]]; then
  echo 'Nice job creating directories'
else 
  echo 'Did you create the directories using brace expansion?'
  exit 1
fi

# sort and mixed direction
if [[ "$(grep -w 'touch' Challenge/challenge3.sh)" == *'touch'* && "$(grep 'touch' Challenge/challenge3.sh)" == *'touch {png,jpg,pdf}_files{1..3}/image_{1..5}'* ]]; then
  echo 'Nice work creating files inside directories'
else 
  echo 'Check your file creation command'
  exit 1
fi

# sort and mixed direction
if [[ "$(grep -w 'rm' Challenge/challenge3.sh)" == *'rm'* && "$(grep 'rm' Challenge/challenge3.sh)" == *'rm {png,jpg,pdf}_files{1..3}/image_{1..5}'* ]]; then
  echo 'Great job removing files'
else 
  echo 'Have you removed the files correctly?'
  exit 1
fi

# sort and mixed direction
if [[ "$(grep -w 'rmdir' Challenge/challenge3.sh)" == *'rmdir'* && "$(grep 'rmdir' Challenge/challenge3.sh)" == *'rmdir {png,jpg,pdf}_files{1..3}'* ]]; then
  echo 'Nice job removing directories'
else 
  echo 'Have you removed the directories correctly?'
  exit 1
fi

# sort and mixed direction
if [[ "$(grep -w 'echo' Challenge/challenge3.sh)" == *'echo'* && "$(grep 'echo' Challenge/challenge3.sh)" == *'echo "6 times 3 is equal to: $(( 6 * 3 ))"'* ]] || "$(grep 'echo' Challenge/challenge3.sh)" == *'echo "6 times 3 is equal to: $((6*3))"'*; then
  echo 'Nice Arithmetic Expansion!'
else 
  echo 'Check your arithmetic expansion'
  exit 1
fi


# sort and mixed direction
if [[ "$(grep -w 'message' Challenge/challenge3.sh)" == *'message'* && "$(grep 'message' Challenge/challenge3.sh)" == *'message="impossible work!"'* ]]; then
  echo 'Nice work creating the message variable'
else 
  echo 'Have you declared the message variable?'
  exit 1
fi


# sort and mixed direction
if [[ "$(grep -w 'echo' Challenge/challenge3.sh)" == *'echo'* && "$(grep 'echo' Challenge/challenge3.sh)" == *'echo ${message:2}'* ]]; then
  echo 'Nice parameter expansion'
else 
  echo 'Check your parameter expansion'
  exit 1
fi


# CHECK FOR CORRECT PROGRAM OUTPUT FOR EACH LINE
