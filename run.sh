#!/bin/bash
random_number=$((RANDOM % 100 + 1))
attempts=0

echo "Number guessing game"

while true; do 
    read -p "Enter number : " guess
    attempts=$((attempts + 1))

    if [[ ! $guess =~ ^[0-9]+$ ]]; then
        echo "Enter a valid number!"
        continue
    fi
    if ((guess < random_number)); then
        echo "it's more!"
    elif ((guess > random_number)); then
        echo "it's less!"
    else
        echo "Congratulations! You guessed the number $random_number in $attempts attempts!"
        break
    fi
 done   