#!/bin/bash

# flushing the firewall
iptables -F

# defining a variable that contains the allowed MAC addresses
PERMITTED_MACS="08:00:27:15:b2:ec 08:00:27:15:b2:df 08:00:27:15:b2:ab"

# this host can communicate only with other hosts inside our LAN that have
# a MAC address from this list
# !!! to be able to communicate outside the LAN (e.g. Internet) the MAC
# of the router internal interface should also be allowed
for MAC in $PERMITTED_MACS; do
  iptables -A INPUT -m mac --mac-source $MAC -j ACCEPT
  echo "$MAC permitted"
done

# set POLICY to DROP on INPUT (all other packets are dropped)
iptables -P INPUT DROP

#* ----
##** MATCH BY DATE AND TIME **##

## See the help: iptables -m time --help

# flushing the filter table
iptables -F

# !!!!! TIME is UTC and not system time

# accepting incoming tcp port 22 (ssh) packets daily ONLY between 8:00-18:00
iptables -A INPUT -p tcp --dport 22 -m time --timestart 8:00 --timestop 18:00 -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j DROP

# accepting forwarded traffic (this is the Router) to www.ubuntu.com on workdays between 18:00-08:00
iptables -A FORWARD -p tcp --dport 80 -d www.ubuntu.com -m time --weekdays Mon,Tue,Wed,Thu,Fri \
  --timestart 18:00 --timestop 8:00 -j ACCEPT

# packets to www.ubuntu.com are dropped between 8:00 - 18:00 (working hours)
iptables -A FORWARD -p tcp --dport 80 -d www.ubuntu.com -j DROP
