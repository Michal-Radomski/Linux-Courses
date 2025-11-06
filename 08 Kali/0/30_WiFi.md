WEP, WPA, WPA2, WPA3, and PSK are all related to Wi-Fi security protocols, evolving over time to provide stronger protection
for wireless networks:

### WEP (Wired Equivalent Privacy)

- WEP was the first Wi-Fi security protocol designed to provide encryption for wireless networks.
- It uses RC4 stream cipher and static keys (40 or 104-bit).
- WEP has many vulnerabilities including weak initialization vectors and easily guessable keys, making it insecure and
  obsolete.
- It is strongly advised not to use WEP in modern networks due to its ease of cracking.[1][2][5]

### WPA (Wi-Fi Protected Access)

- WPA was introduced as a temporary improvement over WEP while WPA2 was under development.
- It uses TKIP (Temporal Key Integrity Protocol) for better encryption than WEP but still has weaknesses.
- WPA was an important step but is now considered outdated and less secure than later protocols.[2][5][1]

### WPA2

- WPA2 replaced WPA and became the standard for many years; it uses AES (Advanced Encryption Standard) with CCMP as the
  encryption protocol.
- Provides significantly stronger security with 128-bit encryption.
- Still widely used but vulnerable to certain attacks like KRACK (Key Reinstallation Attacks).
- Supports both Personal (PSK) and Enterprise authentication modes.[3][1][2]

### WPA3

- WPA3 is the latest Wi-Fi security standard released in 2018.
- Introduces stronger encryption with 192-bit keys for enterprise and enhanced 128-bit encryption for personal use.
- Uses the Simultaneous Authentication of Equals (SAE) protocol replacing the PSK four-way handshake, protecting against
  offline dictionary and brute-force attacks.
- Improves security for open networks via Opportunistic Wireless Encryption (OWE).
- WPA3 enhances protection on public Wi-Fi and fixes vulnerabilities found in WPA2 but may have compatibility issues with
  older devices.[4][1][2][3]

### PSK (Pre-Shared Key)

- PSK is a shared password or passphrase used for authenticating devices on WPA/WPA2 Personal (and WPA3 Personal) networks.
- The same key is configured on both the access point and the client devices.
- It is simpler to set up and intended primarily for home and small office networks.
- PSK's security is dependent on the strength and secrecy of the shared password.[1][2]

### Summary

| Protocol | Year Introduced | Encryption Method | Security Level                 | Notes                              |
| -------- | --------------- | ----------------- | ------------------------------ | ---------------------------------- |
| WEP      | Late 1990s      | RC4 (weak)        | Very Low                       | Obsolete, insecure                 |
| WPA      | Early 2000s     | TKIP              | Low-Medium                     | Transitional, deprecated           |
| WPA2     | 2004            | AES (CCMP)        | High                           | Widely used, some vulnerabilities  |
| WPA3     | 2018            | SAE & AES         | Very High                      | Latest standard, improved security |
| PSK      | -               | Shared password   | Depends on passphrase strength | Used in Personal modes             |

In essence, WPA3 is the most secure current Wi-Fi protocol, while WEP and WPA should no longer be used. PSK is a method of
authentication commonly paired with these protocols in personal networks.[5][2][3][4][1]

[1](https://www.qsfptek.com/qt-news/comparing-wifi-security-types-wep-vs-wpa-vs-wpa2-vs-wpa3.html)
[2](https://www.techtarget.com/searchnetworking/feature/Wireless-encryption-basics-Understanding-WEP-WPA-and-WPA2)
[3](https://us.norton.com/blog/wifi/wep-vs-wpa)
[4](https://www.strong-eu.com/blog/wpa-wpa2-wpa3-what-are-the-differences-between-wi-fi-security-standards)
[5](https://www.avast.com/c-wep-vs-wpa-or-wpa2)
[6](https://www.esecurityplanet.com/trends/the-best-security-for-wireless-networks/)
[7](https://nilesecure.com/network-security/what-is-wi-fi-security-wep-wpa-wpa2-wpa3-differences)
[8](https://www.cwnp.com/wifi-password-security/)
