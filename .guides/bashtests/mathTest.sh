. ~/workspace/.guides/bashtests/function.sh


bash_history=~/.bash_history  # Set the history file.
BASHDIR=/home/codio/workspace/.guides
check_file=math_checkfile
hist_file="$BASHDIR/bashtests/$check_file"

set -o history            # Enable the history.

echo "$check_file" >> $bash_history

grep -A2000 -e "^$check_file" $bash_history > "$BASHDIR/bashtests/${check_file}"
find "$hist_file" -type f -exec sed -i "s@~@$HOME@g" {} \; 

# Must match for erasing history
RES_HIST=0
COUNT=0
QCOUNT=4

function test_command {
	(( COUNT ++ ))
	if [[ $COUNT -le $QCOUNT ]]; then
		case $COUNT in
			1 )
				expect_command 'echo $((221+858*24))' "Make sure to perform the first calculation. Are your digits in the proper order?"
				;;
			2 )
				expect_command 'echo $((343-162/47))' "Make sure to perform the second calculation. Are your digits in the proper order?"
				;;
			3 )
				expect_command 'echo $((890/161))' "Make sure to perform the fourth calculation. Are your digits in the proper order?"
				;;		
		esac
  else
    echo "Great Job!"
    cat /dev/null > ~/.bash_history && history -c
    echo "Great Job!"
    return 0
	fi
}

test_command