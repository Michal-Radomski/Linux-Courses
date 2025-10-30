SELinux (Security-Enhanced Linux) is a security module integrated into the Linux kernel that provides a mechanism for
enforcing mandatory access control (MAC) policies at the process and file system level. It operates by assigning security
contexts to processes and objects and enforces rules about how they can interact, offering fine-grained control over what
actions processes can perform, including controlling network access on a per-domain (process context) basis.[1][4]

Netfilter is a framework within the Linux kernel that allows various networking-related operations, such as packet filtering,
network address translation (NAT), and connection tracking. Iptables is a user-space utility program that interfaces with
Netfilter to define rules for packet filtering in tables containing chains of rules that determine how packets should be
handled.[3][7][8]

Key differences between SELinux and Netfilter/Iptables:

- Purpose:

  - SELinux focuses on enforcing security policies on processes, files, and system resources, including per-application
    network access controls based on security domains.
  - Netfilter/Iptables focuses on network packet filtering, handling firewall rules, NAT, and connection tracking at the
    packet level.

- Scope of Control:

  - SELinux controls access at the level of processes and their domains and can manage what a process is allowed to do
    including network packet types it can handle.
  - Netfilter/Iptables controls packets flowing through the network stack, applying rules to accept, drop, or modify packets
    based on various packet and connection attributes.

- Filtering Granularity:

  - SELinux can provide network filtering on a per-application (per-security domain) basis, effectively controlling network
    access by process identity.
  - Netfilter/Iptables filter packets more traditionally by IP address, port, protocol, state, and other packet header
    criteria, with some support for filtering by user or group.

- Integration:
  - SELinux can leverage Netfilter markings and integrates with the networking stack to enforce MAC security policies.
  - Netfilter is the kernel-level packet filtering hook system; iptables is the userspace tool to configure it.

Thus, SELinux and Netfilter/Iptables operate at different layers of system security: SELinux at a policy enforcement layer
for process and resource access including network capabilities, and Netfilter/Iptables at the packet filtering level
controlling flow of network traffic.[7][1][3]

In summary:

- SELinux enforces security policies on processes and resources including network access controls based on security contexts.
- Netfilter/Iptables is the Linux kernel framework and user-space toolset for filtering and manipulating network packets.
- They complement each other and serve different aspects of system security.

[1](https://blog.siphos.be/2015/08/filtering-network-access-per-application/)
[2](https://groups.google.com/g/vglug/c/1HlYvuwPm6I)
[3](https://www.digitalocean.com/community/tutorials/a-deep-dive-into-iptables-and-netfilter-architecture)
[4](https://www.geeksforgeeks.org/linux-unix/what-is-selinux/) [5](https://news.ycombinator.com/item?id=25180829)
[6](https://discussion.fedoraproject.org/t/what-is-the-relation-difference-between-selinux-and-firewalld/77299)
[7](https://blog.cloudsigma.com/the-architecture-of-iptables-and-netfilter/) [8](https://en.wikipedia.org/wiki/Netfilter)
[9](https://www.reddit.com/r/linuxadmin/comments/1e9doft/general_consensus_on_selinux/)
