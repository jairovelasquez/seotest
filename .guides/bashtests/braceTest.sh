#!/bin/bash

read REQUIREMENT

case $REQUIREMENT in

  "Touch Brace")
    egrep 'touch file_\{1..5\}\.\{(gif|png|jpg),(gif|png|jpg),(gif|png|jpg)\}' ~/.bash_history > /dev/null || egrep 'touch file_\{1..5\}\{\.(gif|png|jpg),\.(gif|png|jpg),\.(gif|png|jpg)\}' > /dev/null; echo $? 
    ;;

  "Remove Brace")
    egrep 'rm file_\{1..5\}\.\{(gif|png|jpg),(gif|png|jpg),(gif|png|jpg)\}' ~/.bash_history > /dev/null || egrep 'rm file_\{1..5\}\{\.(gif|png|jpg),\.(gif|png|jpg),\.(gif|png|jpg)\}' > /dev/null; echo $? 
    ;;

  *)
    echo $REQUIREMENT Unknown
    exit 1
    ;;
esac

exit 0