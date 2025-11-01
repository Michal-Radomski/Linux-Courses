#!/bin/bash

#* ipset in depth
# Creating a new set called myset of type iphash (hash:ip) -> -N or create
# Another useful type is nethash or hash:net
# -exist -> no error if it already exists
ipset -N myset iphash -exist

# Adding IPs to the set (-A or add)

ipset -A myset 1.2.3.4
ipset add myset 4.3.2.1
ipset -A myset 3.2.1.4
ipset -A myset 3.2.1.4 -exist # -exist -> no error if the entry already exists in the set

# Reference the set in a match specification of iptables
# DROP on source
iptables -A INPUT -m set --match-set myset src -j DROP

# Listing set entries (-L or list)
ipset list     # => lists all sets with all entries
ipset -L myset # => lists only that set
ipset -L -n    # => lists only the set names

# Deleting an entry from a set (-D or del)
ipset -D myset 1.2.3.4
ipset del myset 4.3.2.1

# Flushing all entries from a set or from all sets (-F or flush)
ipset -F myset # => flushing all entries from myset
ipset -F       # => flushing all entries from all sets

# Setting the maximal number of elements which can be stored in a set (default value: 65535)
ipset create myset1 hash:ip maxelem 2048

# Destroying a set (-X or destroy)
ipset destroy myset
ipset -X # => destroying all sets

# Note: a set cannot be destroyed while there is a single reference pointing to it.

#* Clear the Running Firewall
# This script completely flushes ipset and iptables rules and reset to an open firewall state.

echo "Setting ACCEPT policy on all iptables chains."
iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT

echo "Flushing all iptables tables."
iptables -t filter -F
iptables -t raw -F
iptables -t nat -F
iptables -t mangle -F
iptables -X

echo "Flushing and destroying all ip sets."
ipset -F
ipset -X

#* Script - Block all IPs and Networks From File
#!/bin/bash

echo "### BLOCKING ALL IPs AND NETWORKS FROM FILE."

# a file called bad_hosts.txt exists in the same directory with the script and
# contains IPs and Networks, one per line like:
# 11.0.0.16
# 8.8.8.8
# 1.2.3.4
# 192.0.0.0/16

# File that contains the IPs and Nets to block
FILE="bad_hosts.txt"

# Creating a new set
ipset -N bad_hosts iphash -exist

# Flushing the set if it exists
ipset -F bad_hosts

echo "Adding IPs from $FILE to bad_hosts set:"
for ip in $(cat $FILE); do
  ipset -A bad_hosts $ip
  echo -n "$ip "
done

# Flush iptables if you run this script more than once to avoid duplicate rules
# iptables -F

# Adding the iptables rule that references the set and drops all ips and nets
echo -e -n "\nDropping with iptables... "
iptables -I INPUT -m set --match-set bad_hosts src -j DROP
echo "Done"

#* Script - Blocking Countries (eg China)
#!/bin/bash

echo "### BLOCKING CHINA ###"

# Check if the file exists (in the current directory) and if yes, remove it
if [ -f "cn-aggregated.zone" ]; then
  rm cn-aggregated.zone
fi

# Download the aggregate zone file for China
wget http://www.ipdeny.com/ipblocks/data/aggregated/cn-aggregated.zone

# Check if there was an error
if [ $? -eq 0 ]; then
  echo "Download Finished!"
else
  echo "Download Failed! Exiting ..."
  exit 1

fi

# Creating a new set called china of type hash:net (nethash)
ipset -N china hash:net -exist

# Flushing the set
ipset -F china

# Iterate over the Networks from the file and add them to the set
echo "Adding Networks to set..."
for i in $(cat cn-aggregated.zone); do
  ipset -A china $i
done

# Adding a rule that references the set and drops based on source IP address
echo -n "Blocking CN with iptables ... "
iptables -I INPUT -m set --match-set china src -j DROP
echo "Done"
