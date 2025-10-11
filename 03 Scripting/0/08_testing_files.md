Here are examples of testing files in bash using various file test operators:

1. Check if a file exists (any type):

```bash
file="example.txt"
if [ -e "$file" ]; then
  echo "File exists."
else
  echo "File does not exist."
fi
```

2. Check if a file exists and is a regular file (not a directory):

```bash
file="example.txt"
if [ -f "$file" ]; then
  echo "File exists and is a regular file."
else
  echo "File does not exist or is not a regular file."
fi
```

3. Check if a directory exists:

```bash
dir="myfolder"
if [ -d "$dir" ]; then
  echo "Directory exists."
else
  echo "Directory does not exist."
fi
```

4. Check if a file is readable:

```bash
file="example.txt"
if [ -r "$file" ]; then
  echo "File is readable."
else
  echo "File is not readable."
fi
```

5. Check if a file is writable:

```bash
file="example.txt"
if [ -w "$file" ]; then
  echo "File is writable."
else
  echo "File is not writable."
fi
```

6. Check if a file is executable:

```bash
file="script.sh"
if [ -x "$file" ]; then
  echo "File is executable."
else
  echo "File is not executable."
fi
```

7. Check if a file is not empty (size > 0 bytes):

```bash
file="example.txt"
if [ -s "$file" ]; then
  echo "File is not empty."
else
  echo "File is empty."
fi
```

8. Negation: Check if a file does not exist:

```bash
file="something.txt"
if [ ! -e "$file" ]; then
  echo "File does not exist."
fi
```

These tests use bash's built-in test command and square bracket syntax with file test operators like `-e`, `-f`, `-d`, `-r`,
`-w`, `-x`, `-s`, and negation with `!` to verify file properties and existence.[1][2][3][5][6]

[1](https://maslosoft.com/kb/what-means-bash-file-testing-flags/) [2](https://adamtheautomator.com/bash-file-test/)
[3](https://docs.rockylinux.org/10/books/learning_bash/05-tests/) [4](https://tldp.org/LDP/abs/html/fto.html)
[5](https://stackoverflow.com/questions/638975/how-do-i-tell-if-a-file-does-not-exist-in-bash)
[6](https://zerotomastery.io/blog/bash-if-file-exists/) [7](https://www.hostinger.com/tutorials/bash-script-example)
[8](https://sentry.io/answers/determine-whether-a-file-exists-or-not-in-bash/)
[9](https://www.pluralsight.com/resources/blog/cloud/conditions-in-bash-scripting-if-statements)
