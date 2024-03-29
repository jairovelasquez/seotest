#!/bin/bash

read REQUIREMENT

case $REQUIREMENT in

  "User Variable")
    grep '$USER' Challenge/challenge2.sh > /dev/null; echo -n $? && grep 'echo "Reporting for user: $USER" > introduction.txt ' Challenge/challenge2.sh > /dev/null; echo -n $?
    ;;

  "Home Variable")
    grep '$HOME' Challenge/challenge2.sh > /dev/null; echo -n $? && grep 'echo "The home directory is $HOME" >> introduction.txt' Challenge/challenge2.sh > /dev/null; echo -n $?
    ;;

  "List Directory")
    grep "ls /notReally" Challenge/challenge2.sh > /dev/null; echo $? 
    ;;

  "STDOUT")
    grep "1>output.txt" Challenge/challenge2.sh > /dev/null; echo $? 
    ;;

  "STDERR")
    grep "2>error.txt" Challenge/challenge2.sh > /dev/null; echo $? 
    ;;

  "Sort Champs")
    grep "sort < champs.txt" Challenge/challenge2.sh > /dev/null; echo $? 
    ;;

  "Alpha Winner")
    grep "champs.txt > alpha-winners.txt" Challenge/challenge2.sh > /dev/null; echo $? 
    ;;

  "Pipe Less")
    grep "cat alpha-winners.txt | less" Challenge/challenge2.sh > /dev/null; echo $? 
    ;;

  *)
    echo $REQUIREMENT Unknown
    exit 1
    ;;
esac
