Here is a summary of essential Nmap commands and how to perform scans:

Basic Scan:

- Command: `nmap <target>`
- Example: `nmap 1.1.1.1` or `nmap example.com`
- Description: Performs a basic scan to discover open ports on the specified IP or hostname.[1]

Ping Scan:

- Command: `nmap -sn <target>`
- Example: `nmap -sn 192.168.5.0/24`
- Description: Detects which hosts are alive on a network by sending ping requests without port scanning.[1]

Port Scan Specific or Range:

- Command: `nmap -p <port(s)> <target>`
- Examples:
  - Scan specific ports: `nmap -p 80,443 8.8.8.8`
  - Scan port range: `nmap -p 1-65535 localhost`
- Description: Scans specific ports or ranges of ports instead of default common ports.[2][1]

Scanning Multiple Targets:

- Scan multiple IPs: `nmap 192.168.1.1 192.168.1.2`
- Scan IP range: `nmap 192.168.1.1-254` or `nmap 192.168.1.0/24`
- Exclude hosts: `nmap 192.168.1.0/24 --exclude 192.168.1.10,192.168.1.20`.[2]

Timing and Performance Controls:

- Various timing templates control scan speed and stealthiness, e.g.,
  - `-T0` paranoid (slowest, stealthy)
  - `-T3` aggressive (faster)
  - `-T4` insane (fastest, likely to be detected)
- Command example: `nmap -T4 <target>`.[3]

Other Useful Flags:

- Skip host discovery (assume host is alive): `-Pn`
- Disable DNS resolution: `-n`
- Perform only host discovery (no port scan): `-sn`
- Randomize target order: `-r`
- Limit sending rate: `--max-rate <number>`
- Packet trace for debugging: `--packet-trace`.[3]

Common Scan Techniques:

- TCP SYN scan: `-sS`
- UDP scan: `-sU`
- TCP Connect scan: `-sT`
- Idle scan: `-sI <zombie host>`
- TCP Null, FIN, Xmas scans: `-sN`, `-sF`, `-sX`.[4]

Scanning Steps Summary:

1. Choose target(s) - single IP, hostnames, ranges, or files.
2. Choose scan type - ping, TCP SYN, UDP, or others.
3. Specify ports to scan or range.
4. Adjust timing and performance options as needed.
5. Run scan and analyze output to identify open ports and services.

This summary covers the main Nmap commands and scanning approaches to get started with network exploration and security
auditing.[4][1][2][3]

[1](https://www.recordedfuture.com/threat-intelligence-101/tools-and-techniques/nmap-commands)
[2](https://netlas.io/blog/nmap_commands/) [3](https://codelivly.com/nmap-cheat-sheet/)
[4](https://www.hackthebox.com/blog/nmap-commands) [5](https://nmap.org/book/man-briefoptions.html)
[6](https://nmap.org/book/man.html) [7](https://www.stationx.net/nmap-cheat-sheet/)
[8](https://hackertarget.com/nmap-tutorial/) [9](https://nmap.org/nsedoc/scripts/creds-summary.html)
[10](https://zerotomastery.io/cheatsheets/nmap-cheat-sheet/)
