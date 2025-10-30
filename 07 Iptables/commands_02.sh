#!/bin/bash

# flushing the firewall
iptables -F

#* Commands - Filter by IP or NET
# dropping all traffic from 100.0.0.1
iptables -A INPUT -s 100.0.0.1 -j DROP

# accepting all ssh traffic from network 80.0.0.0/16
iptables -A INPUT -s 80.0.0.0/16 -p tcp --dport 22 -j ACCEPT

# dropping all outgoing HTTPS traffic to www.ubuntu.com (dns traffic must be permitted)
iptables -A OUTPUT -p tcp --dport 443 -d www.ubuntu.com -j DROP

#* Commands - Filter by IP Range
#iptables -A INPUT -p tcp --dport 25 -s 10.0.0.10 -j DROP
#iptables -A INPUT -p tcp --dport 25 -s 10.0.0.11 -j DROP
#iptables -A INPUT -p tcp --dport 25 -s 10.0.0.12 -j DROP
#iptables -A INPUT -p tcp --dport 25 -s 10.0.0.13 -j DROP
#iptables -A INPUT -p tcp --dport 25 -s 10.0.0.14 -j DROP
#iptables -A INPUT -p tcp --dport 25 -s 10.0.0.15 -j DROP
#iptables -A INPUT -p tcp --dport 25 -s 10.0.0.16 -j DROP
#iptables -A INPUT -p tcp --dport 25 -s 10.0.0.17 -j DROP
#iptables -A INPUT -p tcp --dport 25 -s 10.0.0.18 -j DROP

# all 9 rules above are replaced by the following rule:
iptables -A INPUT -p tcp --dport 25 -m iprange --src-range 10.0.0.10-10.0.0.18 -j DROP

#* Commands - Filter by Port, Protocol and Interface
### FILTER BY PORT (-p tcp|udp --sport | --dport) ###

# ALLOW SSH CONNECTIONS ONLY FROM ONE IP ADDRESS
# dropping incoming packets to port 22 except if they are coming from 80.0.0.1
iptables -A INPUT -p tcp --dport 22 -s 80.0.0.1 -j ACCEPT
# it's possible to specify port using service name (/etc/services)
iptables -A INPUT -p tcp --dport ssh -s 80.0.0.1 -j ACCEPT

# dropping all other ssh traffic
iptables -A INPUT -p tcp --dport 22 -j DROP

# allowing DNS Queries
iptables -A OUTPUT -p udp --dport 53 -j ACCEPT
iptables -A INPUT -p udp --sport 53 -j ACCEPT

### FILTER BY PROTOCOL (-p) ###

# dropping incoming GRE traffic
# (GRE is a tunneling technology that defines how to encapsulate data packets of one network protocol with another network protocol)
iptables -A INPUT -p gre -j DROP

# allowing outgoing ICMP traffic
iptables -A OUTPUT -p icmp -j DROP

### FILTER BY INTERFACE (-i | -o) ###

# allowing loopback interface traffic (always recommended)
iptables -A INPUT -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT

# dropping ssh traffic that's coming on eth0 interface (suppose it's external)
iptables -A INPUT -p tcp --dport 22 -i eth0 -j DROP

# allowing ssh traffic that's coming on eht1 interface (suppose it's internal)
iptables -A INPUT -p tcp --dport 22 -i eth1 -j ACCEPT

# allowing outgoing https traffic via eth1
iptables -A OUTPUT -p tcp --dport 443 -o eth1 -j ACCEPT

#* Commands - Negating Matches
# dropping all incoming ssh traffic accepting packets from 100.0.0.1 (management station)
iptables -A INPUT -p tcp --dport 22 ! -s 100.0.0.1 -j DROP

# dropping all outgoing https traffic excepting to www.linux.com
iptables -A OUTPUT -p tcp --dport 443 ! -d www.linux.com -j DROP

# dropping all communication excepting that with the default gateway (mac is b4:6d:83:77:85:f4)
iptables -A INPUT -m mac ! --mac-source b4:6d:83:77:85:f4 -j DROP

iptables -P INPUT ACCEPT

#* Commands - Match by TCP Flags
# dropping all incoming tcp packets that have syn set
iptables -A INPUT -p tcp --syn -j DROP

# logging outgoing traffic that has syn and ack set
iptables -A OUTPUT -p tcp --tcp-flags syn,ack,rst,fin syn,ack -j LOG
