ProxyChains is a Linux utility that forces any TCP connection made by an application to go through one or more proxy servers
such as SOCKS4, SOCKS5, or HTTP proxies. It essentially hooks into network calls of dynamically linked applications and
redirects the traffic through a list of proxies you specify, helping to hide the user's IP address, bypass firewalls, or
navigate complex network routes.[1][3][4]

### How to use ProxyChains on Ubuntu:

1. **Install ProxyChains (if not already installed):**
   ```bash
   sudo apt update
   sudo apt install proxychains
   ```
2. **Configure ProxyChains:**

   - Edit the configuration file:
     ```bash
     sudo nano /etc/proxychains.conf
     ```
   - Add your proxy servers in the format:
     ```
     socks5 127.0.0.1 1080
     http 192.168.1.100 8080
     ```
   - Choose your chaining mode (strict, dynamic, random) at the top of the config file.

3. **Use ProxyChains:**
   - To run an application through ProxyChains:
     ```bash
     proxychains your_application
     ```
   - For example, to browse with curl through your proxy chain:
     ```bash
     proxychains curl http://checkip.amazonaws.com/
     ```

ProxyChains is widely used in penetration testing, privacy protection, and bypassing restrictive network policies by chaining
multiple proxies, making it difficult to trace the origin of network traffic.[5][6]

[1](https://vickieli.dev/hacking/proxychains/)
[2](https://www.geeksforgeeks.org/linux-unix/staying-anonymous-with-proxychains-in-kali-linux/)
[3](https://blog.geekinstitute.org/2025/05/mastering-anonymity-with-tor-and-proxychains%20.html)
[4](https://dev.to/saravana_gautham_g/proxy-chaining-explained-using-proxychains-for-stealth-and-pivoting-in-pen-testing-8dd)
[5](https://github.com/haad/proxychains) [6](https://monovm.com/blog/proxy-chains/)
[7](https://www.usenix.org/legacy/event/atc10/tech/full_papers/Dacosta.pdf) [8](https://www.youtube.com/watch?v=KWwOU1z5E8E)
