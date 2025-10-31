To use tcpdump in Ubuntu, first you need to install it if it's not already installed by running:

```bash
sudo apt-get update
sudo apt-get install tcpdump
```

Once installed, you can start capturing network packets with the command:

```bash
sudo tcpdump
```

By default, this captures packets on the default network interface in real time. To specify a specific network interface, use
the `-i` option, for example:

```bash
sudo tcpdump -i eth0
```

You can capture only a limited number of packets using the `-c` option and save the output to a file with the `-w` option:

```bash
sudo tcpdump -c 10 -i eth0
sudo tcpdump -w capture.pcap -i eth0
```

To read packets from a saved file, use:

```bash
sudo tcpdump -r capture.pcap
```

Tcpdump supports filtering packets by protocols, ports, or IP addresses, such as capturing only TCP packets or traffic for a
specific host:

```bash
sudo tcpdump -i eth0 tcp
sudo tcpdump -i eth0 host 192.168.1.1
```

Use `sudo tcpdump -D` to list available interfaces. When capturing, interrupt with Ctrl+C.

Tcpdump is a powerful network packet analyzer tool useful for diagnosing network issues and monitoring traffic on
Ubuntu.[1][2][3][4]

[1](https://www.techtarget.com/searchnetworking/tutorial/How-to-capture-and-analyze-traffic-with-tcpdump)
[2](https://masterdaweb.com/en/blog/how-to-use-tcpdump-on-debian-ubuntu-and-centos)
[3](https://linuxconfig.org/how-to-use-tcpdump-command-on-linux)
[4](https://www.geeksforgeeks.org/linux-unix/tcpdump-command-in-linux-with-examples/)
[5](https://manpages.ubuntu.com/manpages/jammy/man8/tcpdump.8.html)
[6](https://opensource.com/article/18/10/introduction-tcpdump) [7](https://www.youtube.com/watch?v=KTvuyN1QGqs)
[8](https://linuxize.com/post/tcpdump-command-in-linux/)
