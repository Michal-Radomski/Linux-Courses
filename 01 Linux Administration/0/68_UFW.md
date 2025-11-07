The equivalent of **firewalld** in Ubuntu is **UFW** (Uncomplicated Firewall).

- **UFW** is the default firewall management tool on Ubuntu and Debian-based systems, designed to simplify managing iptables
  or nftables firewall rules.
- While **firewalld**, commonly used on Red Hat-based systems, provides a dynamic and zone-based firewall approach, UFW
  offers a more straightforward, rule-based interface aimed at ease of use.
- UFW supports essential firewall features like allowing/blocking ports, IPs, and protocols, and comes with a simpler syntax
  suitable for typical host-based firewall needs.
- Both tools operate on top of iptables or nftables but have different configuration styles and complexity levels.
- Ubuntu also offers a graphical frontend to UFW called **GUFW** for easier GUI-based management.

In summary: | Feature | firewalld (RHEL/Fedora) | UFW (Ubuntu/Debian) |
|----------------|------------------------------------------|----------------------------------| | Default on | RHEL, Fedora,
CentOS | Ubuntu, Debian | | Configuration | Dynamic, zone-based | Static, rule-based | | Complexity | More flexible, complex
| Simple, user-friendly | | GUI frontend | firewall-config, Cockpit | GUFW | | Use case | Multi-interface, multi-zone
environments | Basic host firewalling |

Avoid running both on the same system as they can conflict.

Thus, **UFW** is the recommended default firewall solution on Ubuntu, serving the role that **firewalld** plays on Red
Hat-based distributions.[1][2][3]

[1](https://www.digitalocean.com/community/tutorials/ufw-essentials-common-firewall-rules-and-commands)
[2](https://www.ctrl.blog/entry/ufw-vs-firewalld.html) [3](https://www.tecmint.com/manage-firewalld-and-ufw-on-linux/)
[4](https://www.reddit.com/r/linuxquestions/comments/upq14r/ufw_or_firewalld/)
[5](https://community.learnlinux.tv/t/ufw-or-firewalld/3311)
[6](https://wladcysieci.pl/2022/08/04/firewalld-uruchamiamy-prosty-firewall-w-systemie-centos-ubuntu/)
[7](https://documentation.ubuntu.com/server/how-to/security/firewalls/)
[8](https://www.pluralsight.com/resources/blog/software-development/linux-firewall-administration)

To check the status of UFW (Uncomplicated Firewall) on Ubuntu, use the following command:

```bash
sudo ufw status
```

This will show whether the firewall is active or inactive and list the basic rules currently enforced.

For more detailed information, including logging status, default policies, and active rules, use the verbose option:

```bash
sudo ufw status verbose
```

This command provides a comprehensive overview of the firewall's current state, such as:

- Whether UFW is active or inactive
- Logging level
- Default policies (incoming, outgoing)
- Explicit rules allowing or denying specific ports or services

These commands require superuser privileges (`sudo`) to run and are the standard way to monitor UFW's operational status on
Ubuntu systems.[1][2][3]

[1](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-with-ufw-on-ubuntu)
[2](https://serverspace.io/support/help/basic-commands-ufw/) [3](https://help.ubuntu.com/community/UFW)
[4](https://linuxconfig.org/how-to-enable-disable-firewall-on-ubuntu-22-04-lts-jammy-jellyfish-linux)
[5](https://www.dedicatedcore.com/blog/enable-disable-ufw-firewall-ubuntu/)
[6](https://www.cyberciti.biz/faq/how-to-list-ufw-firewall-rules-on-linux/)
[7](https://www.hostinger.com/tutorials/how-to-configure-firewall-on-ubuntu-using-ufw)
[8](https://documentation.ubuntu.com/server/how-to/security/firewalls/)
