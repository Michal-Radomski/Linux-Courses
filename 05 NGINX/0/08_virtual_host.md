An example of a virtual host (server block) configuration in Nginx looks like this:

```
server {
    listen 80;
    listen [::]:80;

    server_name example.com www.example.com;

    root /var/www/example.com/html;
    index index.html index.htm;

    location / {
        try_files $uri $uri/ =404;
    }

    error_page 404 /404.html;
    location = /404.html {
        internal;
    }

    error_page 500 502 503 504 /50x.html;
    location = /50x.html {
        root /usr/share/nginx/html;
    }
}
```

This config listens on port 80 for requests to example.com and www.example.com, serves files from /var/www/example.com/html,
and has custom error pages for 404 and server errors. The `location /` block tries to serve requested files or returns a 404
if not found. Virtual hosts in Nginx allow hosting multiple domains on one server by having separate server blocks defining
domain-specific settings.[2][4][5]

To enable the virtual host, you create this file in `/etc/nginx/sites-available/` and then create a symbolic link to it in
`/etc/nginx/sites-enabled/`, followed by reloading Nginx.

This setup lets you host multiple websites with different domains under a single Nginx instance efficiently.

[1](https://www.keycdn.com/support/nginx-virtual-host) [2](https://www.tencentcloud.com/techpedia/102118)
[3](https://stackoverflow.com/questions/31130926/create-virtual-host-on-nginx-server)
[4](https://serverspace.io/support/help/nginx-virtual-hosts-on-ubuntu-20-04/)
[5](https://www.digitalocean.com/community/tutorials/how-to-set-up-nginx-server-blocks-virtual-hosts-on-rocky-linux-9)
[6](https://nginx.org/en/docs/beginners_guide.html)
[7](https://www.digitalocean.com/community/tutorials/how-to-set-up-nginx-server-blocks-virtual-hosts-on-ubuntu-16-04)
[8](https://www.paralleldevs.com/blog/creating-virtual-host-nginx-step-step-guide/)
[9](https://gist.github.com/lukearmstrong/7155390)
[10](https://world.hey.com/hridel/set-up-an-nginx-virtual-host-as-a-reverse-proxy-2117daab)

The file for an Nginx virtual host configuration is typically named after the domain it serves and placed in the directory
`/etc/nginx/sites-available/`. For example, if your website domain is example.com, the configuration file is usually named:

```
/etc/nginx/sites-available/example.com
```

This file contains the server block (virtual host) configuration specific to that domain. To enable the virtual host, a
symbolic link is created from this file into the `/etc/nginx/sites-enabled/` directory. This naming convention helps in
managing multiple domains on the same server efficiently.

So, the name of the file depends on your domain but commonly follows the pattern `domain-name` located in
`/etc/nginx/sites-available/`.[1][2][5]

[1](https://www.tencentcloud.com/techpedia/102118)
[2](https://serverspace.io/support/help/nginx-virtual-hosts-on-ubuntu-20-04/)
[3](https://www.keycdn.com/support/nginx-virtual-host)
[4](https://www.plesk.com/blog/various/set-virtual-host-configuration-files-plesk-tips/)
[5](https://stackoverflow.com/questions/31130926/create-virtual-host-on-nginx-server)
[6](https://www.digitalocean.com/community/tutorials/how-to-set-up-nginx-server-blocks-virtual-hosts-on-ubuntu-16-04)
[7](https://nginx.org/en/docs/http/server_names.html) [8](https://nginx.org/en/docs/beginners_guide.html)
[9](https://episyche.com/blog/how-to-set-up-a-virtual-host-on-an-nginx)
