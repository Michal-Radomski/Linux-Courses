NFS (Network File System) is a protocol that allows Linux systems to share directories and files with others over a network,
enabling remote access to shared storage as if it were local.

### How to use NFS in Linux

#### 1. Set Up NFS Server

- Install the NFS server package:
  ```
  sudo apt install nfs-kernel-server
  ```
- Create a directory to share, for example:
  ```
  sudo mkdir -p /media/nfs
  ```
- Configure which directories to share by editing the `/etc/exports` file with entries specifying the shared path and client
  permissions, e.g.:
  ```
  /media/nfs 192.168.1.0/24(rw,sync,no_subtree_check)
  ```
- Activate the export and start the NFS server:
  ```
  sudo exportfs -a
  sudo systemctl enable --now nfs-server
  ```

#### 2. Connect to NFS from Client(s)

- Install the NFS client package:
  ```
  sudo apt install nfs-common
  ```
- Create a mount point:
  ```
  sudo mkdir -p /media/share
  ```
- Mount the NFS share temporarily with:
  ```
  sudo mount -t nfs4 <NFS-server-IP>:/media/nfs /media/share
  ```
- To mount it persistently across reboots, add an entry to `/etc/fstab`:
  ```
  <NFS-server-IP>:/media/nfs /media/share nfs4 defaults 0 0
  ```

This setup enables clients to access shared files over the network as if they were local files. Permissions and security can
be customized in the exports file and with firewall rules as needed.[1][2][4][6]

[1](https://linuxconfig.org/how-to-configure-nfs-on-linux) [2](https://www.redhat.com/en/blog/configure-nfs-linux)
[3](https://programming-in-team.github.io/Learning/Material/Lec18.pdf)
[4](https://www.netapp.com/learn/azure-anf-blg-linux-nfs-server-how-to-set-up-server-and-client/)
[5](https://akashrajpurohit.com/blog/setup-shareable-drive-with-nfs-in-linux/)
[6](https://www.digitalocean.com/community/tutorials/how-to-set-up-an-nfs-mount-on-ubuntu-20-04)
[7](https://docs.oracle.com/en/learn/create_nfs_linux/) [8](https://www.youtube.com/watch?v=zmDIfJtCKCk)
[9](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/7/html/storage_administration_guide/nfs-serverconfig)
[10](https://wiki.archlinux.org/title/NFS)
