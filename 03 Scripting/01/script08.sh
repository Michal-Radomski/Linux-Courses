#!/bin/bash

# Filename: script08.sh
# Purpose: Testing - AWK
# Author: MR
# Date: 2025-10-13

clear
echo "This is Unix" | awk '/Unix/'

awk '{print}' test.txt

ps -ax | awk '/systemd/ {print $5}'

awk '{print $3, $4}' test.txt

awk '/a/' test.txt

awk -F':' '{print $1}' /etc/passwd

awk -f process.awk data.txt
