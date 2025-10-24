To set up SSL on Apache2 and NGINX on Ubuntu, you need a valid SSL certificate and then configure each server to use it for
secure HTTPS connections. Here's an overview of the steps for both:

## Apache2 SSL Setup on Ubuntu

1. **Install Apache and SSL module**  
   Ensure Apache2 is installed, then enable SSL support:

   ```bash
   sudo apt update
   sudo apt install apache2
   sudo a2enmod ssl
   sudo systemctl restart apache2
   ```

2. **Obtain or create SSL certificate**  
   You can get a certificate from a trusted CA or create a self-signed certificate (for testing):

   ```bash
   sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
     -keyout /etc/ssl/private/apache-selfsigned.key \
     -out /etc/ssl/certs/apache-selfsigned.crt
   ```

3. **Configure Apache virtual host for SSL**  
   Create or edit the SSL-enabled site config, e.g., `/etc/apache2/sites-available/yourdomain-ssl.conf`:

   ```
   <VirtualHost *:443>
     ServerName yourdomain.com
     DocumentRoot /var/www/html

     SSLEngine on
     SSLCertificateFile /etc/ssl/certs/apache-selfsigned.crt
     SSLCertificateKeyFile /etc/ssl/private/apache-selfsigned.key

     <Directory /var/www/html>
       AllowOverride All
     </Directory>
   </VirtualHost>
   ```

4. **Enable the SSL site and restart Apache**
   ```bash
   sudo a2ensite yourdomain-ssl.conf
   sudo systemctl restart apache2
   ```

You can validate the setup by accessing `https://yourdomain.com` and seeing the secured connection.

---

## NGINX SSL Setup on Ubuntu

1. **Install NGINX**

   ```bash
   sudo apt update
   sudo apt install nginx
   ```

2. **Obtain or create SSL certificate**  
   Use an official CA or create a self-signed certificate like Apache.

3. **Edit NGINX server block config**  
   For example, in `/etc/nginx/sites-available/yourdomain`:

   ```
   server {
     listen 80;
     server_name yourdomain.com www.yourdomain.com;
     return 301 https://$server_name$request_uri;
   }

   server {
     listen 443 ssl;
     server_name yourdomain.com www.yourdomain.com;

     ssl_certificate /etc/ssl/certs/nginx-selfsigned.crt;
     ssl_certificate_key /etc/ssl/private/nginx-selfsigned.key;

     ssl_protocols TLSv1.2 TLSv1.3;
     ssl_ciphers HIGH:!aNULL:!MD5;

     root /var/www/html;
     index index.html index.htm;

     location / {
       try_files $uri $uri/ =404;
     }
   }
   ```

4. **Enable the site and reload NGINX**
   ```bash
   sudo ln -s /etc/nginx/sites-available/yourdomain /etc/nginx/sites-enabled/
   sudo nginx -t
   sudo systemctl reload nginx
   ```

You can verify by visiting `https://yourdomain.com`.

---

These configurations establish HTTPS using your SSL certificates on both Apache2 and NGINX. For production, use certificates
from trusted Certificate Authorities or automate with Let's Encrypt.

[1](https://certpanel.com/resources/how-to-install-configure-ssl-certificate-on-apache2-web-server-ubuntu/)
[2](https://www.rosehosting.com/blog/how-to-enable-https-protocol-with-apache-2-on-ubuntu-20-04/)
[3](https://knowledge.digicert.com/tutorials/create-csr-and-install-ssl-certificate-on-ubuntu-server-with-apache2-using-openssl)
[4](https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-apache-in-ubuntu-18-04)
[5](https://www.namecheap.com/support/knowledgebase/article.aspx/10314/33/ssl-certificate-installation-on-apache2-debian-ubuntu/)
[6](https://www.youtube.com/watch?v=Mlcde4fH-Gg) [7](https://httpd.apache.org/docs/2.4/ssl/ssl_howto.html)
