The rewrite and return directives in NGINX serve different but complementary purposes related to URL handling.

### Rewrite Directive

- The `rewrite` directive allows you to modify the request URI based on regular expression matching.
- Syntax:
  ```
  rewrite regex replacement [flag];
  ```
- It is used for complex URL transformations where parts of the original URL are captured and replaced with new values.
- Flags control behavior:
  - `last`: Stops processing other rewrite directives and initiates a new location or server search.
  - `break`: Stops processing rewrite directives in the current location.
  - `redirect`: Sends a temporary 302 redirect.
  - `permanent`: Sends a permanent 301 redirect.
- Example:
  ```
  rewrite ^/old/(.*)$ /new/$1 permanent;
  ```
  This redirects URLs starting with /old/ to /new/ preserving the trailing part.
- The rewrite directive can only implicitly produce 301 or 302 responses; for other response codes you must use the return
  directive afterward.

### Return Directive

- The `return` directive immediately stops request processing and returns a specified response to the client.
- Syntax:
  ```
  return code [text|URL];
  ```
- Commonly used for simple redirects or sending custom status codes.
- Example:
  ```
  return 301 https://example.com/newpage;
  ```
  This sends a permanent redirect to the client without further processing.
- Compared to `rewrite` for redirects, `return` is more explicit, efficient, and easier to understand.
- `return` supports any valid HTTP status code unlike `rewrite`.

### When to Use Each

- Use `rewrite` for complex URL manipulations, regex-based dynamic routing, or internal URL rewrites.
- Use `return` for straightforward redirection or immediate response with specific status codes.

In many cases, `return` is preferred for SEO-friendly, efficient redirects, while `rewrite` is needed for more fine-grained
URL rewriting inside the server configuration.[2][3][4][7]

[1](https://www.thegeekstuff.com/2017/08/nginx-rewrite-examples/) [2](https://www.hostinger.com/tutorials/nginx-redirect)
[3](https://www.digitalocean.com/community/tutorials/nginx-rewrite-url-rules)
[4](https://blog.nginx.org/blog/creating-nginx-rewrite-rules)
[5](https://nginx.org/en/docs/http/ngx_http_rewrite_module.html)
[6](https://stackoverflow.com/questions/4329316/how-to-write-a-url-rewrite-in-nginx)
[7](https://www.engineyard.com/blog/rewrite-rules-nginx/) [8](https://www.keycdn.com/support/nginx-rewrite-rules)
[9](https://docs.ultimatemember.com/article/1934-nginx-configuration-rewrite-rule-for-ultimate-member)
