#!/usr/bin/env bash

n=$(ls | wc -l)
# Define the function with the correct syntax
flag=true
function check_guess() {
    if [[ $1 -eq $2 ]]; then
        echo "Your guess $1 is correct"
        flag=false
    elif [[ $1 -gt $2 ]]; then
        echo "Lower!"
    else
        echo "Higher!"
    fi
}

while $flag; do
    echo "How many files are in the current directory?"
    read guess
    check_guess "$guess" "$n"
done