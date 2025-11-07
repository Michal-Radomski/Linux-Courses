The `jobs` command in Linux is a shell built-in utility used to display and manage active jobs (processes) in the current
shell session. A "job" refers to processes that the shell has started, which can be running in the foreground or background.

Key points about the `jobs` command:

- It lists all jobs started in the current shell, showing their job number, status (Running, Stopped, Done), and the command
  that launched them.
- Jobs can be backgrounded with `&` or suspended with `Ctrl+Z`.
- Common options include:
  - `jobs` — lists all jobs.
  - `jobs -l` — shows jobs with their process IDs (PIDs).
  - `jobs -p` — shows only the PIDs of the jobs.
  - `jobs -r` — shows only running jobs.
  - `jobs -s` — shows only stopped jobs.

Example output:

```
[1]+ Running sleep 100 &
[2]- Stopped vim
```

The `+` and `-` indicate the current and previous jobs.

This command helps users track processes they've started and manage them effectively in the current shell
environment.[1][2][3]

[1](https://linuxvox.com/blog/linux-jobs-command/) [2](https://codelucky.com/jobs-command-linux/)
[3](https://www.cyberciti.biz/faq/unix-linux-jobs-command-examples-usage-syntax/)
[4](https://linuxsimply.com/jobs-command-in-linux/) [5](https://linuxhandbook.com/jobs-command/)
[6](https://www.baeldung.com/linux/jobs-command-tutorial) [7](https://www.commandinline.com/cheat-sheet/jobs/)

The `jobs` command in Linux is a shell built-in utility used to display and manage active jobs (processes) in the current
shell session. A "job" refers to processes that the shell has started, which can be running in the foreground or background.

Key points about the `jobs` command:

- It lists all jobs started in the current shell, showing their job number, status (Running, Stopped, Done), and the command
  that launched them.
- Jobs can be backgrounded with `&` or suspended with `Ctrl+Z`.
- Common options include:
  - `jobs` — lists all jobs.
  - `jobs -l` — shows jobs with their process IDs (PIDs).
  - `jobs -p` — shows only the PIDs of the jobs.
  - `jobs -r` — shows only running jobs.
  - `jobs -s` — shows only stopped jobs.

Example output:

```
[1]+ Running sleep 100 &
[2]- Stopped vim
```

The `+` and `-` indicate the current and previous jobs.

This command helps users track processes they've started and manage them effectively in the current shell
environment.[1][2][3]

[1](https://linuxvox.com/blog/linux-jobs-command/) [2](https://codelucky.com/jobs-command-linux/)
[3](https://www.cyberciti.biz/faq/unix-linux-jobs-command-examples-usage-syntax/)
[4](https://linuxsimply.com/jobs-command-in-linux/) [5](https://linuxhandbook.com/jobs-command/)
[6](https://www.baeldung.com/linux/jobs-command-tutorial) [7](https://www.commandinline.com/cheat-sheet/jobs/)

The `fg` command in Linux is used to bring a background or suspended job to the foreground. It resumes the specified job so
you can interact with it directly in the terminal.

Key points about the `fg` command:

- It moves a job running in the background or stopped state into the foreground.
- If no job is specified, it brings the most recently suspended or backgrounded job to the foreground by default.
- You can specify a job by its job number (e.g., `fg %1`), by job name, or use symbols like `%%` for the current job.
- Bringing a job to the foreground allows it to take control of the terminal, so you can provide input or see output as if it
  were started in the foreground initially.

Example usage:

- After suspending a process with `Ctrl+Z`, use `fg` to resume it in the foreground.
- Use `jobs` to find the job number, then `fg %jobnumber` to bring that job to the foreground.

This command is a shell built-in available in bash, ksh, and similar shells, and is crucial for managing jobs and
multitasking in the terminal environment.[1][2][3]

[1](https://www.ibm.com/docs/ssw_aix_72/f_commands/fg.html)
[2](https://www.geeksforgeeks.org/linux-unix/fg-command-in-linux-with-examples/)
[3](https://www.cyberciti.biz/faq/unix-linux-fg-command-examples-usage-syntax/)
[4](https://stackoverflow.com/questions/60476078/using-bg-and-fg-with-a-given-pid)
[5](https://www.baeldung.com/linux/foreground-background-process) [6](https://www.redhat.com/en/blog/jobs-bg-fg)
[7](https://www.everythingdevops.dev/blog/linux-background-and-foreground-process-management)
[8](https://www.ubuntumint.com/foreground-and-background-process-in-linux/)
