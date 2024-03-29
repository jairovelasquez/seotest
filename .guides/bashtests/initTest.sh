#!/bin/bash

if [ "${CODIO_FREE_TEXT_ANSWER}" == "git init" ]
then
  echo "Great Job!"
  exit 0
else
  echo "This is not the correct command. Please try again!"
  exit 1
fi