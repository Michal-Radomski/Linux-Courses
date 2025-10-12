#!/bin/bash

# Filename: script05.sh
# Purpose: Testing - Functions
# Author: MR
# Date: 2025-10-12

clear

# Functions
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

function execute_test() {
  echo "\$1=$1"
  echo "\$2=$2"
}
execute_test arg1 arg2

# Return
check_even_or_odd() {
  local num=$1
  if ((num % 2 == 0)); then
    return 0 # Even number, success exit status
  else
    return 1 # Odd number, failure exit status
  fi
}

number=4
check_even_or_odd "$number"
if [ $? -eq 0 ]; then
  echo "$number is even"
else
  echo "$number is odd"
fi
