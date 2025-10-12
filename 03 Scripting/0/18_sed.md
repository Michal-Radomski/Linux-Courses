Here is a basic example of using the `sed` command in Bash to perform a substitution (find and replace) on a text string:

```bash
echo "Hello world" | sed 's/world/Bash/'
```

Output:

```
Hello Bash
```

### Explanation:

- The `sed` command here uses the substitute (`s`) operation.
- The syntax `'s/old/new/'` replaces the first occurrence of `old` with `new` in the input.
- The input is provided by the `echo` command piped into `sed`.
- In this example, "world" is replaced with "Bash".

### More complex example: replace all occurrences globally in a file

```bash
sed 's/word/replacement/g' filename.txt
```

This replaces all occurrences of "word" with "replacement" in each line of `filename.txt` and prints the result to standard
output.

### Example using `-i` to modify the file in place

```bash
sed -i 's/oldword/newword/g' filename.txt
```

This edits the file `filename.txt` directly, replacing all instances of "oldword" with "newword".

These are common ways to use `sed` for text processing in Bash scripts and command lines.[1][3][4]

[1](https://www.hostinger.com/tutorials/linux-sed-command)
[2](https://stackoverflow.com/questions/49884905/bash-complex-examples-of-sed-command)
[3](https://www.geeksforgeeks.org/linux-unix/sed-command-in-linux-unix-with-examples/)
[4](https://www.w3schools.com/bash/bash_sed.php) [5](https://www.digitalocean.com/community/tutorials/linux-sed-command)
[6](https://4sysops.com/archives/ten-sed-command-examples/) [7](https://linuxhint.com/50_sed_command_examples/)
[8](https://gist.github.com/dlfinis/5d893cbd6ac2cdb729fe) [9](https://infotechys.com/20-useful-sed-commands/)
[10](https://www.linuxjournal.com/content/mastering-text-manipulation-sed-command)

The options `-e` and `-f` in the `sed` command are used to specify the script to execute:

- `-e script` allows you to add the script (commands of text editing) directly on the command line. You can use multiple `-e`
  options to specify multiple commands.
- `-f filename` tells `sed` to read the script from a file. The script file contains one or more `sed` commands that will be
  executed on the input.

### Examples

Using `-e`:

```bash
sed -e 's/apple/orange/' -e 's/banana/grape/' input.txt
```

This runs two substitution commands in sequence: replace "apple" with "orange", then "banana" with "grape", on the lines of
`input.txt`.

Using `-f`:

Suppose `script.sed` contains:

```
s/apple/orange/
s/banana/grape/
```

You can run:

```bash
sed -f script.sed input.txt
```

This applies the same substitutions by reading the script from `script.sed`.

---

These options let you organize your `sed` commands more flexibly: use `-e` for quick one-liners or multiple commands, and
`-f` for longer or reusable scripts.[2][6]

[1](https://www.reddit.com/r/redhat/comments/zf6q7s/understanding_a_sed_command/)
[2](https://www.geeksforgeeks.org/linux-unix/sed-command-linux-set-2/)
[3](https://www.linuxjournal.com/content/mastering-text-manipulation-sed-command)
[4](https://www.ans.co.uk/docs/operatingsystems/linux/misc/sed/)
[5](https://stackoverflow.com/questions/49833264/can-someone-explain-me-these-sed-commands-and-what-they-are-doing)
[6](https://www.softcover.io/read/fc6c09de/unix_commands/sed)
[7](https://www.linuxtoday.com/developer/useful-sed-commands-in-linux-12-examples/)
[8](https://www.shortcutfoo.com/blog/sed-by-example)
