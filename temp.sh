#!/bin/bash

tempr=$1
# for unit of measurement recognition, we will use 2 regex
regex_K="^[0-9]+K$"
regex_C="^[0-9]+C$"
# if we have temperature in Kelvin we use C = K - 273; if temperature was in Celsius - K = C + 273
if [[ "${tempr}" =~ $regex_K ]]; then
  t_C=$(( "${tempr::-1}" - 273 ))
  echo "$t_C"C
  elif [[ "${tempr}" =~ $regex_C ]]; then
  t_K=$(( "${tempr::-1}" + 273 ))
  echo "$t_K"K
  fi
