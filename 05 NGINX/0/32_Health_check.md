Default health checks in NGINX load balancer refer primarily to passive health checks, as the open-source NGINX by default
does not include active health checks (which are available in NGINX Plus).

### Passive Health Checks (Default in NGINX)

- NGINX monitors the responses and connection status of upstream servers as client requests are proxied to them.
- If an upstream server fails to respond properly (errors like timeouts, connection failures, or HTTP status codes indicating
  failure), NGINX marks it as unavailable.
- The server is temporarily removed from the load balancing rotation and will not receive new requests until it becomes
  responsive again.
- The parameters controlling this behavior per server in the `upstream` block include:
  - `max_fails` (default 1): Number of failed attempts before marking the server as down.
  - `fail_timeout` (default 10 seconds): The time period in which `max_fails` must happen and the time the server remains
    marked as down.
- NGINX resumes sending traffic to the server once it is responsive again during normal traffic handling.

### Active Health Checks (Only in NGINX Plus)

- NGINX Plus can periodically send special health-check requests to upstream servers and verify their responses proactively.
- These checks happen independently of client traffic and can detect server failures earlier.
- Active health checks test the server’s availability and response correctness at configurable intervals.

### Summary

- Default NGINX load balancer uses passive health checks by monitoring real client requests and stopping traffic to unhealthy
  servers temporarily based on failures.
- Control via `max_fails` and `fail_timeout` parameters.
- Active health checks are not available in the default NGINX but exist in NGINX Plus for advanced monitoring and quicker
  failure detection.

This default passive health check mechanism helps maintain service availability by avoiding routing traffic to down or
unresponsive servers.[1][2][3][8]

[1](https://dev.to/sammy_cloud/high-performance-loadbalancing-using-nginx-3f34)
[2](https://docs.nginx.com/nginx/admin-guide/load-balancer/http-health-check/)
[3](https://www.f5.com/company/blog/nginx/active-or-passive-health-checks-which-is-right-for-you)
[4](https://docs.nginx.com/nginx/admin-guide/load-balancer/tcp-health-check/)
[5](https://nginx.org/en/docs/http/load_balancing.html)
[6](https://stackoverflow.com/questions/60038914/simple-healthcheck-endpoint-in-nginx-server-container)
[7](https://nginx.org/en/docs/http/ngx_http_upstream_hc_module.html)
[8](https://upcloud.com/resources/tutorials/configure-load-balancing-nginx/)
[9](https://www.darin.web.id/linux/nginx-load-balancing)
