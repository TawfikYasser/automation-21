#!/bin/bash

for num in {1..10}
do
    echo ${num}
done

counter=1
while [[ $counter -le 10 ]]
do
    echo ${counter}
    ((counter++))
done

read -p "What is your name? " name
while [[ -z ${name} ]]
do 
    echo "Your name can't be empty!!!"
    read -p "Please enter your name again: " name
done
echo "Hi there ${name}!"

count=1
until [[ ${count} -gt 10 ]]
do
    echo "${count}"
    if [[ ${count} == 5 ]]
    then
        break
    fi
    ((count++))
done

function hello(){
    echo "Hello $1!"
}
hello Tawfik
