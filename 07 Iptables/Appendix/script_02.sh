#!/bin/bash

clear

# Basic for loop iterating over a list
for fruit in apple banana cherry; do
  echo "I like $fruit"
done

# For loop iterating over a range of numbers
for i in {1..5}; do
  echo "Iteration $i"
done

for i in {100..120..5}; do
  echo "Iteration $i"
done

# C-style for loop
for ((i = 1; i <= 5; i++)); do
  echo "Count $i"
done

# Loop over an array
fruits=("apple" "banana" "cherry")
for fruit in "${fruits[@]}"; do
  echo "Fruit: $fruit"
done

for ip in $(cat test.txt); do
  echo "Ip: $ip"
done

count=0

while [ $count -lt 10 ]; do
  echo "The current count is: $count"
  ((count++))
done

echo "Enter a number between 1 and 5:"
read num

# Case is equivalent of Switch
case $num in
1)
  echo "You chose option 1"
  ;;
2)
  echo "You chose option 2"
  ;;
3)
  echo "You chose option 3"
  ;;
4)
  echo "You chose option 4"
  ;;
5)
  echo "You chose option 5"
  ;;
*)
  echo "Invalid option. Please enter a number between 1 and 5."
  ;;
esac
