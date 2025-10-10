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
