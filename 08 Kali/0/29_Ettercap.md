Ettercap is a comprehensive open-source network security tool used primarily for man-in-the-middle (MITM) attacks on local
area networks (LANs). It enables network protocol analysis, traffic interception, and content filtering, making it a powerful
tool for security auditing and penetration testing. Ettercap can capture live network traffic, conduct ARP poisoning attacks
to intercept communications between devices, and analyze numerous network protocols, including encrypted ones.

### What is Ettercap?

- Ettercap works by placing the network interface in promiscuous mode and using ARP poisoning to impersonate devices on the
  network, effectively positioning itself between two hosts to capture, modify, or filter their traffic.
- It supports multiple modes like IP-based, MAC-based, ARP-based (full-duplex), and PublicARP-based (half-duplex) sniffing.
- Features include character injection into active connections, SSH1 and HTTPS sniffing, remote traffic analysis, DNS request
  hijacking, TCP/IP stack fingerprinting, and passive LAN scanning.
- Ettercap supports plugins, allowing additional functionalities and customized attacks.
- It can capture passwords and sensitive data from protocols such as Telnet, FTP, HTTP, SMB, MySQL, and more.
- It provides both a graphical user interface (GUI) and command-line interface for ease of use.

### How to Use Ettercap

1. **Start Ettercap:** Launch using the command line (`ettercap -G` for GUI or `ettercap` for CLI).
2. **Select Network Interface:** Choose the network interface to monitor.
3. **Scan for Hosts:** Use Ettercap's host scanning feature to identify devices on the LAN.
4. **Select Targets:** Choose one or two targets for ARP poisoning (usually the victim and the gateway).
5. **Start ARP Poisoning:** Initiate ARP poisoning to insert Ettercap into the communication path.
6. **Capture and Analyze Traffic:** Monitor captured data, filter for specific protocols, or inject content.
7. **Use Plugins or Filters:** Enhance functionality or tailor attacks using available plugins and filters.
8. **Stop and Save Results:** Terminate the session and save captured traffic for further analysis.

Ettercap is widely used by penetration testers and network security professionals to test network resilience, detect
vulnerabilities, and understand network behavior through active man-in-the-middle testing and protocol
dissection.[1][2][3][5]

[1](<https://en.wikipedia.org/wiki/Ettercap_(software)>) [2](https://www.bugcrowd.com/glossary/ettercap/)
[3](https://github.com/Ettercap/ettercap) [4](https://www.ettercap-project.org) [5](https://www.kali.org/tools/ettercap/)
[6](https://cs.slu.edu/~chambers/spring13/443/assignments/lab04.html)
[7](https://www.sciencedirect.com/topics/computer-science/network-scanning-tool)
