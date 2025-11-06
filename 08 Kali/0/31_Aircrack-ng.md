Aircrack-ng is a comprehensive suite of tools used for assessing the security of Wi-Fi networks by capturing and analyzing
wireless packets to recover encryption keys, specifically targeting WEP and WPA/WPA2-PSK secured networks. It supports packet
capturing, injecting packets to generate traffic, and performing cryptanalysis attacks to crack WEP and WPA keys once enough
data is gathered.

### What is Aircrack-ng?

- It is an open-source Wi-Fi security tool that includes various utilities like Airmon-ng (to enable monitor mode on wireless
  cards), Airodump-ng (to capture wireless packets), Aireplay-ng (to inject packets and perform attacks), and Aircrack-ng (to
  crack encryption keys).
- It works with any wireless network interface capable of raw monitoring mode and supports capturing traffic on 802.11a/b/g
  networks.
- Aircrack-ng can crack WEP keys using attacks like FMS, PTW, and dictionary attacks, and can also attack WPA/WPA2 keys using
  dictionary attacks based on captured handshakes.
- It cannot directly crack WPA3 but may assist in attacks through downgrade methods.

### How to Use Aircrack-ng

1. **Put Wireless Interface in Monitor Mode:** Use `airmon-ng` to enable monitor mode on your wireless card.
2. **Capture Packets:** Use `airodump-ng` to capture packets and gather data such as initialization vectors (IVs) for WEP or
   WPA handshake packets.
3. **Generate Traffic:** Use `aireplay-ng` to inject packets or perform deauthentication attacks to force clients to
   reconnect and capture handshakes.
4. **Crack the Key:** Use `aircrack-ng` with the captured data and a wordlist to attempt key recovery.

Example command flow:

```
airmon-ng start wlan0            # Enable monitor mode on wlan0
airodump-ng wlan0mon             # Capture packets on the interface
aireplay-ng --deauth 10 -a <AP MAC> -c <Client MAC> wlan0mon   # Force client handshake
aircrack-ng -w wordlist.txt -b <AP MAC> capturefile.cap        # Crack key from capture
```

Aircrack-ng is widely used in security auditing and penetration testing for wireless networks to test robustness and identify
vulnerabilities in Wi-Fi encryption protocols.[1][2][3]

[1](https://en.wikipedia.org/wiki/Aircrack-ng) [2](https://www.sciencedirect.com/topics/computer-science/aircrack-ng)
[3](https://www.aircrack-ng.org/doku.php?id=main) [4](https://cyberhub.sa/posts/5658) [5](https://www.aircrack-ng.org)
[6](https://taylorandfrancis.com/knowledge/Engineering_and_technology/Computer_science/Aircrack-ng/)
[7](https://nccs.gov.in/public/events/Wi-Fi_Network_Analysis_Tools_v1.0.pdf)
[8](https://sharkfest.wireshark.org/retrospective/sfus/presentations12/MB-6_Introduction_to_WiFi_Security_and_Aircrack-ng.pdf)
[9](https://ieeexplore.ieee.org/document/9074350/)
