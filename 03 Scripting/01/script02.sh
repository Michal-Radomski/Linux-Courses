#!/bin/bash

# Filename: script02.sh
# Purpose: Testing
# Author: MR
# Date: 2025-10-10

ls -l # 0
echo $?

grep Testing test.txt # 1
echo $?

ls -l a* #2
echo $?  # ls: cannot access 'a*': No such file or directory

xyz # 127
echo $?
