Wireshark is a popular open-source network protocol analyzer used to capture and inspect data packets traveling over a
network. It provides detailed insights into the packets, including source and destination IP addresses, protocols used,
packet size, and payload data, making it invaluable for network troubleshooting, security analysis, and understanding network
traffic behavior.

### What is Wireshark?

- Wireshark captures live network traffic by placing the network interface into promiscuous mode, allowing it to record all
  packets on the network segment, not just those addressed to the local machine.
- The captured data is stored in files (.pcap or .pcapng) for real-time or later analysis.
- Users can apply capture filters to limit which packets are recorded (e.g., only HTTP traffic or packets from a specific
  IP).
- After capture, display filters help focus on particular traffic types or conversations.
- Each packet can be examined in a summary list, a detailed protocol breakdown, and a raw hexadecimal data view.
- Wireshark supports protocol decoding, statistical analysis, and visualization like graphs.

### How to Use Wireshark

1. **Install Wireshark:** On Kali Linux, Wireshark can be installed via the package manager if not pre-installed.
2. **Starting a Capture:** Launch Wireshark and select the network interface to monitor.
3. **Capture Packets:** Click the start button to begin capturing live network traffic.
4. **Apply Filters:** Use capture filters (before capture) or display filters (after capture) to sift through the data
   efficiently.
5. **Analyze Packets:** Click on individual packets to see detailed protocol layers and raw data.
6. **Save and Export:** Capture files can be saved for further analysis or sharing.
7. **Use Cases:** Troubleshooting network issues, detecting suspicious network activity, learning protocol behavior, and
   forensic analysis.

Example of a display filter to show only HTTP traffic:

```
http
```

Wireshark’s intuitive graphical interface, powerful filtering capabilities, and protocol support make it an indispensable
tool for network administrators and cybersecurity professionals.

References and tutorials for deeper learning are widely available, including official documentation and video
guides.[1][2][3]

[1](https://www.geeksforgeeks.org/computer-networks/wireshark-packet-capturing-and-analyzing/)
[2](https://www.freecodecamp.org/news/use-wireshark-filters-to-analyze-network-traffic/)
[3](https://www.comparitech.com/net-admin/how-to-use-wireshark/) [4](https://www.youtube.com/watch?v=qTaOZrDnMzQ)
[5](https://www.wireshark.org/docs/wsug_html_chunked/ChapterIntroduction.html) [6](https://www.wireshark.org/docs/wsug_html/)
[7](https://www.varonis.com/blog/how-to-use-wireshark) [8](https://www.youtube.com/watch?v=95WbK95D0Xo)
[9](https://www.wireshark.org/learn)
