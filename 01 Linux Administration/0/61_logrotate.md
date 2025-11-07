Logrotate is a Linux utility designed to manage log files automatically by rotating, compressing, deleting, and mailing them.
Its primary purpose is to prevent log files from growing too large and consuming excessive disk space, which can slow down
the system and complicate log analysis.

How logrotate works:

- It archives (rotates) the current log file by renaming it (e.g., appending a number like `.1`).
- Creates a fresh, empty log file for new log entries.
- Compresses old logs if configured, saving disk space.
- Deletes old logs after a specified retention period.
- Can execute scripts before or after rotation to restart services or perform maintenance.
- Typically runs daily through a scheduled cron job or systemd timer.

Logrotate's behavior is controlled by configuration files mainly located at `/etc/logrotate.conf` and `/etc/logrotate.d/`,
where global and application-specific settings are set.

By automating log maintenance, logrotate helps system administrators keep logs organized and prevents disk space issues while
ensuring logs are available for troubleshooting and auditing.[1][2][3][4]

[1](https://docs.rackspace.com/docs/understanding-logrotate-utility) [2](https://wiki.archlinux.org/title/Logrotate)
[3](https://betterstack.com/community/guides/logging/how-to-manage-log-files-with-logrotate-on-ubuntu-20-04/)
[4](https://www.baeldung.com/linux/rotating-logs-logrotate) [5](https://sematext.com/glossary/log-rotation/)
[6](https://www.redhat.com/en/blog/setting-logrotate)
[7](https://edgedelta.com/company/knowledge-center/what-is-log-rotation)
[8](https://www.linuxjournal.com/content/understanding-system-log-management-using-logrotate)
