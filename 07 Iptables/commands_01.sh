#!/bin/bash

iptables -L -vn
iptables -L
iptables -Lvn

iptables -F
iptables -t nat -F

iptables -A INPUT -p icmp --icmp-type echo-request -j DROP
iptables -A OUTPUT -p icmp --icmp-type echo-reply -j DROP

# -A -> appends a rule at the end of the CHAIN
iptables -A OUTPUT -p tcp --dport 443 -j DROP

# -I -> inserts a rule on top (1st position) of the CHAIN
iptables -I OUTPUT -p tcp --dport 443 -d www.linux.com -j ACCEPT

# -F -> flushes the CHAIN
iptables -t filter -F OUTPUT

# -Z -> zeroises the packet and byte counters
iptables -t filter -Z

# -D -> deletes a rule
iptables -D OUTPUT 2

# -P -> sets the default POLICY
iptables -P INPUT ACCEPT

# -N -> creates a user-defined CHAIN
iptables -N TCP_TRAFFIC

# -X -> delete a user-defined CHAIN
iptables -X TCP_TRAFFIC

# listing the filter table of all chains (INPUT, OUTPUT and FORWARD)
iptables -t filter -L

# listing the filter table (it's default) of all chains, verbose (v) and in numeric format (n)
iptables -vnL

# listing just a chain
iptables -vnL INPUT

# listing another table, not filter
iptables -t nat -vnL

# listing just a CHAIN
iptables -t nat -vnL POSTROUTING

# By default POLICY is ACCEPT on all CHAINS
#* !!! If there is no rule that accepts packets and the policy is set to drop, all traffic will be dropped.
# Change the default policy with caution!

# Setting the DROP Policy on FORWARD chain
iptables -P FORWARD DROP

# Setting the ACCEPT Policy on OUTPUT chain
iptables -P OUTPUT ACCEPT

# Setting the DROP Policy on INPUT chain
iptables -P INPUT DROP
