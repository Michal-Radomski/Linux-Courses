TCP flags are control bits used within the TCP header to manage and coordinate the state of a TCP connection, indicating
actions such as connection establishment, data transfer, or termination.[1][2][4]

### Main TCP Flags and Their Functions

- **SYN (Synchronize)**: Initiates a connection by starting the three-way handshake. It signals the start of a new
  session.[2][4][1]

- **ACK (Acknowledgment)**: Confirms the receipt of data. It is used throughout the connection to acknowledge received
  packets.[4][1][2]

- **FIN (Finish)**: Gracefully terminates a connection in the four-way handshake process. When one side sends FIN, it
  indicates no more data will be sent.[1][2][4]

- **RST (Reset)**: Abruptly terminates a connection, often in response to errors or unexpected packets, forcing the
  termination of the session.[2][4][1]

- **URG (Urgent)**: Indicates that the packet contains urgent data that should be prioritized and processed
  immediately.[4][1][2]

- **PSH (Push)**: Requests immediate delivery of data to the application, bypassing buffer delays, useful in real-time
  applications.[7][1][2][4]

### Additional Flags

- **CWR (Congestion Window Reduced)**: Used to indicate congestion control information, specifically that the sender has
  reduced its transmission rate due to network congestion.[4]

- **ECE (ECN Echo)**: Indicates ECN capability and congestion notification, helping manage network traffic efficiently.[4]

- **NS (Nonce Sum, experimental)**: An experimental flag aiming to protect against packet concealment.[1]

### Summary

Each flag represents a specific control function essential for establishing, maintaining, or closing a TCP connection,
enabling reliable and ordered data transfer over networks.[3][5][4]

[1](https://www.keycdn.com/support/tcp-flags) [2](https://ipcisco.com/lesson/tcp-header-tcp-flags/)
[3](https://www.geeksforgeeks.org/computer-networks/tcp-flags/) [4](https://www.noction.com/blog/tcp-flags)
[5](https://www.site24x7.com/learn/linux/tcp-flags.html) [6](https://en.wikipedia.org/wiki/Transmission_Control_Protocol)
[7](https://orhanergun.net/understanding-tcp-psh-packet-flag)
[8](https://www.webasha.com/blog/what-are-tcp-communication-flags-understanding-tcp-flags-in-networking-scanning)
[9](https://networklessons.com/ip-routing/tcp-header)
