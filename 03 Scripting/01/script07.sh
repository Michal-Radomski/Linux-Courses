#!/bin/bash

# Filename: script07.sh
# Purpose: Testing - Sed
# Author: MR
# Date: 2025-10-12

clear
echo "Hello world" | sed 's/world/Bash/' # Hello Bash

sed 's/Message/_message_/g' test.txt

sed -i 's/Message/_message_/g' test.txt

# Address
# Delete the first line of a file
sed '1d' filename.txt

# Delete lines from line 2 to 5
sed '2,5d' filename.txt

# Print only lines matching "pattern"
sed -n '/pattern/p' filename.txt

# Delete every even line (starting from line 0, every 2nd line)
sed '0~2d' filename.txt

# Delete all lines except the first one
sed '1!d' filename.txt

# Address for multiple commands
sed '2,4 {
  s/apple/orange/
  s/banana/grape/
}' filename.txt

# Deleting
sed '3d' filename.txt # Delete a specific line (e.g., line 3)

sed '2,5d' filename.txt # Delete a range of lines (e.g., lines 2 to 5)

sed '$d' filename.txt # Delete the last line

sed '/pattern/d' filename.txt # Delete lines matching a pattern

# Insert and append command
sed '4i This is the inserted line.' filename # To insert a line before a specific line number (e.g., before line 4)

sed '3a This is the appended line.' filename # To append a line after a specific line number (e.g., after line 3)
