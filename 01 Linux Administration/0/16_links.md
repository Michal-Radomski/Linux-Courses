Soft links and hard links in Linux are two ways to create references to files, and each serves different purposes.

### Hard Links

- A hard link is essentially another name for the same file, pointing to the exact same data on the disk (same inode).
- Deleting the original file does not delete the data as long as at least one hard link exists to that data.
- Hard links cannot span across different file systems and cannot link directories (except by a superuser).
- Hard links are fast and make efficient use of disk space.

### Soft Links (Symbolic Links)

- A soft link is a separate file that points to the pathname of another file.
- If the original file is deleted, the soft link breaks because it points only to the filename, not the data itself.
- Soft links can link files across different file systems and can link directories.
- They are slightly slower to access and take very little disk space.

### Purpose

- Hard links provide multiple directory entries for the same file data, useful for redundancy without duplicating data.
- Soft links serve as convenient shortcuts or references to files or directories, especially across file systems or for
  directories.

In short, hard links are direct pointers to file data, while soft links are pointers to file names with more flexibility but
less robustness if the original file is removed.[1][2][3]

[1](https://www.geeksforgeeks.org/operating-systems/difference-between-hard-link-and-soft-link/)
[2](https://ostechnix.com/explaining-soft-link-and-hard-link-in-linux-with-examples/)
[3](https://www.cbtnuggets.com/blog/certifications/open-source/linux-hard-links-versus-soft-links-explained)
[4](https://stackoverflow.com/questions/185899/what-is-the-difference-between-a-symbolic-link-and-a-hard-link)
[5](https://www.redhat.com/en/blog/linking-linux-explained)
[6](https://www.reddit.com/r/linuxadmin/comments/cue7g2/hard_links_vs_soft_links/)
[7](https://www.youtube.com/watch?v=lW_V8oFxQgA)

The main difference between a hard link and a soft link (symbolic link) in Linux is how they reference the file data:

- A **hard link** is another directory entry for the same file data, sharing the same inode. It acts like a mirror copy of
  the original file's content. Even if the original file is deleted, the hard link still accesses the data because the data
  remains on disk as long as one hard link exists. Hard links cannot span across different file systems and cannot link
  directories. They share the same inode number and permissions as the original file.

- A **soft link** or symbolic link, on the other hand, is a special file that contains a path pointing to another file or
  directory by name. It is like a shortcut. If the original file is deleted or moved, the soft link becomes broken. Soft
  links can span file systems and can link directories. They have different inode numbers and their permissions do not affect
  the original file.

Here are the detailed differences:

| Feature                          | Hard Link                                                    | Soft Link (Symbolic Link)             |
| -------------------------------- | ------------------------------------------------------------ | ------------------------------------- |
| Points to                        | Actual data on disk (inode)                                  | File name/path (reference)            |
| Effect of deleting original file | Data is still accessible through hard link                   | Link becomes broken (invalid)         |
| Can link directories?            | No                                                           | Yes                                   |
| Can cross filesystems?           | No                                                           | Yes                                   |
| Inode number                     | Same inode number as original file                           | Different inode number                |
| Permissions                      | Shared with original file and updated simultaneously         | Independent permissions               |
| Creation command                 | ln filename linkname                                         | ln -s filename linkname               |
| Space usage                      | Uses minimal additional space (just another directory entry) | Uses small space for storing the path |

In essence, hard links are multiple directory entries for the same file content within the same filesystem, maintaining data
integrity even if one link is removed; soft links are pointers or shortcuts that are more flexible but depend on the target
file's existence.[1][3][4][5]

[1](https://ostechnix.com/explaining-soft-link-and-hard-link-in-linux-with-examples/)
[2](https://www.youtube.com/watch?v=lW_V8oFxQgA)
[3](https://www.tutorialspoint.com/difference-between-hard-link-and-soft-link)
[4](https://www.cbtnuggets.com/blog/certifications/open-source/linux-hard-links-versus-soft-links-explained)
[5](https://www.geeksforgeeks.org/operating-systems/difference-between-hard-link-and-soft-link/)
[6](https://stackoverflow.com/questions/185899/what-is-the-difference-between-a-symbolic-link-and-a-hard-link)
[7](https://www.redhat.com/en/blog/linking-linux-explained)
[8](https://www.reddit.com/r/linuxadmin/comments/cue7g2/hard_links_vs_soft_links/)
[9](https://www.r-studio.com/What-are-Hard-Soft-Links.html)

An inode (short for "index node") is a data structure used in Unix-style and Linux file systems to store metadata about files
and directories. Each file or directory is associated with a unique inode number within the same filesystem. The inode itself
does not store the file name or actual data but holds essential information such as:

- File type and permissions
- Owner user ID (UID) and group ID (GID)
- File size
- Timestamps of last access, modification, and inode change
- Number of hard links
- Pointers to the actual data blocks on disk where the file's content is stored

Inodes serve as identifiers to locate and manage files within the filesystem, enabling the operating system to quickly access
the file's attributes and contents.

The file name is stored separately in the directory as an entry that points to the inode number. This separation of file
names and metadata allows hard links to point to the same inode, thereby referencing the same file content.[1][2][3][4][8]

[1](https://www.stackscale.com/blog/inodes-linux/)
[2](https://www.geeksforgeeks.org/operating-systems/inode-in-operating-system/)
[3](https://www.ionos.com/digitalguide/server/know-how/inode/) [4](https://en.wikipedia.org/wiki/Inode)
[5](https://www.redhat.com/en/blog/inodes-linux-filesystem)
[6](https://www.reddit.com/r/linux4noobs/comments/13g6h1m/what_exactly_are_inodes/)
[7](https://www.kernel.org/doc/html/latest/filesystems/ext4/inodes.html)
[8](https://docs.rackspace.com/docs/what-are-inodes-in-linux) [9](https://man7.org/linux/man-pages/man7/inode.7.html)
