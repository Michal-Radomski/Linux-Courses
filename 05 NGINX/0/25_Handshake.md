The handshake between a browser (client) and a web server (usually over HTTPS) is a secure negotiation process known as the
SSL/TLS handshake. This handshake establishes a trusted, encrypted communication channel for data exchange.

### How the SSL/TLS Handshake Works Step-by-Step:

1. **ClientHello**  
   The browser initiates by sending a "ClientHello" message. This includes:

   - Supported TLS protocol versions
   - List of supported cipher suites (encryption algorithms)
   - A random number ("client random") to ensure session uniqueness
   - Other options and extensions

2. **ServerHello**  
   The server responds with a "ServerHello" message that includes:

   - Selected TLS version and cipher suite
   - Its own random number ("server random")
   - The server’s digital certificate (contains its public key and identity)
   - Optionally requests a client certificate for mutual authentication

3. **Certificate Verification**  
   The browser verifies the server’s certificate against trusted Certificate Authorities to confirm the server's identity and
   ensure it hasn’t been tampered with.

4. **Key Exchange**  
   The client generates a pre-master secret (a random secret key) and encrypts it using the server’s public key from its
   certificate. This encrypted pre-master secret is sent to the server.

5. **Session Key Generation**  
   Both client and server use the pre-master secret along with the client and server random numbers to generate the same
   symmetric session keys independently. These session keys will encrypt the subsequent data exchanged.

6. **Finished Messages**  
   The client sends a "Finished" message encrypted with the session key, signaling it's ready to begin secure
   communication.  
   The server responds with its own "Finished" message encrypted with the session key.

7. **Secure Communication Established**  
   At this point, the handshake is complete, and all further communication over the channel is encrypted symmetrically using
   the session keys, ensuring confidentiality and data integrity.

---

This process usually completes in a few milliseconds to seconds and forms the foundation for secure HTTPS connections. It
protects against eavesdropping, tampering, and impersonation by authenticating the server and setting up encryption keys.

In summary, the handshake is a multi-step protocol where the client and server agree on encryption methods, authenticate the
server, and securely establish shared keys for encrypted communication.[1][2][3][4][5]

[1](https://www.globalsign.com/en/blog/all-about-tls-handshakes) [2](https://www.okta.com/identity-101/ssl-handshake/)
[3](https://www.manageengine.com/key-manager/information-center/what-is-ssl-tls-handshake.html)
[4](https://www.bigrock.in/blog/products/email/ssl-tls-handshake-process)
[5](https://www.linkedin.com/pulse/ssltls-handshake-baha-abu-shaqra-phd-dti-uottawa--jlwmf)
[6](https://www.cloudflare.com/learning/ssl/what-happens-in-a-tls-handshake/)
[7](https://www.ssl.com/article/ssl-tls-handshake-ensuring-secure-online-interactions/)
[8](https://developer.okta.com/books/api-security/tls/how/) [9](https://en.wikipedia.org/wiki/Transport_Layer_Security)
[10](https://commandlinefanatic.com/cgi-bin/showarticle.cgi?article=art059)
