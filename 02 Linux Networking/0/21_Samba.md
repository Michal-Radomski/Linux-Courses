To configure Samba under Ubuntu, follow these steps:

1. Install Samba: Open a terminal and run:

   ```
   sudo apt update
   sudo apt install samba
   ```

   This installs the Samba package on your system.

2. Create a Shared Directory: Create the directory you want to share, for example:

   ```
   sudo mkdir -p /srv/samba/shared
   ```

   Set suitable permissions:

   ```
   sudo chmod -R 0777 /srv/samba/shared
   ```

   This permission allows all users to read and write in the shared directory.

3. Configure Samba: Edit the Samba configuration file `/etc/samba/smb.conf` with:

   ```
   sudo nano /etc/samba/smb.conf
   ```

   Add a share definition at the end of the file:

   ```
   [shared]
   path = /srv/samba/shared
   writable = yes
   guest ok = yes
   read only = no
   force user = nobody
   ```

   This setting allows anyone to access the shared directory without a password.

4. Restart Samba service: Apply the changes by restarting the Samba service:

   ```
   sudo systemctl restart smbd
   ```

5. Access the shared directory from other machines by using the server’s IP address in the file explorer, such as:
   ```
   \\server-ip\shared
   ```
   Replace `server-ip` with the actual IP address of your Samba server.

This setup creates a basic, publicly accessible Samba share on Ubuntu. More secure configurations can be applied by managing
users, permissions, and specific access control in Samba.[1][3][5][6]

[1](https://www.zentyal.com/news/linux-samba-server/)
[2](https://www.reddit.com/r/Ubuntu/comments/1fslvru/i_need_help_to_create_a_samba_server_in_ubuntu/)
[3](https://phoenixnap.com/kb/ubuntu-samba) [4](https://www.youtube.com/watch?v=y7esIzzkzSE)
[5](https://documentation.ubuntu.com/server/how-to/samba/file-server/)
[6](https://ubuntu.com/tutorials/install-and-configure-samba) [7](https://www.youtube.com/watch?v=2gW4rWhurUs)
[8](https://www.dedicatedcore.com/blog/install-samba-ubuntu/)
[9](https://forum.linuxconfig.org/t/how-to-configure-samba-server-share-on-ubuntu-20-04-focal-fossa-linux-linuxconfig-org/4048)

The smb and nmb services in Samba serve different but complementary roles:

- The smb service (controlled by smbd daemon) provides file sharing and printing services using the SMB protocol. It handles
  user authentication, resource locking, and data transfer to Windows clients and other SMB-enabled systems.

- The nmb service (controlled by nmbd daemon) handles NetBIOS name service requests. It is responsible for name resolution
  and browsing in SMB networks, allowing machines to discover each other by hostname in Windows Network Neighborhood-like
  environments using NetBIOS over IPv4.

In summary, smb/smbd handles the actual file and printer sharing services, while nmb/nmbd manages the network neighborhood
browsing and name resolution features in a Samba network setup. Both services typically come with the Samba package and are
essential for full SMB/CIFS functionality on a Linux Samba server.[1][2][3]

[1](https://docs.oracle.com/en/operating-systems/oracle-linux/8/samba/services_concept.html)
[2](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/5/html/deployment_guide/s1-samba-daemons)
[3](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/4/html/reference_guide/s1-samba-daemons)
[4](https://www.reddit.com/r/archlinux/comments/8fdcnh/psa_smbd_and_nmbd_have_been_renamed_to_smb_and/)
[5](https://learning.oreilly.com/library/view/using-samba-second/0596002564/re314.html)
[6](https://www.oreilly.com/openbook/samba/book/ch02_05.html)
[7](https://discuss.freedombox.org/t/nmbd-service-wont-start-samba-not-working/2752)
[8](https://dietpi.com/forum/t/samba-precisely-nmbd-slowing-down-boot-process-if-there-is-no-network/13761)

To change the name of a Linux computer in a network (its hostname), you can use one of the following common methods:

1. Using hostnamectl (recommended for modern systems with systemd):

   ```
   sudo hostnamectl set-hostname new-hostname
   ```

   Replace "new-hostname" with the desired computer name. This changes the hostname permanently.

2. Manually editing system files:

   - Edit `/etc/hostname` and replace the old hostname with the new one:
     ```
     sudo nano /etc/hostname
     ```
   - Then edit `/etc/hosts` and replace occurrences of the old hostname with the new one:
     ```
     sudo nano /etc/hosts
     ```
   - Save changes and reboot the system to apply.

3. Temporary hostname change (resets after reboot):
   ```
   sudo hostname new-hostname
   ```

After changing the hostname using any method, rebooting the system ensures the new name is fully applied across all network
services.

The hostname is the name your Linux computer uses to identify itself on a network, so changing it updates its network
identity.[1][2][4]

[1](https://cyberpanel.net/blog/linux-change-hostname) [2](https://www.cyberciti.biz/faq/ubuntu-change-hostname-command/)
[3](https://www.youtube.com/watch?v=27n88N0j-P0) [4](https://www.hostinger.com/tutorials/linux-change-hostname)
[5](https://www.redhat.com/en/blog/configure-hostname-linux)
[6](https://stackoverflow.com/questions/14636473/linux-change-the-hostname-in-the-cli)
[7](https://www.reddit.com/r/linuxquestions/comments/1fxj4lj/how_to_change_my_hostname_without_breaking_stuff/)
[8](https://www.redhat.com/es/blog/configure-hostname-linux) [9](https://docs.oracle.com/en/learn/ol-hostname-locale/)

In Samba configuration:

- `[print$]` is a special hidden share used to store printer drivers and related files for clients. It is typically a
  read-only share, and clients access it to download necessary printer drivers. The trailing `$` makes it a hidden share from
  normal browsing.

- `[printers]` is a special share that automatically represents all printers defined on the Samba server. It is used to share
  printers over the network, allowing clients to send print jobs. The `[printers]` share is marked as printable, one usually
  sets `printable = yes` to indicate it's for printing purposes.

In short, `[print$]` holds printer driver files for client installation (hidden share) while `[printers]` allows actual
printer sharing and printing over the network.[1][3]

[1](https://www.oreilly.com/openbook/samba/book/ch07_01.html) [2](https://wiki.hpc.uo.edu.cu/doku.php?id=print_server)
[3](https://doc.opensuse.org/documentation/leap/reference/html/book-reference/cha-samba.html)
[4](https://www.redhat.com/en/blog/samba-file-sharing)
