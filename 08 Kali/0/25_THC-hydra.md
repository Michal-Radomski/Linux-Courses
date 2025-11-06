THC Hydra, commonly known as Hydra, is a fast and flexible open-source password-cracking tool used primarily for conducting
brute-force attacks against login credentials across a wide range of network protocols and services. It is widely used in
penetration testing and cybersecurity assessments to identify weak passwords and potential vulnerabilities in systems.

Key aspects of THC Hydra include:

- It supports many protocols such as SSH, FTP, HTTP, HTTPS, Telnet, SMB, databases, and more, making it highly versatile.
- Hydra attempts to authenticate by systematically trying combinations of usernames and passwords from provided lists
  (wordlists).
- It allows single user or multiple user targeting and can run multiple parallel tasks (threads) for faster cracking.
- Hydra is pre-installed in Kali Linux and can be used via command line with options to specify username lists, password
  lists, target protocols, ports, and threading.
- It is used by security professionals for legal, ethical penetration testing to evaluate password strength and secure
  systems.

Typical usage involves running Hydra with a target service, username(s), and password list to test for valid credentials, for
example, trying to brute force an SSH login.

Example command:

```
hydra -l user -P passwords.txt ssh://192.168.1.100
```

This command attempts to login as "user" using passwords from passwords.txt on the SSH server at 192.168.1.100.

Overall, THC Hydra is an essential tool for security experts to check the resilience of authentication mechanisms against
brute-force attacks in a controlled, authorized environment.[1][2][8]

[1](https://www.linkedin.com/pulse/unleashing-hydra-password-cracking-penetration-testing-tirthan-kiyada-oxzlf)
[2](https://www.kali.org/tools/hydra/)
[3](https://www.nitttrchd.ac.in/imee/Labmanuals/Password%20Cracking%20of%20Linux%20Operating%20System.pdf)
[4](https://www.netcomplex.pl/blog/czym-jest-hydra-jak-jej-uzywac) [5](https://github.com/vanhauser-thc/thc-hydra)
[6](https://hackviser.com/tactics/tools/hydra)
[7](https://www.oreilly.com/library/view/web-penetration-testing/9781788623377/0566ff94-ac44-4e27-8c53-fafe2db1693d.xhtml)
[8](https://tryhackme.com/room/hydra) [9](https://nostarch.com/download/PenetrationTesting_ch09.pdf)
[10](https://www.imperva.com/learn/application-security/brute-force-attack/)

## xHydra is for Ubuntu!

xHydra is a graphical user interface (GUI) frontend for the Hydra password cracker in Kali Linux, designed to make it easier
to conduct password brute-force attacks using Hydra's capabilities.

To add or install xHydra in Kali Linux, you generally need to install the hydra-gtk package, which includes the graphical
interface. This can be done via the package manager with:

```
sudo apt-get install hydra-gtk
```

Once installed, you can start xHydra by running the command:

```
xhydra
```

or by locating it through the Kali Linux menu under Password Attacks → Online Attacks → hydra-gtk (in older Kali versions).
In recent Kali releases, it may not appear in the menu by default but can be launched from the terminal.

If you want to ensure you have the latest version or compile from source, you can clone the THC Hydra GitHub repository and
build the tool manually, but for most users, installing the hydra-gtk package is sufficient and simplest.

This setup allows you to use Hydra's functionality via an intuitive GUI, specifying target services, usernames, password
lists, and attack parameters without command-line complexity.[1][3]

[1](https://www.packtpub.com/en-BE/product/kali-linux-2-windows-penetration-testing-9781782168492/chapter/6-dot-password-attacks-6/section/adding-a-tool-to-the-main-menu-in-kali-2x-ch06lvl1sec45)
[2](https://www.oreilly.com/library/view/kali-linux-2018/9781788997461/0f64bb56-00c3-448c-9f65-b45785485052.xhtml)
[3](https://www.geeksforgeeks.org/linux-unix/how-to-install-and-use-hydra-in-linux/)
[4](https://www.kali.org/tools/blue-hydra/) [5](https://www.kali.org/tools/hydra/)
[6](https://www.kali.org/docs/community/getting-help/) [7](https://www.kali.org/tools/ghidra/)
[8](https://www.youtube.com/watch?v=lTyVksdhddY) [9](https://labex.io/tutorials/hydra-install-and-verify-hydra-549917)
[10](https://www.hostinger.com/tutorials/kali-linux-tutorial)
