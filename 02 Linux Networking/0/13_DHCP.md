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

To do IP reservation based on MAC address in a DHCP server on Linux, you typically edit the DHCP server configuration file
(usually dhcpd.conf) and add a host entry specifying the client's MAC address and the fixed IP address to be assigned to that
MAC address.

Here is the summarized procedure:

1. Identify the MAC address of the DHCP client’s network interface.
2. Edit the DHCP server configuration file. For Debian/Ubuntu, it's usually /etc/dhcp/dhcpd.conf; for RPM-based distros like
   Red Hat/CentOS, it is also commonly /etc/dhcp/dhcpd.conf.
3. Add a host declaration with a name, hardware ethernet (MAC), and fixed-address (desired IP):
   ```
   host clientname {
       hardware ethernet XX:XX:XX:XX:XX:XX;
       fixed-address 192.168.1.100;
   }
   ```
4. Save the configuration file.
5. Restart the DHCP server service to apply changes (e.g., `sudo systemctl restart isc-dhcp-server` or
   `sudo service dhcpd restart`).
6. Restart the network or DHCP client on the client machine to get the reserved IP.

This method ensures the DHCP server always assigns the same IP address to the client based on its MAC address.

This works generally for ISC DHCP server implementations on Linux distributions like Ubuntu, Debian, Fedora, CentOS, and Red
Hat. For systems using Netplan or DHCPv6, additional configuration might be required for the client to properly identify the
MAC address for reservations.[1][2][3][5]

If desired, I can provide a detailed example configuration or instructions specific to a Linux distribution.

[1](https://www.reddit.com/r/sysadmin/comments/17zld2y/iscdhcpserver6_dhcpreservation_with_macaddress/)
[2](https://servercomputing.blogspot.com/2012/02/reserve-ip-address-in-dhcp-server-linux.html)
[3](https://community.meraki.com/t5/Security-SD-WAN/DHCP-Reservations-not-working-for-Ubuntu/m-p/257390)
[4](https://www.reddit.com/r/OPNsenseFirewall/comments/17dt2b5/mac_based_dhcp_reservation_before_plugging_device/)
[5](<https://wiki.centos.org/TipsAndTricks(2f)EmulateFixedAddressByDHCP.html>)
[6](https://www.redhat.com/en/blog/static-dynamic-ip-2)
