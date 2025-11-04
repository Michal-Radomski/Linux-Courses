To configure a VPN on Ubuntu, you can use either the built-in Network Manager for GUI-based setup or install and configure a
VPN client like OpenVPN for a manual setup.

### GUI Setup with Network Manager

1. Open the **Settings** app and go to the **Network** section.
2. Under VPN, click the **+** button to add a new VPN connection.
3. Choose your VPN type (e.g., OpenVPN, PPTP, WireGuard).
4. Fill in the required details like VPN server address, authentication type, username, and password.
5. Save and toggle the VPN connection on to start using it.

### Manual Setup with OpenVPN (Command Line)

1. Install OpenVPN:
   ```
   sudo apt update
   sudo apt install openvpn
   ```
2. Obtain the VPN configuration files (.ovpn) from your VPN provider.
3. Connect to the VPN using:
   ```
   sudo openvpn --config /path/to/your/config.ovpn
   ```
4. Optionally, you can configure OpenVPN to start automatically or as a service.

### Additional Notes

- For OpenVPN, your config files typically include server info, certificates, keys, and settings.
- The Network Manager also supports importing .ovpn files for easier setup.
- Ensure you have appropriate permissions (often root or sudo) to configure VPN.
- Ubuntu supports multiple VPN protocols including OpenVPN, WireGuard, PPTP, and L2TP/IPSec.

This approach gives you flexibility between graphical and command line-based configuration for VPN on Ubuntu depending on
your needs.[1][3][7]

[1](https://www.digitalocean.com/community/tutorials/how-to-set-up-and-configure-an-openvpn-server-on-ubuntu-20-04)
[2](https://documentation.ubuntu.com/server/how-to/security/install-openvpn/)
[3](https://help.ubuntu.com/stable/ubuntu-help/net-vpn-connect.html.en)
[4](https://dsk.ifj.edu.pl/guides/new/palo_alto/VPN%20Ubuntu%20%5BENG%5D.pdf)
[5](https://www.youtube.com/watch?v=JX9JJbroEDE)
[6](https://documentation.ubuntu.com/core/explanation/system-snaps/network-manager/how-to-guides/configure-vpn-connections/)
[7](https://si.tecnico.ulisboa.pt/en/servicos/redes-e-conetividade/vpn/configuracao-vpn-em-linux-ubuntu-20-04-lts/)
[8](https://support.nordvpn.com/hc/pl/articles/20309534114193-Configuring-Linux-Ubuntu-setup-Standard-User)
[9](https://ubuntu.com/blog/setup-your-own-vpn-server)
