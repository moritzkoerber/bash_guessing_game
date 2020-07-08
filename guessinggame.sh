#!/bin/bash

number_of_files=$(ls -al | grep '^-' | wc -l)

correct_answer=0

echo "Hello, what do you think, how many files are in this folder? Please take a guess:"

while [[ $correct_answer -ne 1 ]]
do
    read guess

    if [[ -n $guess ]] && ! [[ $guess =~ ^[[:digit:]]*$ ]]
    then
        echo "This is not a valid input. Please enter an integer."
    else
        guess=$((10#$guess))
        if [[ $guess -eq $number_of_files ]]
        then
            correct_answer=1
            echo "Correct, congralutations!"
    elif [[ $guess -gt $number_of_files ]]
        then
            echo "$guess is too high, try a lower number"
    elif [[ $guess -lt $number_of_files ]]
        then
            echo "$guess is too low, try a higher number"
        fi
    fi
done
