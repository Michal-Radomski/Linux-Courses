#!/bin/bash

# Filename: 01.sh
# Purpose: Testing
# Author: MR
# Date: 2025-10-10

# run: bash 01.sh or ./01.sh
clear
echo test
ls -l
date
echo $PATH

# This is example shell script
function TestFunction() {
  echo "Inside Function Test Function"
}

pwd

TestFunction

#* Variables
SIZE=256
FILE="Security.config"
#* Referencing
echo $SIZE
echo $FILE
echo "The value of Size is $SIZE"
echo "The value of Size is ${SIZE}MB"

EMPTY_VAR=""
EMPTY_VAR_2=''
echo "EMPTY_VAR1 = NULL${EMPTY_VAR}NULL"
echo "EMPTY_VAR2 = NULL${EMPTY_VAR_2}NULL"

# Redirection of output ">"
ls -l >test.txt
echo "Test Message" >>test.txt

wc -c <test.txt

grep Message <test.txt

ls -l | grep test

cat test.txt | grep Test

ls -l te*
ls -l ????? # 5 characters -> 01.sh
ls -l [t]*
ls -l [a-zA-Z]*

echo '----------------'

variable="World"
echo 'Hello $variable' # Output: Hello $variable

variable="World"
echo "Hello $variable" # Output: Hello World

variable="Bash"

echo 'Single quote: $variable'         # literal, no expansion
echo "Double quote: $variable"         # expands variable
echo "Escape \$ and \" with backslash" # shows $ and " literally
echo \$var                             # $var

echo '----------------'

echo "pwd is $(pwd)"
echo "Date is $(date)"

pwd_output=$(pwd)
date_output=$(date)

echo "pwd is $pwd_output"
echo "Date is $date_output"

echo "------Integer Arithmetic--------"
# 1. Using Arithmetic Expansion with $(( ... )):
a=10
b=3

echo $((a + (b * 3))) # 19
echo $((a + b))       # Addition: 13
echo $((a - b))       # Subtraction: 7
echo $((a * b))       # Multiplication: 30
echo $((a / b))       # Division: 3
echo $((a % b))       # Modulus: 1 (remainder)

# 2. Using let command:
let result=a+b
echo $result # Output: 13

let "result = a * b"
echo $result # Output: 30

# 3. Using expr command:
sum=$(expr $a + $b)
echo $sum # 13

mul=$(expr $a \* $b) # Note the escaped *
echo $mul            # 30
