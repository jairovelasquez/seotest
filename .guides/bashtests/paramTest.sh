#!/bin/bash

read REQUIREMENT

case $REQUIREMENT in

  "Avatar")
    grep "title=\"Avatar: The Last Airbender\"" ~/.bash_history; echo $? 
    ;;

  "Replace")
    grep 'echo ${title//a/_}' ~/.bash_history; echo $? 
    ;;

  *)
    echo $REQUIREMENT Unknown
    exit 1
    ;;
esac

exit 0
