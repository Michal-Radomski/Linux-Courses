In Linux, umask (short for user file-creation mode mask) is a command and setting that defines the default permissions for
newly created files and directories. It works by specifying which permissions to "mask" or remove from the system's default
set of permissions so that new files and folders are created with restricted access based on the umask value. The umask value
is typically expressed in octal or symbolic notation and affects three categories of permissions: user (owner), group, and
others. For example, a common umask setting of 022 will result in new files being created with permissions 644 (read and
write for the owner, read-only for group and others) and new directories with permissions 755 (full access for owner, read
and execute for group and others). The umask ensures consistent default security by controlling access levels automatically
upon file or directory creation, avoiding the need to manually set permissions each time.[1][2][3]

[1](https://phoenixnap.com/kb/what-is-umask) [2](https://www.liquidweb.com/blog/what-is-umask-and-how-to-use-it-effectively/)
[3](https://www.geeksforgeeks.org/linux-unix/umask-command-in-linux-with-examples/)
[4](https://www.cbtnuggets.com/blog/technology/system-admin/umask-file-permissions-a-crash-course)
[5](https://wiki.archlinux.org/title/Umask) [6](https://man7.org/linux/man-pages/man2/umask.2.html)
[7](https://linux-audit.com/filesystems/file-permissions/set-default-file-permissions-with-umask/)
