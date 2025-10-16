To create a virtual host on Apache HTTPD, follow these detailed steps:

1. Install Apache HTTP Server:

   - Ensure Apache is installed on your system. For example, on CentOS use `sudo yum install httpd`, or on Ubuntu use
     `sudo apt install apache2`. Start and enable Apache service afterwards.

2. Create Directory Structure for Each Site:

   - Create a unique document root directory for each domain, e.g., `/var/www/example.com/public_html`.
   - Set appropriate ownership and permissions for the directory so Apache can serve content.

3. Create Virtual Host Configuration File:

   - Navigate to Apache’s sites-available directory (e.g., `/etc/apache2/sites-available/` on Ubuntu).
   - Create a configuration file, e.g., `example.com.conf`, and add the following content:

   ```
   <VirtualHost *:80>
       ServerAdmin webmaster@example.com
       ServerName example.com
       ServerAlias www.example.com
       DocumentRoot /var/www/example.com/public_html
       ErrorLog ${APACHE_LOG_DIR}/example.com_error.log
       CustomLog ${APACHE_LOG_DIR}/example.com_access.log combined
   </VirtualHost>
   ```

   Replace the domain and paths as needed.

4. Enable the Virtual Host:

   - On Ubuntu/Debian, use the command `sudo a2ensite example.com.conf` to enable the virtual host.
   - Restart Apache for changes to take effect: `sudo systemctl restart apache2`.

5. Test the Setup:
   - For local testing, edit `/etc/hosts` to map the domain name to your server’s IP, e.g., `127.0.0.1 example.com`.
   - Access `http://example.com` in a web browser to verify correct hosting.

For CentOS or other systems, similar steps apply but configuration files may be located in `/etc/httpd/conf.d/` and you use
`sudo systemctl restart httpd` to restart Apache. For multiple virtual hosts, create separate configuration files for each
domain.

This process lets Apache serve different websites or projects on the same server by matching domain names to specific
document root directories.[1][2][9]

[1](https://www.geeksforgeeks.org/linux-unix/how-to-setup-virtual-hosts-with-apache-web-server-on-linux/)
[2](https://www.hostinger.com/tutorials/how-to-create-apache-vhost-on-centos)
[3](https://dev.to/gpisano97/apache-tutorial-how-to-setup-a-virtual-host-for-phps-projects-separation-1lp6)
[4](https://stackoverflow.com/questions/4083681/apache-virtual-host-configuration)
[5](https://httpd.apache.org/docs/2.4/vhosts/) [6](https://www.youtube.com/watch?v=x5fWSWdM4F8)
[7](https://httpd.apache.org/docs/2.4/vhosts/examples.html)
[8](https://www.micski.dk/2023/01/13/create-a-virtual-host-in-apache-http-server/)
[9](https://www.digitalocean.com/community/tutorials/how-to-set-up-apache-virtual-hosts-on-ubuntu-20-04)
[10](https://stackoverflow.com/questions/65687903/apache-httpd-how-to-setup-virtual-host-correctly)

Here is an example configuration for an Apache virtual host that redirects HTTP (port 80) traffic to HTTPS (port 443):

```
<VirtualHost *:80>
    ServerName example.com
    ServerAlias www.example.com
    Redirect permanent / https://example.com/
</VirtualHost>

<VirtualHost *:443>
    ServerName example.com
    ServerAlias www.example.com
    DocumentRoot /var/www/example.com/public_html

    SSLEngine On
    SSLCertificateFile /path/to/your/certificate.crt
    SSLCertificateKeyFile /path/to/your/private.key
    SSLCertificateChainFile /path/to/your/chainfile.pem

    ErrorLog ${APACHE_LOG_DIR}/example.com_error.log
    CustomLog ${APACHE_LOG_DIR}/example.com_access.log combined
</VirtualHost>
```

Key points:

- The first `<VirtualHost *:80>` listens on HTTP and uses the `Redirect permanent` directive to send all requests to the
  HTTPS URL.
- The second `<VirtualHost *:443>` configures the actual site served over HTTPS with SSL enabled.
- Replace `example.com` and paths to SSL certificates with your actual domain and file paths.
- After editing, enable the site (if applicable) and restart Apache to apply changes.

This setup ensures all HTTP requests are automatically redirected to HTTPS, improving security by forcing encrypted
connections.[1][2][3]

[1](https://www.ssl.com/how-to/redirect-http-to-https-with-apache/)
[2](https://linuxize.com/post/redirect-http-to-https-in-apache/)
[3](https://docs.bitnami.com/aws/infrastructure/lamp/administration/force-https-apache/)
[4](https://www.namecheap.com/support/knowledgebase/article.aspx/9821/38/apache-redirect-to-https/)
[5](https://stackoverflow.com/questions/11621053/redirect-http-to-https-on-default-virtual-host-without-servername)
[6](https://cwiki.apache.org/confluence/display/httpd/RedirectSSL) [7](https://www.youtube.com/watch?v=Q251i9YdQjY)
[8](https://til.neilmagee.com/post/apache-virtual-host-redirection-with-ssl/)
