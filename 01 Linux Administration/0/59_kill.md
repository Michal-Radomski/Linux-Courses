The `kill` and `killall` commands in Linux are used to send signals to processes, commonly to terminate or control them.

- `kill` sends a signal to a process identified by its Process ID (PID). By default, it sends the `SIGTERM` (signal
  number 15) to gracefully terminate a process. You can specify different signals to change the action, like `SIGKILL` (9) to
  forcefully kill a process.
- `killall` sends a signal to all processes with a specified name, allowing you to terminate or control multiple processes by
  name rather than by PID.

Common ways to use `kill` include:

- `kill PID` — sends the default `SIGTERM` to process with given PID.
- `kill -9 PID` or `kill -SIGKILL PID` — force kill.
- `kill -l` — list all available signals.
- Signals can be specified by number, with or without `SIG` prefix (e.g., `kill -TERM PID`, `kill -15 PID`).

Key options for `kill`:

- `-s SIGNAL` — specify the signal to send by name or number.
- `-l` — list all signal names and numbers.
- `--help` — display help information.
- `-L` — list all signal names.

`kill` can target:

- A single PID (positive number).
- All processes in current process group (PID 0).
- All processes with the same UID (PID -1).
- All processes in a specific group (negative PID).

`killall` usage example:

- `killall process_name` — kills all processes named "process_name" with `SIGTERM` by default.
- `killall -9 process_name` — sends `SIGKILL` to all of them.

In summary, `kill` is PID-based for specific process management, while `killall` is name-based for broader process control.
Signals define the action taken on the processes, with `SIGTERM` being graceful shutdown and `SIGKILL` being forceful
termination.[1][2][3][4][5][8]

[1](https://www.geeksforgeeks.org/linux-unix/kill-command-in-linux-with-examples/)
[2](https://linuxize.com/post/kill-command-in-linux/) [3](https://hostman.com/tutorials/mastering-killall-and-kill-commands/)
[4](https://www.cyberciti.biz/faq/unix-kill-command-examples/) [5](https://man7.org/linux/man-pages/man1/kill.1.html)
[6](https://www.baeldung.com/linux/kill-commands)
[7](https://www.linuxfoundation.org/blog/blog/classic-sysadmin-how-to-kill-a-process-from-the-command-line)
[8](https://www.ibm.com/docs/ssw_aix_72/com.ibm.aix.cmds3/kill.htm) [9](https://www.liquidweb.com/blog/linux-kill-commands/)
