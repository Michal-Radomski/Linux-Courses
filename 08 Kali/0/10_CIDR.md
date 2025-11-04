The notations `/8`, `/16`, and `/24` in network addresses refer to CIDR (Classless Inter-Domain Routing) notation. They
indicate how many bits of the 32-bit IPv4 address are used as the network part (prefix), with the remaining bits used for
host addresses.

- **/8** means the first 8 bits are the network part, and the remaining 24 bits are for hosts. This corresponds to a subnet
  mask of 255.0.0.0. It allows for about 16 million addresses in the network.
- **/16** means the first 16 bits are the network part, and the remaining 16 bits are for hosts. This corresponds to a subnet
  mask of 255.255.0.0. It allows about 65,000 hosts.
- **/24** means the first 24 bits are the network part, leaving 8 bits for hosts. This corresponds to a subnet mask of
  255.255.255.0. It allows for 256 addresses (254 usable hosts after network and broadcast addresses).

So, the `/number` after an IP address specifies how many leading bits identify the network, which helps determine the size
and range of the subnet. It is a concise way to express subnet masks, which specify how an IP address is divided between the
network and host parts.[1][3][4]

[1](https://www.freecodecamp.org/news/subnet-cheat-sheet-24-subnet-mask-30-26-27-29-and-other-ip-address-cidr-network-references/)
[2](https://controltechnology.com/Files/common-documents/application_notes/Understanding-CIDR-Notation-for-IP-Address-Display)
[3](https://www.enterprisenetworkingplanet.com/standards-protocols/cidr/)
[4](https://www.netmaker.io/resources/cidr-to-subnet-mask) [5](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
[6](https://docs.netgate.com/pfsense/en/latest/network/cidr.html) [7](https://aws.amazon.com/what-is/cidr/)
[8](https://www.digitalocean.com/community/tutorials/understanding-ip-addresses-subnets-and-cidr-notation-for-networking)
