Fern Wifi Cracker is a wireless security auditing and attack software written in Python with a Qt GUI, designed to test the
security of wireless networks. It supports cracking and recovering WEP, WPA, and WPS keys, and runs various network-based
attacks on wireless or Ethernet networks.

### What is Fern?

- Fern is a GUI-based tool aimed at making wireless network penetration testing accessible and user-friendly.
- It integrates with tools like Aircrack-ng and Reaver to perform WEP/WPA/WPS cracking.
- Fern supports attacks such as WEP cracking using methods like fragmentation, chop-chop, ARP request replay, and WPS
  attacks.
- It can also perform WPA/WPA2 dictionary attacks alongside WPS vulnerability exploitation.
- Additional features include automatic saving of cracked keys, session hijacking, MAC address geolocation tracking, an
  internal man-in-the-middle engine, and brute-force attacks on protocols like HTTP and FTP.

### How to Use Fern?

1. Install and run Fern, often via command line with `fern-wifi-cracker` or through the Kali menu.
2. Scan for wireless access points in your vicinity.
3. Select a target access point to view details such as BSSID, channel, encryption type, and signal strength.
4. Choose an attack method, for example, a "regular" WPA brute force attack using a wordlist Fern provides or your custom
   list.
5. Fern sends deauthentication packets to disconnect clients so it can capture WPA handshakes or discover hidden ESSIDs.
6. Upon capturing necessary data, Fern attempts to crack the network password using the chosen attack technique.
7. It provides updates and saves cracked keys automatically in the database.

Fern simplifies wireless penetration testing by providing an easy-to-use GUI with many integrated features for attacking
Wi-Fi networks and analyzing security vulnerabilities. It is intended for authorized testing to identify and fix network
security flaws.[1][2][3]

[1](https://github.com/savio-code/fern-wifi-cracker) [2](https://laccei.org/LACCEI2022-BocaRaton/work_in_progress/WP676.pdf)
[3](https://www.oreilly.com/library/view/kali-linux-2018/9781789341768/2724a653-f219-4021-a226-c64f45b77934.xhtml)
[4](https://cejsh.icm.edu.pl/cejsh/element/bwmeta1.element.desklight-60891997-7f20-4acc-bda8-de4e8b4a3dac/c/KNUV_3_49_2016.114-134.pdf)
[5](https://www.infosecinstitute.com/resources/penetration-testing/kali-linux-top-8-tools-for-wireless-attacks/)
[6](https://plextrac.com/the-most-popular-penetration-testing-tools-this-year/)
[7](https://www.irjmets.com/upload_newfiles/irjmets70600019468/paper_file/irjmets70600019468.pdf)
[8](https://www.techtarget.com/searchsecurity/tip/Top-Kali-Linux-tools-and-how-to-use-them)
