#!/bin/bash

# Filename: script02.sh
# Purpose: Testing
# Author: MR
# Date: 2025-10-10

clear
ls -l # 0
echo $?

grep Testing test.txt # 1
echo $?

ls -l a* #2
echo $?  # ls: cannot access 'a*': No such file or directory

xyz # 127
echo $?

echo "------------------------- if...then -------------------------"

if grep Message test.txt; then
  echo "Message Found"
fi

if ls | grep test; then
  echo "test.txt"
fi

echo "----- test ---------"
x=10
y=10

echo "x = $x, y = $y"
if [ $x -ge $y ]; then
  echo '[$x -ge $y] : True'
fi

echo "----- test strings ---------"
string1="apples"
string2="oranges"
if [ "$string1" = "$string2" ]; then
  echo "The two strings are equal."
else
  echo "The two strings are not equal."
fi

string1="apples"
string2="oranges"
if [ "$string1" != "$string2" ]; then
  echo "Strings are different."
else
  echo "Strings are not different."
fi

# Testing if a string is empty using -z:
string=""
if [[ -z $string ]]; then
  echo "The string is empty."
else
  echo "The string is not empty."
fi

# Testing if a string is non-empty using -n:
string="hello"
if [[ -n $string ]]; then
  echo "The string is not empty."
else
  echo "The string is empty."
fi

# Checking if a string contains a substring (partial matching):
str="hello world"
if [[ "$str" == *"world"* ]]; then
  echo "str contains 'world'"
fi

# Using single line tests with logical AND and OR:
[ "$string1" = "$string2" ] && echo "Strings are equal." || echo "Strings are not equal."

echo "----- test files ---------"
# Check if a file exists (any type):
file="test.txt"
if [ -e "$file" ]; then
  echo "File exists."
else
  echo "File does not exist."
fi

# Check if a file exists and is a regular file (not a directory):
file="test.txt"
if [ -f "$file" ]; then
  echo "File exists and is a regular file."
else
  echo "File does not exist or is not a regular file."
fi

# Check if a directory exists:
dir="myFolder"
if [ -d "$dir" ]; then
  echo "Directory exists."
else
  echo "Directory does not exist."
fi

# Check if a file is readable:
file="test.txt"
if [ -r "$file" ]; then
  echo "File is readable."
else
  echo "File is not readable."
fi

# Check if a file is writable:
file="test.txt"
if [ -w "$file" ]; then
  echo "File is writable."
else
  echo "File is not writable."
fi

# Check if a file is executable:
file="script02.sh"
if [ -x "$file" ]; then
  echo "File is executable."
else
  echo "File is not executable."
fi

# Check if a file is not empty (size > 0 bytes):
file="test.txt"
if [ -s "$file" ]; then
  echo "File is not empty."
else
  echo "File is empty."
fi

# Negation: Check if a file does not exist "!":
file="something.txt"
if [ ! -e "$file" ]; then
  echo "File does not exist."
fi

# Testing Logical OR (-o)
read -p "Enter a letter: " letter

if [ "$letter" = "a" -o "$letter" = "b" ]; then
  echo "The letter is either a or b."
else
  echo "The letter is not a or b."
fi

if [[ "$letter" == "a" || "$letter" == "b" ]]; then
  echo "The letter is either a or b."
else
  echo "The letter is not a or b."
fi

# Testing Logical AND (-a)
read -p "Enter a number: " num

if [ "$num" -gt 10 -a "$num" -lt 20 ]; then
  echo "The number is between 11 and 19."
else
  echo "The number is not between 11 and 19."
fi

if [[ "$num" -gt 10 && "$num" -lt 20 ]]; then
  echo "The number is between 11 and 19."
else
  echo "The number is not between 11 and 19."
fi

if [ "$num" -gt 10 ] && [ "$num" -lt 20 ]; then
  echo "The number is between 11 and 19."
else
  echo "The number is not between 11 and 19."
fi

# Do Nothing or Null command
if [ -e test.txt ]; then
  : # Do nothing
else
  echo "Error: No test.txt file"
fi

# if ...then...else Statement
if [ $(uname) = "Linux" ]; then
  echo "Start Web Server"
else
  echo "Not Linux"
fi

# Nested If
# Determine the day of week (1-7, Mon-Sun)
day=$(date +%u)
echo $day

# Get the hour in 24-hour format (00-23)
hour=$(date +%H)
echo $hour

# Check if the day is a weekday (Mon-Fri)
if [ $day -le 5 ]; then
  echo "Today is a weekday."

  # Nested if to check if it is morning (before noon) or afternoon/evening
  if [ $hour -lt 12 ]; then
    echo "It is morning."
  else
    echo "It is afternoon or evening."
  fi

else
  echo "Today is the weekend!"
fi

if [ $(hostname) != "localhost" ]; then
  if [ $(uname) = "Linux" ]; then
    echo "Start Backup"
  else
    echo "Restore previous version"
  fi
else
  echo "Configure application"
fi

# Elif
read -p "Enter a number: " num

if [ $num -gt 100 ]; then
  echo "The number is greater than 100."
elif [ $num -lt 100 ]; then
  echo "The number is less than 100."
else
  echo "The number is exactly 100."
fi
