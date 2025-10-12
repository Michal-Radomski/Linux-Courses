#!/bin/bash

# Filename: script05.sh
# Purpose: Testing - Functions + Arrays
# Author: MR
# Date: 2025-10-12

clear
my_function() {
  echo "Hello, World!"
}
my_function

greet() {
  local name=$1
  echo "Hello, $name!"
}
greet "Alice"

add() {
  local sum=$(($1 + $2))
  echo $sum
}
result=$(add 5 3)
echo "The sum is $result"

function farewell {
  echo "Goodbye!"
}
farewell
