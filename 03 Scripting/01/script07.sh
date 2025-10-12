#!/bin/bash

# Filename: script07.sh
# Purpose: Testing - Sed
# Author: MR
# Date: 2025-10-12

clear
echo "Hello world" | sed 's/world/Bash/' # Hello Bash

sed 's/Message/_message_/g' test.txt

sed -i 's/Message/_message_/g' test.txt
