#http://stackoverflow.com/questions/13322485/how-to-i-get-the-primary-ip-address-of-the-local-machine-on-linux-and-os-x
INTERNAL_IP_LIST=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')
export INTERNAL_IP_LIST
INTERNAL_IP_ARRAY=(${INTERNAL_IP_LIST[@]})
PRIMARY_INTERNAL_IP=${INTERNAL_IP_ARRAY[0]}
export PRIMARY_INTERNAL_IP
