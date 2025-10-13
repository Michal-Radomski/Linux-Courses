To create and run a .awk file in Linux, follow these steps:

1. Create an AWK script file (e.g., script.awk) with your favorite text editor:

```awk
#!/usr/bin/awk -f
# This is a comment

BEGIN {
    print "Starting the AWK script"
}

# Print lines containing "pattern"
 /pattern/ {
    print $0
}

END {
    print "End of script"
}
```

2. Save the file and make it executable:

```bash
chmod +x script.awk
```

3. Run the script passing the input file as an argument:

```bash
./script.awk inputfile.txt
```

### Simple example

Create a script file named `hello.awk`:

```awk
#!/usr/bin/awk -f
BEGIN { print "Hello, AWK script!" }
```

Make it executable and run it:

```bash
chmod +x hello.awk
./hello.awk
```

Output:

```
Hello, AWK script!
```

### Example reading input file

Create `users.awk` to print usernames from `/etc/passwd`:

```awk
#!/usr/bin/awk -f
BEGIN { FS=":" }
{
    print $1
}
```

Run it with:

```bash
chmod +x users.awk
./users.awk /etc/passwd
```

This will print all usernames from the system user accounts.

This approach allows writing complex AWK programs in a script file with a shebang (#!) to specify the awk interpreter, making
scripts executable and easier to reuse.[1][3][4][8][9]

[1](https://www.tecmint.com/write-shell-scripts-in-awk-programming/)
[2](https://www.cyberciti.biz/faq/bash-scripting-using-awk/)
[3](https://stackoverflow.com/questions/9991858/how-to-run-a-awk-file)
[4](https://www.digitalocean.com/community/tutorials/how-to-use-the-awk-language-to-manipulate-text-in-linux)
[5](https://www.geeksforgeeks.org/linux-unix/awk-command-unixlinux-examples/)
[6](https://www.youtube.com/watch?v=Yec16L_-grU)
[7](https://www.oreilly.com/library/view/effective-awk-programming/9781491904930/ch01.html)
[8](https://linuxhint.com/20_awk_examples/) [9](https://www.gnu.org/software/gawk/manual/html_node/Executable-Scripts.html)
