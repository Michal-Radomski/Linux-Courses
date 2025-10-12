#!/bin/bash

# Filename: script06.sh
# Purpose: Testing - Arrays
# Author: MR
# Date: 2025-10-12

clear
# Arrays
# Declare an array with elements
my_array=("apple" "banana" "cherry")

# Access array elements by index (starting at 0)
echo "First element: ${my_array[0]}"
echo "Second element: ${my_array[1]}"

# Loop through all elements of the array
for fruit in "${my_array[@]}"; do
  echo "Fruit: $fruit"
done

# Modify an element
my_array[1]="blueberry"
echo "Modified second element: ${my_array[1]}"

# Add a new element
my_array+=("date")
echo "New element added: ${my_array[3]}"

echo "\${my_array[*]} =  ${my_array[*]}" # ${my_array[*]} =  apple blueberry cherry date

# Array and Function
# Define a function that takes an array as arguments
print_elements() {
  local my_array=("$@") # Capture all function arguments as an array
  for i in "${!my_array[@]}"; do
    echo "Element $i: ${my_array[i]}"
  done
}

# Declare an array
my_array=("apple" "banana" "cherry" "date")

# Call the function and pass the array elements
print_elements "${my_array[@]}"
# Element 0: apple
# Element 1: banana
# Element 2: cherry
# Element 3: date
