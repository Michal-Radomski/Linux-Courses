Here is a list of common Bash testing conditions (file test operators) that you can use to evaluate files, directories,
strings, etc.:

### File Test Operators

- **-d**: Checks if the path is a directory.
- **-f**: Checks if the path is a regular file.
- **-e**: Checks if the file exists.
- **-s**: Checks if the file size is greater than zero.
- **-h** or **-L**: Checks if the path is a symbolic link.
- **-r**: Checks if the file is readable.
- **-w**: Checks if the file is writable.
- **-x**: Checks if the file is executable.
- **-O**: Checks if the file is owned by the current user.
- **-G**: Checks if the file is owned by the current group.
- **-k**: Checks if the sticky bit is set on a directory.
- **-b**: Checks if the file is a block special device.
- **-c**: Checks if the file is a character special device.
- **-p**: Checks if the file is a named pipe.
- **-S**: Checks if the file is a socket.
- **-N**: Checks if the file has been modified since last read.

### String Test Operators

- **-z**: Checks if a string is null/empty.
- **-n**: Checks if a string is non-empty.

### Numeric Test Operators

- **-eq**: Equal to.
- **-ne**: Not equal to.
- **-lt**: Less than.
- **-le**: Less than or equal to.
- **-gt**: Greater than.
- **-ge**: Greater than or equal to.

These operators are essential for scripting logic, enabling scripts to test conditions before taking actions.[1][3][7]

[1](https://linuxhandbook.com/bash-test-operators/)
[2](https://www.howtoforge.com/bash-if-e-and-s-and-other-file-test-operators-in-linux/)
[3](https://linuxconfig.org/bash-scripting-operators) [4](https://tldp.org/LDP/abs/html/fto.html)
[5](https://kapeli.com/cheat_sheets/Bash_Test_Operators.docset/Contents/Resources/Documents/index)
[6](https://www.w3schools.com/bash/bash_operators.php) [7](https://adamtheautomator.com/bash-file-test/)
