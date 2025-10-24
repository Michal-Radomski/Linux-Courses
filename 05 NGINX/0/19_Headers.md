Web servers like Apache and NGINX allow setting various HTTP headers to control security, caching, content policies, and
client-server communication.

### Common HTTP Headers You Can Set

- **X-Frame-Options**: Prevents clickjacking by controlling whether the page can be framed. Example: `DENY` or `SAMEORIGIN`.
- **Strict-Transport-Security (HSTS)**: Enforces HTTPS connections by instructing browsers to only use HTTPS for a specified
  time.
- **X-Content-Type-Options**: Stops browsers from MIME-sniffing a response away from the declared content-type. Common value:
  `nosniff`.
- **Content-Security-Policy (CSP)**: Controls resources the client is allowed to load, preventing XSS attacks.
- **Cache-Control**: Defines caching policies, e.g., `no-cache`, `max-age`.
- **X-XSS-Protection**: Enables cross-site scripting filters in some browsers.
- **Referrer-Policy**: Controls the amount of referrer information sent with requests.

### How to Set Headers in Apache

Use the `mod_headers` module in `.htaccess` or your Apache config:

```apache
<IfModule mod_headers.c>
  Header always set X-Frame-Options "DENY"
  Header set Strict-Transport-Security "max-age=31536000; includeSubDomains"
  Header set X-Content-Type-Options "nosniff"
  Header set Content-Security-Policy "default-src 'self'; script-src 'self' 'unsafe-inline'; object-src 'none'"
</IfModule>
```

### How to Set Headers in NGINX

Use the `add_header` directive in your server block or configuration:

```nginx
add_header X-Frame-Options "DENY" always;
add_header Strict-Transport-Security "max-age=31536000; includeSubDomains" always;
add_header X-Content-Type-Options "nosniff" always;
add_header Content-Security-Policy "default-src 'self'; script-src 'self' 'unsafe-inline'; object-src 'none'" always;
```

The `always` flag in both Apache and NGINX ensures headers are added even on error responses.

These headers help enhance security, prevent attacks like clickjacking, XSS, and enforce HTTPS, as well as control caching
and content loading policies.[1][2][4]

[1](https://cheatsheetseries.owasp.org/cheatsheets/HTTP_Headers_Cheat_Sheet.html)
[2](https://www.geeksforgeeks.org/websites-apps/how-to-set-http-headers-using-apache-server/)
[3](https://httpd.apache.org/docs/current/mod/mod_headers.html)
[4](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers) [5](https://www.youtube.com/watch?v=ixy7Fr0s9Fk)
[6](https://stackoverflow.com/questions/35564735/how-do-servers-set-http-response-headers)
[7](https://httpd.apache.org/docs/current/vhosts/examples.html)
[8](https://www.studytonight.com/apache-guide/add-http-security-headers-in-apache-web-server)
