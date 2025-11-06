Medusa is a speedy, massively parallel, modular login brute-forcer used in Kali Linux and other penetration testing contexts.
It is designed to perform fast brute-force attacks to test login credentials across many protocols allowing remote
authentication. Medusa supports multi-threading, allowing brute-force attempts on multiple hosts, users, or passwords
concurrently, which significantly speeds up testing.

It supports numerous protocols including FTP, SSH, HTTP, RDP, MySQL, and more. Its modular design means new services can be
added easily without modifying the core application. Users can specify targets, usernames, and passwords as either single
entries or from files, allowing flexible and efficient attack configurations.

Common use involves specifying the target host with `-h`, username(s) with `-u` or `-U`, password(s) with `-p` or `-P`, and
the module (protocol) with `-M`. You can also set the number of parallel threads with `-t` for faster execution.

Example usage for brute-forcing SSH:

```
medusa -h 192.168.1.100 -u admin -P /usr/share/wordlists/passwords.txt -M ssh -t 10
```

This command attempts to authenticate the user "admin" on host 192.168.1.100 using passwords from the file with 10 parallel
threads.

Medusa is a powerful tool used by security professionals to identify weak passwords and improve system security by simulating
credential cracking attacks in authorized environments.[2][3]

[1](https://www.oreilly.com/library/view/penetration-testing-bootcamp/9781787288744/bea22881-a7d3-4dbe-a9c5-fe8fa7d42fdb.xhtml)
[2](https://www.kali.org/tools/medusa/)
[3](https://www.freecodecamp.org/news/how-to-use-medusa-for-fast-multi-protocol-brute-force-attacks-security-tutorial/)
[4](https://sciendo.com/pdf/10.21307/ijanmc-2019-045)
[5](https://www.nitttrchd.ac.in/imee/Labmanuals/Password%20Cracking%20of%20Linux%20Operating%20System.pdf)
[6](https://papers.ssrn.com/sol3/Delivery.cfm/SSRN_ID3564447_code3635775.pdf?abstractid=3564447&mirid=1)
[7](https://github.com/jmk-foofus/medusa)
[8](<https://cybersecurity.fsu.edu/club/wp-content/studentfiles/LIS4938.2014sp/Borrero%20(2014)%20Cracking%20your%20password.pdf>)
[9](https://www.linkedin.com/posts/stratosally_password-cracking-with-medusa-in-linux-activity-7236967334458834944-mIxw)
[10](https://www.scribd.com/document/849717755/medusa-kali)
