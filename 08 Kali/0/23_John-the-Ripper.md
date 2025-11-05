John the Ripper (often abbreviated as JtR) is a powerful, open-source password cracking and security auditing tool used to
test the strength of passwords by attempting to crack password hashes through a variety of techniques including dictionary
attacks, brute-force attacks, and rule-based wordlist transformations. It supports numerous hash types like MD5, SHA family,
NTLM, bcrypt, and many application-specific hashes, making it suitable for auditing a wide range of systems and applications.

How to use John the Ripper:

1. Basic password cracking command using a wordlist:

```
john --wordlist=/path/to/wordlist.txt /path/to/hashfile.txt
```

- Here, `hashfile.txt` contains hashed passwords to crack.
- John uses the wordlist file to attempt matching passwords.

2. To crack hashes without a wordlist, using brute force (incremental mode):

```
john --incremental /path/to/hashfile.txt
```

3. After starting, you can check the cracking status:

```
john --status
```

4. To show cracked passwords:

```
john --show /path/to/hashfile.txt
```

5. John supports custom rules that modify dictionary words (e.g., adding numbers or symbols) to increase cracking success.

John the Ripper can be run on many platforms including Unix, Linux, Windows, and macOS. It leverages multi-core CPUs and GPU
acceleration to increase cracking speed, making it widely used by system administrators, penetration testers, and forensics
professionals for password auditing, recovery, and security assessments.

In summary, John the Ripper is a versatile, powerful password cracking tool that helps identify weak passwords across various
hash types using dictionary and brute-force techniques, essential for improving security posture through proactive password
auditing and penetration testing.[1][3][4][7]

[1](https://jumpcloud.com/it-index/what-is-john-the-ripper) [2](https://www.openwall.com/john/)
[3](https://en.wikipedia.org/wiki/John_the_Ripper) [4](https://www.esecurityplanet.com/products/john-the-ripper/)
[5](https://www.youtube.com/watch?v=tJRz9j2REb4) [6](https://www.cs.tufts.edu/comp/116/archive/fall2013/tlubeck.pdf)
[7](https://www.kali.org/tools/john/) [8](https://hackviser.com/tactics/tools/john-the-ripper)
[9](https://publications.gc.ca/collections/collection_2018/rddc-drdc/D68-10-25-2018-eng.pdf)
