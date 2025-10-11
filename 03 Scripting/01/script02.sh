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
