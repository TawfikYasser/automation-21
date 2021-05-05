#!/bin/bash
echo "Hello World"
echo "------------"
myname="Tawfik"
echo "Welcome "${myname}
echo "Welcome to Bash Shell"
echo "+++++++++++++++++++++"
echo "What is your name? "
read username # or read -p "What is your name?" name
echo "Welcome "${username} "to bash scripting."
echo "Welcome $1 to Bash scripting."
echo "Thanks $2"
