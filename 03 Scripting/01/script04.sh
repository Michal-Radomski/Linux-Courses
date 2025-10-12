#!/bin/bash

# Filename: script04.sh
# Purpose: Testing
# Author: MR
# Date: 2025-10-12

clear

# Command Line Arguments
echo "Script Name: $0"
echo "First Argument: $1"
echo "Second Argument: $2"
echo "All Arguments with \$*: $*"
echo "All Arguments with \$@: $@"
echo "Total Number of Arguments: $#"
#* Using: bash <script_name.sh> arg1 arg2 arg3
# Script Name: script04.sh
# First Argument: arg1
# Second Argument: arg2
# All Arguments with $*: arg1 arg2 arg3
# All Arguments with $@: arg1 arg2 arg3
# Total Number of Arguments: 3

# Shift command
# Print all arguments one by one using shift
while [ $# -gt 0 ]; do
  echo "Current argument: $1"
  shift
done
