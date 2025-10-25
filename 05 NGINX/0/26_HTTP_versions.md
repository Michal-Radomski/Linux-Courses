HTTP has evolved through several versions since its inception, each improving on the previous in functionality, efficiency,
and performance.

- HTTP/0.9 (1991): The very first version, extremely simple with only a single-line GET request supported. It transferred
  only HTML files without headers or status codes, making it very limited.

- HTTP/1.0 (1996): Introduced HTTP headers and status codes, allowing metadata and richer responses. Added support for
  various content types and basic caching. Persistent connections were introduced but not standardized yet.

- HTTP/1.1 (1997): Made persistent connections standard and introduced chunked transfer encoding to send data in chunks,
  improving data transfer efficiency. Added pipelining (sending multiple requests without waiting for responses), better
  caching, Host header for multiple domains on one IP, and support for range requests to resume interrupted downloads.

- HTTP/2 (2015): A major overhaul using a binary protocol instead of text, which is more efficient to parse. It supports
  multiplexing multiple parallel requests/responses over a single connection, header compression to reduce overhead, server
  push to proactively send resources, and stream prioritization for loading key resources faster.

- HTTP/3 (2022): The latest version uses the QUIC transport protocol over UDP instead of TCP, resulting in faster connection
  establishment and lower latency. It integrates TLS 1.3 for improved security and is more resilient to network changes,
  ideal for mobile and wireless networks. It also improves stream management further.

All versions from HTTP/1.1 onwards remain standard and widely supported. HTTP/2 and HTTP/3 support is broadly available in
modern browsers and servers, offering significant performance advantages over HTTP/1.1. HTTP/0.9 and HTTP/1.0 are
obsolete.[1][2][3]

This description covers key improvements and characteristics of each main version of HTTP.

[1](https://en.wikipedia.org/wiki/HTTP)
[2](https://dev.to/paraspanchal/understanding-http-versions-a-comprehensive-guide-16n9)
[3](https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/Evolution_of_HTTP)
[4](https://www.baeldung.com/cs/http-versions) [5](https://www.cloudflare.com/learning/performance/http2-vs-http1.1/)
[6](https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/Overview)
[7](https://www.fastcomet.com/kb/types-of-hypertext-transfer-protocols) [8](https://www.haproxy.com/glossary/what-is-http)
