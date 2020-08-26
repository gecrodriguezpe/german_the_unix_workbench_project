#!/usr/bin/env bash
# File:guessinggame.sh

function guess_number_files {

	# variables
	local num_files=$(ls -l . | egrep -c "^-")
	echo "Type your guess fo the number of files in the current folder, then press Enter"
	read user_response

	if [[ $user_response -eq $num_files ]]
	then 
		echo "Good Job. You guessed the correct number of files in the currente folder"
	fi
	#echo $num_files
}

guess_number_files

