#!/bin/bash

cat ~/.bash_history > .guides/bashtests/mathTester.txt

read REQUIREMENT

case $REQUIREMENT in

  "Echoed")
    grep "echo \"Disk Space Usage Report\" > diskspace.txt" ~/.bash_history > /dev/null; echo $? 
    ;;

  "Redirected")
    grep "df >> diskspace.txt" ~/.bash_history > /dev/null; echo $? 
    ;;

  "Redirect Output")
    grep "cat < diskspace.txt" ~/.bash_history > /dev/null; echo $? 
    ;;

  "Redirect Lines")
    grep "cat << EndOfReport" ~/.bash_history > /dev/null && grep "EndOfReport" ~/.bash_history > /dev/null; echo $? 
    ;;

  *)
    echo $REQUIREMENT Unknown
    exit 1
    ;;
esac

exit 0
