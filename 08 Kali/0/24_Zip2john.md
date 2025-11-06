zip2john is a utility in Kali Linux that is part of the John the Ripper suite, designed to extract password hashes from
encrypted ZIP files. These hashes can then be used by John the Ripper for password cracking. The tool processes the ZIP
archive to generate a hash that represents the password protection on the archive.

Key points about zip2john include:

- It is used to produce a password hash from password-protected ZIP files.
- The hash output can be saved to a file and then fed into John the Ripper for cracking.
- It assumes all files in the archive share the same password unless specified otherwise.
- Options include scanning from the start of the archive, selecting specific files within a ZIP when multiple are present,
  and creating checksum-only hashes.
- It supports handling old PKZIP encryption and certain advanced options to optimize cracking speed or reliability.

The basic usage is running zip2john on a ZIP file to get its hash, then using John the Ripper to crack the password from that
hash. This is a common step in penetration testing or forensic analysis when dealing with encrypted ZIP archives in Kali
Linux and other systems.

Example command to generate a hash:

```
zip2john file.zip > hash.txt
```

Followed by using John the Ripper:

```
john hash.txt
```

This utility is an essential tool in Kali Linux for cracking ZIP file passwords by leveraging John the Ripper's cracking
capabilities.[2][3]

[1](https://www.openwall.com/lists/john-users/2017/12/14/1)
[2](https://dev.to/nesh_tech/zip-password-cracking-using-john-the-ripper-in-kali-linux-2mng)
[3](https://www.kali.org/tools/john/)
[4](https://stackoverflow.com/questions/15442565/how-do-you-get-the-password-hash-of-a-zip-file)
[5](https://www.kali.org/tools/) [6](https://www.openwall.com/john/doc/FAQ.shtml)
[7](https://www.esecurityplanet.com/products/john-the-ripper/) [8](https://www.youtube.com/watch?v=tJRz9j2REb4)
[9](https://beyondjapan.com/en/blog/2024/09/kalilinux2024-2/)
[10](https://www.reddit.com/r/linuxadmin/comments/113l21r/zip2john_with_different_files_i_cant_figure_it_out/)
