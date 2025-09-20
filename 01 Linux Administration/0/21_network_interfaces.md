Network interfaces in Linux represent hardware or virtual devices used for network communication. Linux uses a naming scheme
to identify these interfaces consistently.

### Naming Conventions

- Traditional naming used eth0, eth1, wlan0, etc., assigned dynamically by the kernel, which could change after reboot.
- Modern Linux uses Predictable Network Interface Names (PNIN) for stability, based on hardware location or MAC addresses.

### Predictable Names

- Prefixes indicate interface type:
  - **en**: Ethernet (wired network)
  - **wl**: Wireless LAN (Wi-Fi)
  - **ww**: Wireless WAN (mobile broadband)
  - **lo**: Loopback interface (local system communication)
- Suffixes indicate physical location like PCI bus and slot numbers:
  - Examples:
    - `enp3s0`: Ethernet on PCI bus 3, slot 0
    - `wlp0s20f3`: Wireless on PCI bus 0, slot 20, function 3
- This naming enhances consistency across reboots and hardware changes.

### Common Interfaces

- **lo**: Loopback interface for local machine communication, usually with IP 127.0.0.1.
- Physical Ethernet and wireless devices named using PNIN to avoid conflicts.

### Benefits of Predictable Naming

- Consistent interface names
- Avoids issues caused by dynamic ethX naming
- Easier network configuration and automation

Linux systems typically use udev and systemd to assign these names automatically, with configuration options to customize or
revert to classic naming if needed.

This naming scheme helps system administrators and scripts reliably identify interfaces across reboots and hardware
changes.[1][2][4][5][6]

[1](https://www.thomas-krenn.com/en/wiki/Predictable_Network_Interface_Names)
[2](https://documentation.nokia.com/outlook_jira_test/books/interfaces/linux-interface-nam-conventions.html)
[3](https://documentation.nokia.com/srlinux/22-11/SR_Linux_Book_Files/interfaces/linux_interface-ai9ep6mg5h.html)
[4](https://lenovopress.lenovo.com/lp2175-linux-network-naming-schemes)
[5](https://www.redhat.com/en/blog/network-interfaces-linux)
[6](https://en.wikipedia.org/wiki/Consistent_Network_Device_Naming)
[7](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/7/html/networking_guide/ch-consistent_network_device_naming)
[8](https://wiki.debian.org/NetworkInterfaceNames)
[9](https://man7.org/linux/man-pages/man7/systemd.net-naming-scheme.7.html)
