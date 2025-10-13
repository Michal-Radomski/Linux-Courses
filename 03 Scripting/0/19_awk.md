The awk command in bash is a powerful pattern scanning and processing language used for handling and manipulating text files,
data extraction, and reporting. It reads input line by line, splits each line into fields based on a delimiter (default is
whitespace), and performs actions on lines that match specified patterns. Awk is often used for extracting specific columns
or fields, searching and filtering text, and generating formatted reports.

### Basic awk Usage Examples

1. Print all lines of a file (default action):

```bash
awk '{print}' filename
```

2. Print lines matching a pattern (e.g., lines containing letter "a"):

```bash
awk '/a/' filename
```

3. Print specific columns (fields) from a file (e.g., 3rd and 4th fields):

```bash
awk '{print $3, $4}' filename
```

Fields are numbered starting from 1, with `$1` being the first column.

4. Specify a different field separator (e.g., colon `:`) and print first column:

```bash
awk -F':' '{print $1}' /etc/passwd
```

5. Print a specific column (e.g., user name) from system process list using a pipe:

```bash
ps -ax | awk '/systemd/ {print $5}'
```

### Explanation

- Patterns can be regular expressions that match parts of lines.
- Actions are enclosed in curly braces `{}` and specify what to do with matching lines.
- If no action is specified, the default is to print the whole line.
- `$0` represents the whole line.
- `$1`, `$2`, etc., represent the first, second, etc., fields in the line.

Awk is useful for text processing tasks such as transforming data formats, extracting information from logs, and generating
reports without the need for complex scripting.[1][2][3][5]

[1](https://www.pluralsight.com/resources/blog/cloud/the-awk-command-bash-basics)
[2](https://www.tutorialspoint.com/awk/awk_basic_examples.htm)
[3](https://www.geeksforgeeks.org/linux-unix/awk-command-unixlinux-examples/)
[4](https://stackoverflow.com/questions/67685005/using-awk-in-a-bash-script) [5](https://www.w3schools.com/bash/bash_awk.php)
[6](https://www.reddit.com/r/linux/comments/15y2kze/learn_gnu_awk_with_hundreds_of_examples_and/)
[7](https://linuxize.com/post/awk-command/) [8](https://www.cyberciti.biz/faq/bash-scripting-using-awk/)
[9](https://earthly.dev/blog/awk-examples/)
[10](https://dev.to/karandaid/how-to-use-awk-like-an-expert-the-ultimate-guide-for-bash-power-users-1cd)

The awk command in bash is indeed the same as the AWK programming language with the extension .awk. The key point is that
"awk" in the shell is the command-line tool or interpreter that runs scripts written in the AWK programming language.

### Relationship between awk command and AWK language

- AWK is a scripting language designed for text processing, pattern scanning, and data extraction. It is a fully functional
  programming language with variables, control structures, functions, arrays, and built-in operators.
- The awk command in bash executes AWK programs or scripts. These scripts can be written as one-liners on the command line or
  saved in files with a .awk extension and then run using awk.
- AWK scripts consist of pattern-action pairs, where for each line of input that matches a pattern, the action is executed.
  This makes it especially useful for processing text files or streams.
- So, running `awk '{print $1}' file.txt` is running an AWK program with the script `{print $1}`, and an AWK script file in
  "script.awk" can be run by `awk -f script.awk file.txt`.

In summary, the awk command is the tool for running programs written in the AWK programming language, which often are stored
with the .awk extension for scripts.[1][2][5]

[1](https://en.wikipedia.org/wiki/AWK) [2](https://ifj.edu.pl/private/krawczyk/gawk/gawk_3.htm)
[3](https://www.skeeve.com/awk-sys-prog.html) [4](https://www.baeldung.com/linux/awk-nawk-gawk-mawk-difference)
[5](https://stackoverflow.com/questions/16751274/is-awk-a-programming-language-or-just-a-tool)
[6](https://www.reddit.com/r/linux/comments/8lrevd/one_of_the_most_useful_and_underused_language_in/)
[7](https://news.ycombinator.com/item?id=22304017)
[8](https://www.linkedin.com/pulse/understanding-differences-applications-grep-awk-sed-zigabyte-yzjwe)
