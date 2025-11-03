#!/bin/bash
# ( #! -> shebang )
clear

#* alias ll='ls -alF'

cat /etc/shells

echo $PATH
# echo $HOME
# env | grep USER
# env | grep SHELL

# printenv HOME

which bash    # Bash -> bash script-name.sh
which python3 # Python3 -> python3 script-name.py

os=Linux
distro="Ubuntu Linux"
age=30
server_name="Apache 2.4"

echo $age
echo $os
echo "I'm learning $distro" # Double quotes
echo "The value of \$os is $os"

my_distro="$os $distro"
echo $my_distro

set | grep Linux
# unset distro

# declare -r logdir="/var/low" #* -> read only variable
