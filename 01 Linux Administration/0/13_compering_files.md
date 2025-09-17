The Linux commands cmp, diff, and sha256 serve different purposes related to file comparison and verification:

- cmp: This command compares two files byte by byte and reports the location of the first difference, if any. It is useful
  for determining if two files are exactly the same or at what byte they first differ. Its exit status is 0 if files are
  identical, 1 if different, and 2 if there is an error.[1][3][9]

- diff: This command compares two text files line by line and outputs the differences between them. Unlike cmp, diff is
  generally used for textual content to show what lines have been added, removed, or modified.[4]

- sha256: This relates to generating or checking SHA-256 hash values (checksum) of files. It is widely used for verifying
  integrity and authenticity, for example, ensuring a downloaded file has not been corrupted or tampered with by comparing
  its SHA-256 hash against a known value. SHA-256 is preferred over older algorithms like MD5 due to better security.[2][8]

In summary, cmp is for byte-level binary file comparison, diff is for line-level textual comparison, and sha256 is for
cryptographic hash checks to verify file integrity.

[1](https://www.geeksforgeeks.org/linux-unix/cmp-command-in-linux-with-examples/)
[2](https://www.reddit.com/r/bash/comments/q8n18a/how_to_use_sha256sum_to_compare_the_hashes_of_two/)
[3](https://www.tutorialspoint.com/unix_commands/cmp.htm)
[4](https://www.cs.purdue.edu/homes/enh/cs158a/unix/util-diff-comp.html)
[5](https://www.nielit.gov.in/gorakhpur/sites/default/files/Gorakhpur/Alevel_Unix_cmp_command_01April_AKM.pdf)
[6](https://learnbyexample.github.io/cli-computing/comparing-files.html) [7](<https://en.wikipedia.org/wiki/Cmp_(Unix)>)
[8](https://www.reddit.com/r/linuxmasterrace/comments/i7qluu/cmp_vs_sum/)
[9](https://www.scaler.com/topics/cmp-command-in-linux/)
[10](https://stackoverflow.com/questions/3358420/generating-a-sha-256-hash-from-the-linux-command-line)
