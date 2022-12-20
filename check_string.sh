#!/bin/bash

# first, we will put input to array of characters
string1=$*
declare -a in_arr
for ((i=0; i<${#string1}; i++)); do 
in_arr[i]="${string1:$i:1}"; done
# for characters recognition and store we need regex and array for each type
symbol_r="\*|\!|\@|\#|[$]|\%|\^|\&|\(|\)|\_|\+"
number_r="[0-9]"
letter_r="[a-zA-Z]"
symbol_arr=()
number_arr=()
letter_arr=()
# we will check each character type and add it to proper array
for s in "${in_arr[@]}"; do
if [[ $s =~ $number_r ]]; then
number_arr+=( "$s" )
elif [[ $s =~ $symbol_r ]]; then
symbol_arr+=( "$s" )
elif [[ $s =~ $letter_r ]]; then
letter_arr+=( "$s" )
fi
done
# at last we show count of every type - array length
echo "Numbers: ${#number_arr[@]} Symbols: ${#symbol_arr[@]} Letters: ${#letter_arr[@]}"
