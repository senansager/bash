#!/bin/bash
#this is a sadistic version of the guess the number game.

#uncomment to follow code, good for debugging.
#set -x

#used to update the variabel with new values.
typeset -i num=0

#guess will count from zero, this is to make it count from 1 and not 0.
guess=-1

#first printed line on the screen.
echo "For your next game, you will choose a number between 1 and 100, either way I will kill you!"

#generate a random number, +1 to make it couunt from 1 to 100.
        (( secret =  RANDOM % 100 + 1 ))

#this will compare the secret random generated number to the guesses of the player.
        while  (( secret != guess )); do

#update the variabel num to count how many guesses (loops)
                num=num+1

#makes the player to enter a number in the prompt.
        read -p " Do it: " guess

#this compares if the guess is less than the secret number.
        if ((  guess < secret )); then

#tell the player to choose a higher number.
        echo " Go higher! "

#and if the guess is higher than the secret number execute this.
elif (( guess > secret )); then

#tell the player to choose a lower number.
        echo " Go lower! "

        fi

done

#print this when it's the correct number and how many guesses this round took.
echo -e  " Okay I don't wanna play anymore! It took you $num guesses. Whatever!\n "
