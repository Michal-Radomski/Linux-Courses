The difference between the `w` and `who` commands in Linux lies mainly in the detail and type of information they provide
about logged-in users:

- The `who` command simply shows a list of users currently logged into the system, along with their usernames, terminal
  devices, login times, and remote host info if applicable. It is primarily for checking who is logged in.

- The `w` command provides more detailed information, including the same user login info but also showing what each user is
  currently doing (the command or process), how long they have been idle, CPU usage by the user's processes, and overall
  system information such as uptime, load averages, and the total number of users. In other words, it monitors user activity
  in real-time and system load.

In short, `who` focuses on who is logged in, while `w` adds what they are doing and system performance data, making it more
informative for system monitoring and management.

| Feature           | who                                       | w                                                                  |
| ----------------- | ----------------------------------------- | ------------------------------------------------------------------ |
| Purpose           | Displays logged-in users                  | Displays logged-in users + activity and system info                |
| Output details    | Username, terminal, login time, remote IP | Same as who + idle time, CPU usage, running processes, system load |
| Shows system load | No                                        | Yes                                                                |
| Idle time         | Only with `who -u`                        | Yes                                                                |
| Running processes | No                                        | Yes                                                                |
| Usage example     | `who`                                     | `w`                                                                |

This distinction makes `who` better for simple login checks and scripting, while `w` is better for monitoring user sessions
and system usage at a glance.[1][2][5]

[1](https://cyberpanel.net/blog/who-command-in-linux) [2](https://www.youtube.com/watch?v=9OZgZl0QoUY)
[3](https://www.baeldung.com/linux/who-vs-whoami) [4](https://dev.to/bitecode/whoami-who-and-w-linux-tips-2f4o)
[5](https://iq.opengenus.org/who-and-w-command-in-linux/) [6](https://www.geeksforgeeks.org/linux-unix/who-command-in-linux/)
[7](https://dev.to/bitecode/whoami-who-and-w-linux-tips-2f4o/comments)
