Netstat is a command-line tool available on both Windows and Linux that displays network statistics, active connections,
listening ports, routing tables, and protocol-specific statistics. It helps in monitoring network activity, diagnosing
problems, and troubleshooting network configurations.

### Netstat on Linux:

- It is used to get an overview of all active network connections and socket statistics.
- Basic usage: `netstat`
- Common options:
  - `netstat -a` - Lists all ports and connections regardless of their state.
  - `netstat -at` - Lists all TCP connections.
  - `netstat -au` - Lists all UDP connections.
  - `netstat -l` - Lists only listening ports.
  - `netstat -lt` - Lists only listening TCP ports.
  - `netstat -lu` - Lists only listening UDP ports.
- Output includes protocol, receive/send queue sizes, local and foreign addresses, and connection state (e.g., ESTABLISHED,
  LISTENING).

Example of listing all listening TCP ports on Linux:

```
netstat -lt
```

### Netstat on Windows:

- Displays active TCP connections, ports on which the computer is listening, IP routing table, and Ethernet statistics.
- Shows protocol, local and foreign IP addresses and ports, connection states such as ESTABLISHED, LISTEN, or TIME_WAIT.
- Common parameters:
  - `-e` - Displays Ethernet statistics.
  - `-s` - Shows statistics by protocol.
  - `-n` - Displays addresses and port numbers in numeric form.
  - `-o` - Shows the process ID associated with each connection.
  - Can be combined, for example: `netstat -n -o` shows numeric addresses and process IDs.
- Can be set to refresh periodically, e.g., `netstat -o 5` updates every 5 seconds.

Example of displaying active TCP connections with process IDs every 5 seconds on Windows:

```
netstat -o 5
```

Both versions of netstat provide valuable insights into network connections and traffic for troubleshooting and monitoring
network activity.

[1](https://phoenixnap.com/kb/netstat-command)
[2](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/netstat)
[3](https://www.geeksforgeeks.org/linux-unix/netstat-command-linux/)
[4](https://petri.com/netstat-command-monitor-network-traffic/) [5](https://www.hostinger.com/tutorials/netstat-command)
[6](https://www.youtube.com/watch?v=bxFwpm4IobU) [7](https://www.redhat.com/en/blog/netstat)
[8](https://www.site24x7.com/learn/linux/netstat-command.html) [9](https://www.baeldung.com/linux/netstat-command-tutorial)
[10](https://www.lifewire.com/netstat-command-2618098)
