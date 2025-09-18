The tar and gzip commands in Linux are used for file archiving and compression, respectively.

The tar command (short for tape archive) is primarily used to combine multiple files and directories into a single archive
file, commonly referred to as a tarball (usually with a .tar extension). This makes it easier to store, transfer, or back up
collections of files as one package. Besides archiving, tar can optionally compress the archive using gzip or other
compressors.

The gzip command is a compression utility that reduces file size using the Lempel-Ziv coding algorithm, making files easier
to transfer or save disk space.

### Examples

- Create a tar archive:

  ```
  tar -cvf archive.tar file1 file2 directory1
  ```

  This creates an archive named archive.tar containing file1, file2, and directory1.

- Extract a tar archive:

  ```
  tar -xvf archive.tar
  ```

  This extracts the contents of archive.tar.

- Create a gzip compressed tar archive:

  ```
  tar -czvf archive.tar.gz file1 file2 directory1
  ```

  This creates a tar archive and compresses it with gzip, producing archive.tar.gz.

- Extract a gzip compressed tar archive:

  ```
  tar -xzvf archive.tar.gz
  ```

- Compress a file with gzip directly:
  ```
  gzip filename
  ```
  This compresses the file, replacing it with filename.gz.

These commands help efficiently manage backups, transfers, and storage in Linux environments by archiving and compressing
files.[1][6]

[1](https://www.hostinger.com/tutorials/linux-tar-command-with-examples)
[2](https://www.linuxcloudvps.com/blog/10-useful-tar-commands-in-linux-with-examples/)
[3](https://www.baeldung.com/linux/tar-command) [4](https://www.techplayon.com/tar-gz-linux-tar-command-examples/)
[5](https://www.reddit.com/r/linuxquestions/comments/zn53tn/what_is_a_tar_file_and_why_do_people_use_it/)
[6](https://infotechys.com/commonly-used-tar-and-gzip-commands-in-linux-with-examples/)
[7](https://www.ibm.com/docs/ssw_aix_71/com.ibm.aix.cmds5/tar.htm)
[8](https://www.freecodecamp.org/news/how-to-compress-files-in-linux-with-tar-command/)
[9](<https://en.wikipedia.org/wiki/Tar_(computing)>) [10](https://www.tecmint.com/tar-command-examples-linux/)
