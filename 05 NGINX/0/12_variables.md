Variables in NGINX configuration are special placeholders that hold dynamic or static data used during the processing of
client requests. They enable flexible and powerful configuration by allowing you to extract, store, and reuse request
details, server information, or custom values.

### Key Points About NGINX Variables:

- Variables start with a dollar sign ($), like `$uri`, `$host`, `$remote_addr`.
- They can represent request properties (e.g., URI, method), connection info (e.g., remote IP), server state, headers,
  cookies, and more.
- NGINX provides many built-in variables, such as `$request_uri` (original request URI), `$args` (query string),
  `$http_user_agent` (user-agent header).
- You can define custom variables using the `set` directive. For example:
  ```
  set $myvar value;
  ```
- Variables can be used in directives for routing, rewriting URLs, proxy headers, logging, and custom logic.
- Variables support regular expression captures and conditional assignments, allowing extraction of parts of the URI or
  headers.
- Environment variables from the OS are not directly supported but can be introduced using templating tools like `envsubst`.

### Example Usage:

```nginx
server {
    set $user_id 0;

    if ($uri ~ "^/user/([0-9]+)") {
        set $user_id $1;
    }

    location / {
        proxy_set_header X-User-Id $user_id;
        proxy_pass http://backend;
    }
}
```

Here, a user ID is extracted from the URI and passed as a header to the backend.

In summary, variables in NGINX conf provide dynamic, runtime data access and manipulation capabilities within the
configuration, enabling highly customizable web server behavior. Both built-in and custom user-defined variables play a
crucial role in request processing and server logic.[1][4]

[1](https://statuslist.app/nginx/variables/) [2](https://www.baeldung.com/linux/nginx-config-environment-variables)
[3](https://stackoverflow.com/questions/15416957/using-variables-in-nginx-location-rules)
[4](https://nginx.org/en/docs/varindex.html) [5](http://nginx.org/en/docs/syntax.html)
[6](https://docs.nginx.com/nginx-one/agent/configure-instance-reporting/configuration-overview/)
[7](https://nginx.org/en/docs/http/ngx_http_core_module.html) [8](https://www.solo.io/topics/nginx/nginx-configuration)
