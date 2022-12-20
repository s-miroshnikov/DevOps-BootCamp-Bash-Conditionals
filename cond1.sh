#!/bin/bash

# we will use provided numbers as array, with ',' as field separator
IFS=',' read -ra numarray <<< "$@"
# for sum of even numbers we will use the evensum variable with an initial value of 0
evensum=0
# later, we sum each number which can be divided by 2 without a remainder (even)  
for i in "${numarray[@]}"; do
if [ $((i%2)) -eq 0 ]
then
  (( evensum+=i ))
fi
 done
echo $evensum
