To configure NGINX as a load balancer, you need to set up an upstream block defining the backend servers and then configure a
server block to proxy client requests to those backend servers. Here is a concise step-by-step guide:

### 1. Define Backend Servers (Upstream Block)

In the NGINX configuration file (usually `/etc/nginx/nginx.conf`), inside the `http` block, add an upstream section listing
your backend servers:

```nginx
upstream backend {
    server 192.168.1.101:8080;
    server 192.168.1.102:8080;
}
```

This tells NGINX to balance requests between these two IPs and ports.

### 2. Configure the Load Balancer Server

Inside the server block, configure NGINX to listen on the desired port (e.g., 80) and proxy requests to the upstream backend
group:

```nginx
server {
    listen 80;

    location / {
        proxy_pass http://backend;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }
}
```

### 3. Optional: Load Balancing Methods

By default, NGINX uses round-robin. You can also specify other methods like `least_conn` (smallest number of connections) or
`ip_hash` (sticky sessions) in the upstream block. For example:

```nginx
upstream backend {
    least_conn;
    server 192.168.1.101:8080;
    server 192.168.1.102:8080;
}
```

### 4. Test and Reload NGINX

Check the configuration syntax and reload NGINX:

```bash
sudo nginx -t
sudo systemctl reload nginx
```

### Summary

- Define backend servers in an upstream block.
- Set up a server block to listen for incoming requests and proxy them.
- Choose a load balancing method if needed.
- Reload NGINX to apply.

This basic load balancing setup improves performance, scalability, and reliability by distributing client requests across
multiple backend servers.[1][2][4][6]

[1](https://blogs.ddevops.com/load-balancing-with-nginx/) [2](https://tecadmin.net/setup-load-balancing-nginx/)
[3](https://tamerlan.dev/how-to-set-up-nginx-load-balancing-a-step-by-step-guide/)
[4](https://www.iankumu.com/blog/nginx-load-balancing/) [5](https://nginx.org/en/docs/http/load_balancing.html)
[6](https://docs.nginx.com/nginx/admin-guide/load-balancer/)
[7](https://kmerkuri.com/2024/07/02/configuring-nginx-as-a-load-balancer-a-comprehensive-guide/)
