#!/usr/bin/env bash

function guess1(){
    trueans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "do enter your guess"
        read  number1
        if [ $number1 -lt $trueans ]
        then
            echo "your guess is Less then the true number"
        elif [ $number1 -gt $trueans ]
        then
            echo "your guess is Greater then the true number"
        else
            echo "you are right!"
        break;
        fi
    done
}
echo "guess the files number in the current directory!"
guess
