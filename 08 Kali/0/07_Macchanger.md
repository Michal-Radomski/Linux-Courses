Macchanger is a Linux utility used to view, change, or "spoof" the MAC address of a network interface. MAC addresses are
hardware identifiers baked into network devices, but macchanger allows you to temporarily modify them for privacy, testing,
or network management purposes.

### How to use macchanger:

1. **Install macchanger** on Ubuntu:

   ```
   sudo apt install macchanger
   ```

   During installation, you'll be asked if you want the MAC address to change automatically on interface startup. Choose
   based on your preference.

2. **Identify your network interface:**

   ```
   ip a
   ```

   Note the interface you want to change, e.g., `enp0s3`.

3. **View current MAC address:**
   ```
   sudo macchanger -s enp0s3
   ```
4. **Change to a random MAC address:**

   ```
   sudo macchanger -r enp0s3
   ```

   This assigns a new random MAC address to the specified interface.

5. **Change to a specific MAC address:**

   ```
   sudo macchanger -m 00:11:22:33:44:55 enp0s3
   ```

   Replace `00:11:22:33:44:55` with the desired MAC address.

6. **Bring the interface down and back up** before and after changing the MAC address:
   ```
   sudo ip link set enp0s3 down
   sudo macchanger -r enp0s3
   sudo ip link set enp0s3 up
   ```

Macchanger also supports setting MAC addresses matching specific vendors, which can be useful for masquerading as particular
device manufacturers.

In summary, macchanger is a powerful, simple command-line tool to control your network interface's MAC address on Linux,
commonly used for privacy, testing, or bypassing MAC-based access restrictions.[1][2][5]

[1](https://linuxconfig.org/change-mac-address-with-macchanger-linux-command)
[2](https://www.geeksforgeeks.org/linux-unix/how-to-change-the-mac-address-in-kali-linux-using-macchanger/)
[3](https://bitlaunch.io/blog/how-to-change-mac-address-on-windows-and-linux/)
[4](https://www.youtube.com/watch?v=uwpmw7rwFJw)
[5](https://vitux.com/how-to-change-the-mac-address-on-ubuntu-using-macchanger/) [6](https://www.kali.org/tools/macchanger/)
[7](https://wiki.archlinux.org/title/MAC_address_spoofing)
