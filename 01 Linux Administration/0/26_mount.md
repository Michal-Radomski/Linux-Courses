The Linux mount command is used to attach a file system found on a device (like a hard disk partition, USB drive, or network
share) to a specific directory in the current file system tree, called the mount point. Once mounted, the contents of the
device are accessible via that directory.

### How mount command works

- The mount command tells the Linux kernel to link the file system from a specified device to a chosen directory.
- Syntax: `mount -t <type> <device> <mount_point>`, where `<type>` is the file system type (ext4, ntfs, vfat, etc.),
  `<device>` is the storage device or partition (like /dev/sda1), and `<mount_point>` is the directory where it will be
  accessible.
- If no mount point is given, mount refers to entries in the `/etc/fstab` configuration which specifies devices and their
  mount points.
- While mounted, the mount point directory shows the mounted device contents, hiding any previous contents of the directory.
- Mount supports various options like read-only mode, synchronous or asynchronous operations, and more, usually specified
  with the `-o` option.
- The command requires administrative privileges (root or sudo).
- Mounting is essential for accessing data on different devices, as Linux represents all storage within one unified directory
  tree.

### Common usage and options

- `mount /dev/sda1 /mnt/usb` mounts the device /dev/sda1 on /mnt/usb directory.
- `mount -t ext4 /dev/sda1 /mnt/usb` explicitly specifies the ext4 file system type.
- `mount -o ro /dev/sda1 /mnt/usb` mounts the device read-only.
- `mount -a` mounts all file systems listed in `/etc/fstab`.
- Listing currently mounted file systems: `mount -l` or using `lsblk`.

The mount command essentially lets Linux integrate multiple storage sources into a single directory structure, making it
accessible and manageable under one filesystem tree.[1][2][3][4]

[1](https://phoenixnap.com/kb/linux-mount-command)
[2](https://www.geeksforgeeks.org/linux-unix/mount-command-in-linux-with-examples/)
[3](https://www.linode.com/docs/guides/linux-mount-command/)
[4](https://www.namehero.com/blog/the-linux-mount-command-everything-you-need-to-know/)
[5](https://www.reddit.com/r/linux4noobs/comments/s6zlmo/help_with_understanding_mount_and_mount_command/)
[6](https://man7.org/linux/man-pages/man8/mount.8.html) [7](https://www.youtube.com/watch?v=-HycpQEFESY)
[8](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/7/html/storage_administration_guide/sect-using_the_mount_command-mounting)

The Linux command to unmount a mounted file system or device is `umount`. It detaches the mounted file system from the
directory where it was attached, making the device no longer accessible through that directory.

### How to unmount in Linux

- Basic syntax: `umount [OPTIONS] <TARGET>`, where `<TARGET>` is the mount point directory or the device path.
- For example, if a device is mounted at `/mnt/usb`, running `sudo umount /mnt/usb` will unmount it.
- You can also specify the device path, e.g., `sudo umount /dev/sda1`.
- If the file system is busy (files open or being used), unmounting will fail unless forced.
- Options:
  - `-l` lazy unmount: detaches the file system now but cleans up later.
  - `-f` forces unmounting, even if the device is busy.
  - `-a` unmounts all file systems listed in `/etc/fstab`.
- Only users with root or appropriate privileges can unmount file systems.

Unmounting is important to prevent data loss and ensure all pending read/write operations complete before removing the
storage device or disconnecting it from the system.[1][2][3][4]

[1](https://www.ibm.com/docs/ssw_aix_72/u_commands/umount.html)
[2](https://www.geeksforgeeks.org/linux-unix/unmount-file-system-in-linux-using-the-umount-command/)
[3](https://man7.org/linux/man-pages/man8/umount.8.html)
[4](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/7/html/storage_administration_guide/sect-using_the_mount_command-unmounting)
[5](https://linux.101hacks.com/unix/umount/)
[6](https://docs.oracle.com/cd/E19120-01/open.solaris/819-1634/rfsrefer-19/index.html) [7](https://www.linfo.org/umount.html)
[8](https://www.baeldung.com/linux/mount-unmount-filesystems)
