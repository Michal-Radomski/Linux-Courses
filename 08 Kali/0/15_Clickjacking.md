Clickjacking is a malicious web attack technique that tricks users into clicking on something different from what they
perceive. In this attack, an attacker overlays a transparent or opaque layer over a legitimate webpage—usually using HTML
frames or iframes—so that the user thinks they are interacting with the visible page, but in reality, they are clicking
hidden buttons or links controlled by the attacker. This can cause the user to unknowingly perform actions like changing
settings, authorizing payments, stealing credentials, or executing malicious scripts.

For example, a user may believe they are clicking a "Play" button on a video but are actually clicking a hidden "Authorize
payment" button on another site layered invisibly beneath. The attack exploits user interface redressing and relies on social
engineering to lure victims to the malicious page. It is distinct from CSRF attacks because it requires user interaction (a
click), and defenses like CSRF tokens are ineffective against it.

To mitigate clickjacking, websites can implement HTTP response headers like `X-Frame-Options` or `Content-Security-Policy`
with frame-ancestors directives to prevent their pages from being embedded in iframes on other domains. Awareness and careful
design of web interfaces are important to defend against clickjacking.

In summary, clickjacking is a deceptive technique that manipulates the user interface to trick users into unintended clicks,
resulting in potentially harmful consequences ranging from credential theft to unauthorized transactions.[1][2][3][4][5]

[1](https://en.wikipedia.org/wiki/Clickjacking)
[2](https://www.vaadata.com/blog/what-is-clickjacking-exploitations-and-security-best-practices/)
[3](https://www.blackduck.com/glossary/what-is-clickjacking.html) [4](https://portswigger.net/web-security/clickjacking)
[5](https://www.kaspersky.com/resource-center/definitions/clickjacking)
[6](https://owasp.org/www-community/attacks/Clickjacking) [7](https://www.fortinet.com/resources/cyberglossary/clickjacking)
[8](https://www.imperva.com/learn/application-security/clickjacking/)
[9](https://blog.qualys.com/vulnerabilities-threat-research/2015/10/20/clickjacking-a-common-implementation-mistake-that-can-put-your-websites-in-danger)
[10](https://www.pingidentity.com/en/resources/cybersecurity-fundamentals/threats/clickjacking.html)
