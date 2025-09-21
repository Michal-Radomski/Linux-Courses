The systemctl command in Linux manages the systemd system and service manager. It is used to control and introspect services,
units, and the system state. Key options and commands include:

- `systemctl status <service>`: Shows the status of a service, including whether it's active.
- `systemctl start <service>`: Starts a service.
- `systemctl stop <service>`: Stops a running service.
- `systemctl restart <service>`: Restarts a service.
- `systemctl reload <service>`: Reloads service configuration without stopping it (if supported).
- `systemctl enable <service>`: Enables a service to start automatically at boot.
- `systemctl disable <service>`: Prevents a service from starting on boot.
- `systemctl list-units --type=service`: Lists all active services.
- `systemctl daemon-reload`: Reloads systemd manager configuration after changes.
- `systemctl reboot`: Reboots the system.
- `systemctl poweroff`: Powers off the system.
- `systemctl get-default`: Gets the current default target (runlevel).
- `systemctl set-default <target>`: Sets the default runlevel or target.
- `systemctl isolate <target>`: Switches to a specific target without changing default.
- `systemctl rescue`: Switches to rescue mode for troubleshooting.
- `systemctl mask <service>`: Disables a service completely, preventing manual start.
- `systemctl unmask <service>`: Removes the mask to allow service start again.
- `systemctl is-enabled mongod`

These options help in managing and controlling system services and the overall system state effectively. For advanced usage,
systemctl supports tab completion to explore all subcommands and options.

This command is a versatile tool for Linux system administration under systemd.[1][2][3][4][9]

[1](https://gcore.com/learning/how-to-use-systemctl-command-in-linux)
[2](https://www.techtarget.com/searchnetworking/tip/20-systemctl-commands-for-system-and-service-management)
[3](https://contabo.com/blog/systemctl-definition-valuable-commands-and-troubleshooting/)
[4](https://linux-audit.com/cheat-sheets/systemctl/) [5](https://man7.org/linux/man-pages/man1/systemctl.1.html)
[6](https://www.digitalocean.com/community/tutorials/how-to-use-systemctl-to-manage-systemd-services-and-units)
[7](https://wiki.archlinux.org/title/Systemd)
[8](https://blog.alphabravo.io/systemd-zero-to-hero-part-2-managing-services-and-targets-with-systemctl/)
[9](https://www.redhat.com/en/blog/linux-systemctl-manage-services)
