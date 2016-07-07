cat >> /etc/dhcp/dhclient.conf << '__EOF__'
prepend domain-name-servers 192.168.1.100;
__EOF__
