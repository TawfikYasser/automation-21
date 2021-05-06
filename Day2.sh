#! /bin/bash
echo "All arguments: $@"
echo "File name is $0, and it will be self-deleted."
rem -f $0
Arrays in bash
my_array=("Value 1" "Value 2" "Value 3" "Value 4")
echo ${my_array[1]}
echo ${my_array[-1]}
echo ${my_array[@]}
echo ${#my_array[@]}
file check expression
read -p "Enter file name: " filename
echo [[ -x ${filename} ]]
