The `chgrp` command in Linux is used to change the group ownership of a file or directory. It allows you to assign a
different group to a specified file or directory, changing which group of users has permissions to access it.

### Basic syntax:

```bash
chgrp [OPTIONS] GROUP FILE...
```

- **GROUP**: The new group name or numeric group ID you want to set.
- **FILE**: One or more files or directories whose group ownership will be changed.

### Common options include:

- `-R` or `--recursive`: Apply changes recursively to all files and subdirectories.
- `-v` or `--verbose`: Show detailed information about changes made.
- `-c` or `--changes`: Report only when a change is made.
- `-f` or `--silent` or `--quiet`: Suppress error messages.
- `-h` or `--no-dereference`: Change the group of symbolic links themselves rather than the files they point to.
- `--reference=RFILE`: Use the group of the referenced file for the change.

### Example:

```bash
sudo chgrp -R developers /var/www/project
```

This changes the group ownership of the `/var/www/project` directory and all its content to the `developers` group.

In summary, `chgrp` is a useful command to manage group permissions on files and directories without affecting the file
owner.[1][2][4][5]

[1](https://phoenixnap.com/kb/chgrp-command) [2](https://www.ibm.com/docs/ssw_aix_72/c_commands/chgrp.html)
[3](https://www.youtube.com/watch?v=ydYLI8_SwgQ) [4](https://linuxize.com/post/chgrp-command-in-linux/)
[5](https://www.ubuntumint.com/chgrp-command-examples/)
[6](https://www.geeksforgeeks.org/linux-unix/chgrp-command-in-linux-with-examples/) [7](https://linuxconfig.org/chgrp)
[8](https://www.howtoforge.com/linux-chgrp-command/)
[9](https://labex.io/tutorials/linux-linux-chgrp-command-with-practical-examples-422596)
