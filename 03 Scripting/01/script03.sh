#!/bin/bash

# Filename: script02.sh
# Purpose: Testing
# Author: MR
# Date: 2025-10-11

clear
# For loop
for i in {0..5}; do
  echo "Element 1-> $i"
done

# Traditional C-style for loop
for ((i = 0; i <= 5; i++)); do
  echo "Element 2-> $i"
done

for ((x = 1, y = 5; x <= y; x++, y--)); do
  echo "x=$x, y=$y"
done

# Reading a file
for line in $(cat test.txt); do
  echo $line
done

# While loop
count=1
while [ $count -le 5 ]; do
  echo "Count is $count"
  ((count++))
done

# Until loop
i=10
until [ $i -eq 1 ]; do
  echo "$i is not equal to 1"
  i=$((i - 1))
done
echo "i value is $i"
echo "loop terminated"

i=0
until [[ $i -eq 5 ]]; do
  echo "$i"
  ((i++))
done

#  Nested Loop
for ((i = 1; i <= 3; i++)); do
  for ((j = 1; j <= 4; j++)); do
    echo -n "$i "
  done
  echo
done >>test.txt
