The usermod command in Linux is a tool used to modify existing user accounts. It allows system administrators to change user
properties such as the home directory, login shell, group memberships, username, and other account attributes. It is
typically executed with root privileges.

### Common usermod command options and examples:

- Change the user's home directory:

  ```
  sudo usermod -d /new/home/directory username
  ```

  This sets the home directory of "username" to "/new/home/directory" without moving existing files.

- Change the user's login shell:

  ```
  sudo usermod -s /bin/ksh username
  ```

  This changes the login shell of "username" to the KornShell.

- Add the user to supplementary groups:

  ```
  sudo usermod -a -G group1,group2 username
  ```

  This appends "username" to "group1" and "group2" without removing them from other groups.

- Rename a user:

  ```
  sudo usermod -l newusername oldusername
  ```

  This changes the username from "oldusername" to "newusername".

- Move the user's home directory and update its location accordingly:
  ```
  sudo usermod -d /new/home/directory -m username
  ```
  This moves the contents of the old home directory to the new location as well.

These examples illustrate how usermod manages user accounts post-creation, changing configuration entries stored in files
like /etc/passwd and /etc/group.[1][2][3][5][7][8][9][10]

[1](https://www.scaler.com/topics/usermod-command-in-linux/) [2](https://linuxconfig.org/usermod)
[3](https://www.geeksforgeeks.org/linux-unix/usermod-command-in-linux-with-examples/)
[4](https://www.youtube.com/watch?v=gzNXittvyZ4) [5](https://phoenixnap.com/kb/usermod-linux)
[6](https://www.linuxtoday.com/developer/a-complete-guide-to-usage-of-usermod-command-15-practical-examples-with-screenshots/)
[7](https://www.linode.com/docs/guides/what-is-usermod-and-how-to-use-it/)
[8](https://labex.io/tutorials/linux-linux-usermod-command-with-practical-examples-422987)
[9](https://linuxize.com/post/usermod-command-in-linux/) [10](https://www.man7.org/linux/man-pages/man8/usermod.8.html)
