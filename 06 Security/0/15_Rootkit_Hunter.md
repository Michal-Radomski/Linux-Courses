Rootkit Hunter (rkhunter) is an open-source security tool designed to scan Linux systems for rootkits, backdoors, and other
possible security threats. Here's how you can install and use it on Ubuntu:

### Installation:

1. Update your system package list:
   ```
   sudo apt update
   sudo apt upgrade
   ```
2. Install rkhunter from Ubuntu's official repository:
   ```
   sudo apt install rkhunter
   ```
3. During installation, you'll be prompted to configure the package — select "Local only" for mail configuration and provide
   the local email when asked.

### Configuration:

- Edit the main configuration file to enable mirror updates and disable web commands:
  ```
  sudo nano /etc/rkhunter.conf
  ```
  Set:
  ```
  UPDATE_MIRRORS=1
  MIRRORS_MODE=0
  WEB_CMD=""
  ```
- Set up automatic daily scans and database updates by editing:
  ```
  sudo nano /etc/default/rkhunter
  ```
  Enable:
  ```
  CRON_DAILY_RUN="true"
  CRON_DB_UPDATE="true"
  APT_AUTOGEN="true"
  ```
- Verify the configuration for errors:
  ```
  sudo rkhunter -C
  ```

### Usage:

- Update rkhunter's data files:
  ```
  sudo rkhunter --update
  ```
- Run a system scan:
  ```
  sudo rkhunter --check
  ```
- To view detailed reports, check the log file `/var/log/rkhunter.log`.

Rkhunter compares hashes of system files with known good hashes, scans for suspicious files, wrong permissions, hidden files,
and suspicious strings indicative of compromises. This tool helps maintain system integrity and security by identifying
potential threats early.[1][2][3]

In summary, installing Rootkit Hunter on Ubuntu involves updating your package list, installing the package, configuring it
for updates and daily scans, and using commands to update definitions and scan the system to detect rootkits and related
threats.

[1](https://utho.com/docs/linux/ubuntu/how-to-install-rkhunter-on-ubuntu-22-04/)
[2](https://tecadmin.net/how-to-install-rkhunter-on-ubuntu/)
[3](https://www.atlantic.net/dedicated-server-hosting/detect-linux-security-holes-and-rootkits-with-rkhunter-on-ubuntu/)
[4](https://github.com/installation/rkhunter)
[5](https://www.ulos.pl/rkhunter-rootkit-hunter-skaner-zlosliwego-oprogramowania)
[6](https://awhost.pl/baza-wiedzy/instalacja-oprogramowania-rkhunter-rootkit-hunter-na-systemie-debian-ubuntu/)
[7](https://www.webhi.com/how-to/how-to-install-and-configure-rootkit-hunter-on-ubuntu-debian/)
[8](https://help.ubuntu.com/community/RKhunter) [9](https://www.scaleway.com/en/docs/tutorials/install-rkhunter/)
