To serve index.php via NGINX on Ubuntu, you need to have both NGINX and PHP-FPM installed. Then, configure NGINX to pass PHP
requests to PHP-FPM for processing. The key steps include:

1. Install NGINX and PHP-FPM (e.g., PHP 8.1 FPM):

```
sudo apt-get update
sudo apt-get install nginx php8.1-fpm
```

2. Configure NGINX site configuration, typically found at `/etc/nginx/sites-available/default`, as follows:
   - Set the document root (e.g., `/var/www/html`).
   - Add `index.php` to the `index` directive.
   - Add a location block to handle PHP files by forwarding them to PHP-FPM using a Unix socket:

```nginx
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    index index.php index.html index.htm;

    server_name _;

    location / {
        try_files $uri $uri/ =404;
    }

    location ~ \.php$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/var/run/php/php8.1-fpm.sock;
    }

    location ~ /\.ht {
        deny all;
    }
}
```

3. Test the configuration and restart NGINX:

```
sudo nginx -t
sudo systemctl restart nginx
```

4. Place your `index.php` file inside `/var/www/html` (or your document root). For testing, you can create a PHP info file:

```bash
echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/index.php
```

5. Access your server IP or domain in a browser, and `index.php` should be served through NGINX with PHP processing by
   PHP-FPM.

This setup uses PHP-FPM for FastCGI processing via a Unix socket, which is standard for NGINX on Ubuntu for efficient PHP
serving.[1][3][4]

[1](https://www.digitalocean.com/community/tutorials/php-fpm-nginx)
[2](https://www.hibit.dev/posts/142/running-php83-with-nginx-on-ubuntu)
[3](https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/Nginx-PHP-FPM-config-example)
[4](https://www.liquidweb.com/blog/configure-nginx-read-php-ubuntu-16-04/)
[5](https://stackoverflow.com/questions/64013487/how-to-run-php-files-properly-on-ubuntu-with-nginx)
[6](https://www.rosehosting.com/blog/configure-php-fpm-with-nginx-on-ubuntu-22-04/)
[7](https://www.youtube.com/watch?v=1P54UoBjbDs)
[8](https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-ubuntu-18-04)
[9](https://focalsoft.ae/multiple-php-versions-single-server-ubuntu/)
