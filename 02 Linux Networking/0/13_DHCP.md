To install and manage a DHCP server in Linux, you typically use the ISC DHCP server, which is widely supported across Linux
distributions. Here's a basic guide to installing and configuring it:

## Installing the DHCP Server

- On Ubuntu/Debian-based distros, install the isc-dhcp-server package:
  ```bash
  sudo apt update
  sudo apt install isc-dhcp-server
  ```
- On Red Hat, Fedora, CentOS, Rocky Linux, use:
  ```bash
  sudo dnf install dhcp-server
  ```

## Configuring the DHCP Server

- The main configuration file is `/etc/dhcp/dhcpd.conf`.
- Define the subnet and IP address range you want to serve. For example:
  ```
  subnet 192.168.1.0 netmask 255.255.255.0 {
    range 192.168.1.10 192.168.1.50;
    option routers 192.168.1.1;
    option domain-name-servers 8.8.8.8, 8.8.4.4;
    option domain-name "example.com";
  }
  ```
- Specify which network interfaces the DHCP server should listen on by editing `/etc/default/isc-dhcp-server` and setting:
  ```
  INTERFACES="eth0"
  ```

## Starting and Enabling the DHCP Service

- Start the DHCP server:
  ```bash
  sudo systemctl start isc-dhcp-server
  ```
- Enable it to start on boot:
  ```bash
  sudo systemctl enable isc-dhcp-server
  ```
- Check the service status:
  ```bash
  sudo systemctl status isc-dhcp-server
  ```

## Verifying DHCP Server Operation

- Connect a client device to the network.
- Ensure it receives an IP address within the specified range.
- On Linux clients, check with `ip addr show`.
- On Windows, check with `ipconfig`.

This setup allows your Linux server to dynamically assign IP addresses and network settings to clients on your
network.[1][2][3][4]

[1](https://www.zentyal.com/news/what-is-dhcp-how-to-configure-dhcp-server/)
[2](https://linuxconfig.org/what-is-dhcp-and-how-to-configure-dhcp-server-in-linux)
[3](https://www.baeldung.com/linux/install-configure-dhcp-server)
[4](https://ciq.com/blog/how-to-install-and-configure-a-dhcp-server-on-rocky-linux)
[5](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/7/html/networking_guide/sec-dhcp-configuring-server)
[6](https://netadminpro.pl/instalacja-serwera-dhcp-na-ubuntu-server/)
[7](https://documentation.ubuntu.com/server/how-to/networking/install-isc-dhcp-server/)
[8](https://www.youtube.com/watch?v=cweLHtl2s84)
