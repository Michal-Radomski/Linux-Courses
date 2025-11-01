#- Script - ACCEPT and DROP Targets

#!/bin/bash

#flushing the filter table of all chains
iptables -F

# ACCEPT target is terminating one. If the packet is accepted, no other rule will evaluate the packet
# ACCEPTing incoming ssh packets (port tcp/22) from any IP address
iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# DROP any other tcp packets
iptables -A INPUT -p tcp -j DROP

# DROP is a terminating target. If a packet was dropped by the last rule, no other rule will evaluate the packet

# the next rule will never be evaluated. No packet will be matched against it.
iptables -A INPUT -p tcp --dport 80 -j ACCEPT

#- Commands - Nmap
##** SCAN ONLY YOUR OWN HOSTS AND SERVERS !!! **##
## Scanning Networks is your own responsibility ##

# Syn Scan - Half Open Scanning (root only)
nmap -sS 192.168.0.1

# Connect Scan
nmap -sT 192.168.0.1

# Scanning all ports (0-65535)
nmap -p- 192.168.0.1

# Specifying the ports to scan
nmap -p 20,22-100,443,1000-2000 192.168.0.1

# Scan Version
nmap -p 22,80 -sV 192.168.0.1

# Ping scanning (entire Network)
nmap -sP 192.168.0.0/24

# Excluding an IP
nmap -sS 192.168.0.0/24 --exclude 192.168.0.10

# Saving the scanning report to a file
nmap -oN output.txt 192.168.0.1

# OS Detection
nmap -O 192.168.0.1

# https://nmap.org/book/performance-timing-templates.html

#* Timing Templates (-T) paranoid|sneaky|polite|normal|aggressive|insane (Set a timing template)
# These templates allow the user to specify how aggressive they wish to be, while leaving Nmap to pick the exact
# timing values. The templates also make some minor speed adjustments for which fine-grained control options do
# not currently exist.

# # -A OS and service detection with faster execution
# nmap -A -T aggressive cloudflare.com

#- Script - REJECT and LOG Targets
#!/bin/bash

iptables -F

## See all REJECT packets: iptables -j REJECT --help

# logging the first packet (tcp syn set) of any incoming ssh connection
# use the prefix: ###ssh:
iptables -A INPUT -p tcp --syn --dport 22 -j LOG --log-prefix="##ssh:" --log-level info

# Then reject any incoming ssh packet and send back a tcp-reset to the source
iptables -A INPUT -p tcp --dport 22 -j REJECT --reject-with tcp-reset

# logging only 10 incoming ICMP ping packets per minute
iptables -A INPUT -p icmp --icmp-type echo-request -m limit --limit 10/minute -j LOG --log-prefix="ping probe:"

# reject all incoming ICMP ping packets that are not coming from 10.0.0.1 (management station)
iptables -A INPUT ! -s 10.0.0.1 -p icmp --icmp-type echo-request -j REJECT --reject-with admin-prohib
