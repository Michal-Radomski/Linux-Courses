The `ip route` command in Linux is used to display or manipulate the kernel's IP routing table. It allows system
administrators to view the current routes, add new routes, modify existing ones, and delete routes.

### Key Functions of `ip route` Command:

- **Display Routing Table:** Running `ip route` without arguments shows the current routing table entries, including default
  routes and subnet routes.
- **Add Routes:** You can add static routes to direct traffic for specific networks through specified interfaces or gateways.
  For example:  
  `ip route add 192.168.1.0/24 dev eth0` adds a route for the 192.168.1.0/24 network via the eth0 interface.
- **Delete Routes:** Remove routes with commands like:  
  `ip route del 192.168.1.0/24 dev eth0`
- **Modify Routes:** Adjust routing rules by adding or changing entries.
- **Show Specific Route Tables:** You can filter by IPv4 or IPv6 with `ip -4 route` or `ip -6 route`.

### Example Output:

```
default via 192.168.1.1 dev eth0
192.168.1.0/24 dev eth0 proto kernel scope link src 192.168.1.100
```

This shows the default gateway and a route to the local subnet.

The `ip route` command is a modern replacement for the older `route` command and provides more flexibility and features for
network route management.[1][2][3][4][5]

[1](https://www.oreilly.com/library/view/centos-quick-start/9781789344875/bfaec3a1-e048-41d2-be11-7ba2084eff40.xhtml)
[2](https://www.geeksforgeeks.org/linux-unix/route-command-in-linux-with-examples/)
[3](https://www.redhat.com/en/blog/route-ip-route) [4](https://www.baeldung.com/linux/route-traffic-to-interface)
[5](https://man7.org/linux/man-pages/man8/ip-route.8.html)
[6](https://docs.redhat.com/de/documentation/red_hat_enterprise_linux/7/html/networking_guide/sec-configuring_static_routes_with_ip_commands)
[7](https://yurisk.info/2016/12/19/linux-ip-route-command-reference-by-example/index.html)
[8](https://www.reddit.com/r/linuxquestions/comments/166uw2t/help_with_understanding_the_ip_route_command/)
