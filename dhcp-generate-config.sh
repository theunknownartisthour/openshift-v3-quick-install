cat >> /etc/dhcp/dhclient.conf << '__EOF__'
prepend domain-name-servers $PRIMARY_INTERNAL_IP;
__EOF__
