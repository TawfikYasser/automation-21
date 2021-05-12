#!/bin/bash
#======================================================
# Password Generator with Login Option
#======================================================
# Ask the user for the string length
clear
printf "\n"
read -p "How many characters you'd like the password to have?" pass_length
printf "\n"
for i in {1..10};
do
(tr -cd '[:alnum:]' < /dev/urandom | fold -w${pass_length} | head -n 1);
done
printf "$pass_output"
printf "Goodbye, ${USER}\n"
