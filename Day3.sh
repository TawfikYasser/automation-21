#!/bin/bash
# Expressions & Conditions & Iteration
name="Data"
x=5
y=5
if [[ -n ${name} ]]
then
    echo "${name} is non-empty"
else
    echo "${name} is empty"
fi

read -p "Please enter a word: " word
if [[ ${name} == ${word} ]]
then
    echo "${name} & ${word} are equal strings."
else
    echo "${name} & ${word} are not equal strings."
fi

if [[ ${x} -eq ${y} ]]
then
    echo "Two numbers are equal."
else [[ ${x} -lt ${y} ]]
    echo "X less than Y"
fi

sentences="Right Design Right Data Right Decision"
for word in ${sentences}
do
    echo "Word: ${word}"
    if [[ ${word} == ${name} ]]
    then
        echo "Matching successed"
    fi
done
