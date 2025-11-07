The `partprobe` command in Linux is used to inform the operating system's kernel about changes made to the partition table of
a storage device without needing to reboot. When you create, delete, or modify partitions on a disk using tools like `fdisk`
or `parted`, the kernel maintains an in-memory partition table that may not detect those changes automatically. Running
`partprobe` forces the kernel to re-read the partition table and update its information immediately.

Key points about `partprobe`:

- It helps the system recognize new, deleted, or resized partitions without rebooting.
- Typical usage is `sudo partprobe /dev/sdX` where `/dev/sdX` is the device with partition changes.
- Running `partprobe` may exit silently if successful, with no output.
- It supports options like:
  - `-d` or `--dry-run` to simulate the action without applying changes.
  - `-s` or `--summary` to display a summary of devices and partitions.
  - `-h` or `--help` to show usage info.
  - `-v` or `--version` to show version information.

`partprobe` is important for managing disk partitions dynamically, especially in environments where rebooting the system to
apply changes is undesirable, like remote servers or virtual machines.[1][2][3][4]

[1](https://cleveruptime.com/docs/commands/partprobe) [2](https://www.tutorialspoint.com/unix_commands/partprobe.htm)
[3](https://linuxcommandlibrary.com/man/partprobe)
[4](https://www.cyberciti.biz/tips/re-read-the-partition-table-without-rebooting-linux-system.html)
[5](https://www.hy-star.com.tw/tech/linux-e/comm/partprobe.html) [6](https://access.redhat.com/solutions/57542)
