The Linux commands zip and unzip are used for compressing and decompressing files respectively.

Using zip:

- To compress files into a ZIP archive:
  ```
  zip archive_name.zip file1 file2 file3
  ```
  This creates a ZIP archive named archive_name.zip containing file1, file2, and file3.
- To add files to an existing ZIP archive:
  ```
  zip archive_name.zip newfile
  ```
- To remove a file from a ZIP archive:
  ```
  zip -d archive_name.zip file_to_remove
  ```
- To compress a directory recursively:
  ```
  zip -r archive_name.zip directory_name
  ```

Using unzip:

- To extract files from a ZIP archive into the current directory:
  ```
  unzip archive_name.zip
  ```
- To list files in a ZIP archive without extracting:
  ```
  unzip -l archive_name.zip
  ```
- To extract files to a specific directory:
  ```
  unzip archive_name.zip -d /path/to/destination
  ```
- To extract specific files from a ZIP archive:
  ```
  unzip archive_name.zip file1 file2
  ```
- To overwrite existing files without being prompted:
  ```
  unzip -o archive_name.zip
  ```

These commands help efficiently manage ZIP archives on Linux systems for various file compression and extraction
needs.[1][2][5]

[1](https://www.hostinger.com/ph/tutorials/how-to-unzip-files-linux/)
[2](https://www.atlantic.net/dedicated-server-hosting/how-to-use-zip-and-unzip-commands-in-linux/)
[3](https://kodekloud.com/blog/unzip-files-to-specific-directory-in-linux/)
[4](https://www.geeksforgeeks.org/linux-unix/zip-command-in-linux-with-examples/)
[5](https://elementor.com/blog/how-to-use-the-unzip-command-in-linux/) [6](https://www.w3schools.com/bash/bash_unzip.php)
[7](https://www.youtube.com/watch?v=wupxfWnlurM)
[8](https://labex.io/es/tutorials/linux-how-to-extract-zip-files-in-linux-392706)
