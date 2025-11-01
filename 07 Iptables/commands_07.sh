#- Script - NAT and MASQUERADE

#!/bin/bash

# flush the nat table of all chains
iptables -t nat -F

# enable routing process
echo "1" >/proc/sys/net/ipv4/ip_forward

# define rules that match traffic that should be NATed
# we perform NAT for the entire subnetwork
# enp0s3 is the external interface
# 80.0.0.1 is the public & static ip address
iptables -t nat -A POSTROUTING -s 10.0.0.0/24 -o enp0s3 -j SNAT --to-source 80.0.0.1

# if the public IP address is dynamic we use MASQUERADE instead of SNAT
# iptables -t nat -A POSTROUTING -s 10.0.0.0/24 -o enp0s3 -j MASQUERADE

# it's not mandatory to perform NAT for entire subnet. We could perform NAT only for some protocols
# Example: we perform NAT only for TCP
# iptables -t nat -A POSTROUTING -s 10.0.0.0/24 -p tcp -o enp0s3 -j SNAT --to-source 80.0.0.1

# filtering is done on FORWARD CHAIN

#- Script - Port Forwarding (DNAT)
#!/bin/bash

### PORT FORWARDING (DNAT) ###

# Port Forwarding is always done on the PREROUTING chain

# flushing nat filter of PREROUTING chain
iptables -t nat -F PREROUTING

# all the packets coming to the public IP address of the router and port 80
# will be port forwarded to 192.168.0.20 and port 80
iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination 192.168.0.20

## VARIANTS

# 1.redirect port 8080 to port 80
# Internet clients connect to the public IP address of the router and port 8080 and the packets are
# redirected to the private server with 192.168.0.20 and port 80
iptables -t nat -A PREROUTING -p tcp --dport 8080 -j DNAT --to-destination 192.168.0.20:80

#2. Load-Balancing
# On all 5 private servers (192.168.0.20-192.168.0.24)run the same service (e.g. HTTPS)
# The router will pick-up a random private IP from the range and then translate and send (port-forward) the packet to that IP
iptables -t nat -A PREROUTING -p tcp --dport 8080 -j DNAT --to-destination 192.168.0.20-192.168.0.24

#- Script - NAT and Load-Balancing
#!/bin/bash

##** LOAD BALANCE NAT TRAFFIC OVER 2 INTERNET CONNECTIONS WITH DYNAMIC IP ADDRESSES **##

# Traffic that goes over the first connection
# web: 80 443
# email: 25 465 143 993 110 995
# ssh: 22

ISP1="22 25 80 110 143 443 465 993 995"

# flushing nat table and POSTROUTING chain
iptables -t nat -F POSTROUTING

# enable routing
echo "1" >/proc/sys/net/ipv4/ip_forward

for port in $ISP1; do
  iptables -t nat -A POSTROUTING -p tcp --dport $port -o eth1 -j MASQUERADE
done

# Traffic not NATed goes over the 2nd connection
iptables -t nat -A POSTROUTING -o eth2 -j MASQUERADE
