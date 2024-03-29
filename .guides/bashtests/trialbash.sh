#!/bin/bash
# makedir
. ~/workspace/.guides/bashtests/function.sh

#bash_history=~/.bash_history
#BASHDIR=/home/codio/workspace/.guides
#check_file=trialbash
#hist_file="$BASHDIR/bashtests/$check_file.txt"

#echo "$check_file" >> $bash_history
#grep -A2000 -e "^$check_file" $bash_history > "$BASHDIR/bashtests/${check_file}.py"
#find "$hist_file" -type f -exec sed -i "s@~@$HOME@g" {} \;

# Must match for erasing history
RES_HIST=0
COUNT=0
QCOUNT=1


function test_command {
	(( COUNT ++ ))
	if [[ $COUNT -le $QCOUNT ]]; then
		case $COUNT in
			
      1 )
				expect_files "/home/codio/workspace/trial-run/testing.py"  
				;;
      
      2 )
				expect_directories "/home/codio/workspace/trial-run"
				;;
        
      
		esac
	else 
echo "Well done!"
return 0
	fi
}


test_command