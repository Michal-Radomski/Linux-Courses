To configure NGINX as a reverse proxy on Ubuntu, follow these steps:

1. Install NGINX, if not already installed:

```
sudo apt update
sudo apt install nginx
```

2. Create or edit a site configuration file, e.g. `/etc/nginx/sites-available/reverse-proxy` with a basic reverse proxy setup
   like this:

```nginx
server {
    listen 80;
    server_name your_domain_or_ip;

    location / {
        proxy_pass http://backend_server_address:port;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }
}
```

- Replace `your_domain_or_ip` with your server's domain or IP.
- Replace `backend_server_address:port` with the address and port of the backend server to which requests should be forwarded
  (e.g., `127.0.0.1:8000`).

3. Enable the new site by linking it to sites-enabled:

```
sudo ln -s /etc/nginx/sites-available/reverse-proxy /etc/nginx/sites-enabled/
```

4. Test the NGINX configuration for syntax errors:

```
sudo nginx -t
```

5. Reload NGINX to apply changes:

```
sudo systemctl reload nginx
```

Now, requests to your NGINX server will be forwarded to the backend server configured in `proxy_pass`.

This configuration also sets essential headers so the backend server can know the original requestor's IP and protocol.

For HTTPS setups or more advanced proxying (WebSockets, buffering, caching), additional directives may be added, but this is
the core reverse proxy configuration.[1][3][5]

[1](https://phoenixnap.com/kb/nginx-reverse-proxy) [2](https://nginxui.com/guide/nginx-proxy-example)
[3](https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/How-to-setup-Nginx-reverse-proxy-servers-by-example)
[4](https://docs.nginx.com/nginx/admin-guide/web-server/reverse-proxy/)
[5](https://www.digitalocean.com/community/tutorials/how-to-configure-nginx-as-a-reverse-proxy-on-ubuntu-22-04)
[6](https://www.youtube.com/watch?v=lZVAI3PqgHc) [7](https://coder.com/docs/tutorials/reverse-proxy-nginx)
[8](https://nginx.org/en/docs/beginners_guide.html)
[9](https://www.jenkins.io/doc/book/system-administration/reverse-proxy-configuration-with-jenkins/reverse-proxy-configuration-nginx/)
