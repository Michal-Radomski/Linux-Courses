Nikto is an open-source, command-line web server vulnerability scanner included in Kali Linux. It scans web servers to
identify potential security issues such as dangerous files and scripts, outdated software versions, misconfigurations, and
common vulnerabilities like SQL Injection and Cross-Site Scripting (XSS). Nikto performs thorough checks of web server
configurations, CGI directories, and installed software, supporting both HTTP and HTTPS protocols. It can generate reports in
multiple formats (HTML, CSV, XML) and supports features like SSL scanning, proxy usage, and integration with other tools.

To use Nikto on Kali Linux:

1. Open a terminal.
2. Run `nikto -h` to display help and available options.
3. Perform a basic scan of a website by running:

```
nikto -h http://example.com
```

Replace `http://example.com` with your target URL. Nikto will then scan the web server and list discovered vulnerabilities
and security issues.

Nikto is designed for fast and comprehensive scans rather than stealth; web admins can detect its scans via server logs. It's
valuable for security professionals to identify weaknesses before launching specific attacks.

In summary, Nikto is a powerful web vulnerability scanner that helps security testers find and analyze vulnerabilities in web
servers efficiently by performing broad, detailed checks.[1][2][3][4][5]

[1](https://techarry.com/nikto-web-vulnerability-scanning-tool-in-kali-linux/)
[2](https://www.ivoidwarranties.tech/posts/pentesting-tuts/website-pentesting/nikto/)
[3](https://www.geeksforgeeks.org/ethical-hacking/what-is-nikto-and-its-usages/)
[4](https://armur.ai/tutorials/nikto/nikto/what_is_nikto/) [5](https://www.kali.org/tools/nikto/)
[6](https://labex.io/tutorials/kali-kali-vulnerability-scanning-with-nikto-552301)
[7](https://www.packtpub.com/de-it/learning/how-to-tutorials/implementing-web-application-vulnerability-scanners-with-kali-linux-tutorial)
[8](<https://en.wikipedia.org/wiki/Nikto_(vulnerability_scanner)>) [9](https://www.youtube.com/watch?v=xXUa3Xvxpvw)
