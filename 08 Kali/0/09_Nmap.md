Nmap (Network Mapper) is a free, open-source network scanning tool widely used for network discovery and security auditing.
It works by sending packets to target devices on a network and analyzing the responses to identify hosts, open ports, running
services, and operating system details.

### Key features of Nmap:

- Fast and customizable port scanning to find open ports.
- Host discovery to identify active devices on a network.
- Service and version detection to determine applications and their versions running on open ports.
- OS fingerprinting to detect the operating system and device types based on network behavior.
- Scriptable interaction using the Nmap Scripting Engine (NSE) for advanced service detection and vulnerability scanning.
- Output in multiple formats including interactive, XML, and grepable for easy processing.

### Basic usage:

- Scan a host or network for open ports:
  ```
  nmap <target>
  ```
- Perform a fast scan:
  ```
  nmap -F <target>
  ```
- Detect service versions and OS:
  ```
  nmap -sV -O <target>
  ```
- Use a script for advanced scanning:
  ```
  nmap --script=<script-name> <target>
  ```

### Typical use cases:

- Network inventory and mapping.
- Security auditing by identifying open services and vulnerabilities.
- Monitoring network uptime and managing assets.

Nmap is cross-platform but is especially popular on Linux. It is highly extensible and has numerous options for customized
and automated network reconnaissance and diagnostics.

In summary, Nmap is a versatile and powerful tool for understanding network infrastructure, finding open ports, detecting
services and OS, and supporting security assessments.[1][4][6][8]

[1](https://en.wikipedia.org/wiki/Nmap) [2](https://nmap.org/book/toc.html) [3](https://nmap.org)
[4](https://www.geeksforgeeks.org/linux-unix/what-is-nmap-a-comprehensive-guide-for-network-mapping/)
[5](https://www.vaadata.com/blog/nmap-the-tool-for-mapping-and-assessing-network-security/)
[6](https://nmap.org/book/man.html) [7](https://hackviser.com/tactics/tools/nmap)
[8](https://www.webasha.com/blog/how-to-use-nmap-for-network-scanning-a-beginners-guide)

To scan an entire LAN starting from 192.168.1.1 using Nmap, you typically scan the whole subnet. The common subnet for many
home networks is 192.168.1.0/24, which covers IP addresses from 192.168.1.1 to 192.168.1.254.

### Command to scan all active hosts in the subnet without port scanning (ping scan):

```bash
nmap -sn 192.168.1.0/24
```

This command sends ping requests to each IP in the range and reports which hosts are up.

### Command to scan all hosts and detect open ports:

```bash
sudo nmap 192.168.1.0/24
```

Running with sudo is advised for more accurate scanning with OS detection or deeper probes.

Alternatively, you can use a wildcard:

```bash
sudo nmap 192.168.1.*
```

### What you get:

- List of devices active on the network.
- Open ports and services (if port scanning is enabled).
- Some OS and device type detection if enabled.

This method is efficient for inventorying devices on your local network starting from 192.168.1.1 subnet.[1][3][4]

[1](https://www.youtube.com/watch?v=2JFV2OBXotU)
[2](https://www.recordedfuture.com/threat-intelligence-101/tools-and-techniques/nmap-commands)
[3](https://stackoverflow.com/questions/13669585/how-to-get-a-list-of-all-valid-ip-addresses-in-a-local-network)
[4](https://www.redhat.com/en/blog/quick-nmap-inventory) [5](https://nmap.org/book/man-target-specification.html)
[6](https://nmap.org/book/man-host-discovery.html)
