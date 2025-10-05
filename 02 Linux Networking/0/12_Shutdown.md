To close (shut down) a Linux system from the command line interface (CLI), use the `shutdown` command with options:

- Immediate shutdown:

  ```bash
  sudo shutdown now
  ```

  or

  ```bash
  sudo shutdown -h now
  ```

  Here, `-h` means halt or power off, and `now` means immediately.

- Schedule shutdown after a delay (e.g., 10 minutes):

  ```bash
  sudo shutdown +10
  ```

- Cancel a scheduled shutdown:
  ```bash
  sudo shutdown -c
  ```

Alternatively, you can use:

- Power off immediately:
  ```bash
  sudo poweroff
  ```
- Halt the system:
  ```bash
  sudo halt
  ```

For rebooting instead of shutdown, use:

```bash
sudo shutdown -r now
```

These commands require root or sudo privileges. Using `shutdown` properly ensures all users are notified and the system
powers down safely.[1][2][3][7]

[1](https://www.geeksforgeeks.org/linux-unix/shutdown-command-in-linux-with-examples/)
[2](https://phoenixnap.com/kb/linux-shutdown-command)
[3](https://www.ionos.com/digitalguide/server/configuration/linux-shutdown-command/)
[4](https://kodekloud.com/blog/linux-shutdown-command/)
[5](https://www.reddit.com/r/linuxquestions/comments/11xvawa/what_is_the_best_way_to_shutdown_the_system/)
[6](https://www.redhat.com/en/blog/linux-boot-shutdown-systemd) [7](https://www.cyberciti.biz/faq/howto-shutdown-linux/)
[8](https://www.hostinger.com/tutorials/linux-shutdown-command)

The `-h` flag in the Linux `shutdown` command stands for "halt." When you use `shutdown -h`, it means to halt the system
after shutting down all processes safely. Halting usually results in the system powering off completely, but technically it
stops the CPU and other system functions.

In practice, `shutdown -h now` is a common way to power off the machine immediately after a clean shutdown. The `-h` flag
tells the system to stop running rather than just rebooting or doing nothing after shutdown.

So, `-h` means to bring the system to a halt or power off state safely after the shutdown process completes.[1][3]

[1](https://linux-tips.us/how-to-shutdown-linux-from-the-terminal/)
[2](https://www.ionos.co.uk/digitalguide/server/configuration/shutdown-commands-via-cmd/)
[3](https://opensource.com/article/19/7/reboot-linux)
[4](https://stackoverflow.com/questions/22009705/how-to-detect-linux-shutdown-reboot)
[5](https://techdocs.broadcom.com/us/en/ca-mainframe-software/automation/ca-workload-automation-ca-7-edition/12-1/using/commands/command-descriptions/shutdown-command.html)
