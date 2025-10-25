To set a rate limit in NGINX, you need to define a shared memory zone with `limit_req_zone` and then apply the rate limit
using `limit_req` within your server or location block. Here's a step-by-step guide:

### 1. Define the Rate Limit Zone

Add the following line inside the `http` block of your NGINX configuration (usually in `/etc/nginx/nginx.conf`):

```nginx
limit_req_zone $binary_remote_addr zone=one:10m rate=10r/s;
```

This configuration limits each client IP address to 10 requests per second, stored in a shared memory zone called `one`.

### 2. Apply the Rate Limit

Next, inside the `server` or `location` block where you want to enforce the rate limit, add:

```nginx
limit_req zone=one burst=5;
```

- `zone=one`: Refers to the zone defined earlier.
- `burst=5`: Allows a temporary burst of up to 5 extra requests beyond the rate limit without delaying or rejecting them.

### 3. (Optional) Use Delay for Smoother Throttling

You can add a delay for excess requests by adding the `nodelay` parameter to make throttling smoother:

```nginx
limit_req zone=one burst=5 nodelay;
```

Or, to throttle requests after the burst with delay:

```nginx
limit_req zone=one burst=5 delay=2;
```

### 4. Test and Reload NGINX

Finally, test and apply your configuration with:

```bash
sudo nginx -t
sudo systemctl reload nginx
```

### Summary

- Define a shared memory zone with `limit_req_zone`.
- Use `limit_req` in the server or location block.
- Adjust `burst` (how many requests can be buffered) and optional `delay`.
- Reload NGINX to apply changes.

This setup helps control traffic, prevent server overload, and reduce risks from abuse or DDoS attacks.[1][3][4]

[1](https://blog.nginx.org/blog/rate-limiting-nginx)
[2](https://docs.mirantis.com/mcp/q4-18/mcp-operations-guide/openstack-operations/nginx-config/ngx-rate-limit-config-sample.html)
[3](https://www.haikel-fazzani.eu.org/blog/post/nginx-rate-limit) [4](https://www.solo.io/topics/nginx/nginx-rate-limiting)
[5](https://docs.nginx.com/nginx/admin-guide/security-controls/controlling-access-proxied-http/)
[6](https://stackoverflow.com/questions/69732188/how-do-you-implement-basic-nginx-rate-limiting)
[7](http://rednafi.com/go/rate-limiting-via-nginx/) [8](https://www.youtube.com/watch?v=TfZlXBHtyzE)
[9](https://www.digitalocean.com/community/tutorials/how-to-rate-limit-a-node-js-app-with-nginx-on-ubuntu-20-04)
