cat > /etc/dnsmasq.conf << '__EOF__'
# Reverse DNS record for master
host-record=$SERVER_MASTER_DOMAIN,$PRIMARY_INTERNAL_IP
# Wildcard DNS for OpenShift Applications - Points to Router
address=/$SERVER_APPS_DOMAIN/$PRIMARY_INTERNAL_IP

# Forward .local queries to SkyDNS
server=/local/127.0.0.1#8053
# Forward reverse queries for service network to SkyDNS.
# This is for default OpenShift SDN - change as needed.
server=/17.30.172.in-addr.arpa/127.0.0.1#8053

# If open to the internet prevent from becoming an open resolver
# Do not read /etc/resolv.conf and forward requests
# to nameservers listed there:
no-resolv
# Never forward plain names (without a dot or domain part)
domain-needed
# Never forward addresses in the non-routed address spaces.
bogus-priv
__EOF__