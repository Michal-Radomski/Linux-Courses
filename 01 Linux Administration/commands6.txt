##########################
## Piping and Command Redirection
##########################
 
## Piping Examples:
 
ls -lSh /etc/ | head            # see the first 10 files by size
ps -ef | grep sshd              # checking if sshd is running
ps aux --sort=-%mem | head -n 3  # showing the first 3 process by memory consumption
 
## Command Redirection
 
# output redirection
ps aux > running_processes.txt
who -H > loggedin_users.txt
 
# appending to a file
id >> loggedin_users.txt
 
# output and error redirection
tail -n 10 /var/log/*.log > output.txt 2> errors.txt
 
# redirecting both the output and errors to the same file
tail -n 2 /etc/passwd /etc/shadow > output_errors.txt 2>&1
 
cat -n /var/log/auth.log | grep -ai "authentication failure" | wc -l
cat -n /var/log/auth.log | grep -ai "authentication failure" > auth.txt     # => piping and redirection


##########################
## Finding Files (find, plocate)
##########################
 
## LOCATE ##
# locate is a symlink (shortcut) to plocate
 
# updating the plocate db
sudo updatedb
 
# finding file by name
locate filename # => filename is expanded to *filename*
locate -i filename # => the filename is case insensitive
locate -r '/filename$' # => finding by exact name
 
# finding using the basename
locate -b filename
 
# finding using regular expressions
locate -r 'regex'
 
# checking that the file exists
locate -e filename
 
# showing command path
which command
which -a command
 
 
## FIND ##
find PATH OPTIONS
 
# Example: find ~ -type f -size +1M # => finding all files in ~ bigger than 1 MB
 
## Options:
# -type f, d, l, s, p
# -name filename
# -iname filename # => case-insensitive
# -size n, +n, -n
# -perm permissions
# -links n, +n, -n
# -atime n, -mtime n, ctime n
# -user owner
# -group group_owner
