#!/usr/bin/env bash
# File:guessinggame.sh

function guess_number_files {

	# variables
	local num_files=$(ls -l . | egrep -c "^-")
	echo "Type your guess fo the number of files in the current folder, then press Enter"
	read user_response

	if [[ $user_response -ne $num_files ]]
	then
		while [[ $user_response -ne $num_files ]]
		do
			if [[ $user_response -gt $num_files ]]
			then
				echo "Your guess is above the actual number of files in the current file, please try again"
				read user_response
			elif [[ $user_response -lt $num_files ]]
			then
				echo "Your guess is bellow the actual number of files in the current file, please try again"
				read user_response
			fi
		done
		echo "Good Job. You guessed the correct number of files in the currente folder"

	else
		echo "Good Job. You guessed the correct number of files in the currente folder"
	fi
}

guess_number_files

