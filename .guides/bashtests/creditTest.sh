#!/binbash

while read line
do

  if [[ $line =~ .*[Dd]iscover.* ]];
  then
    if [[ $line =~ [0-9]{16} ]];
    then
      echo ${BASH_REMATCH[0]}
    fi
  fi
done < credit.csv

