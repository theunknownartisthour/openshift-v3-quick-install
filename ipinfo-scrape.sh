SERVER_EXTERNAL_IP_ADDRESS=$(wget http://ipinfo.io/ip -qO -)
export SERVER_EXTERNAL_IP_ADDRESS
export SERVER_APPS_DOMAIN=apps.$SERVER_EXTERNAL_IP_ADDRESS.xip.io
export SERVER_MASTER_DOMAIN=$SERVER_EXTERNAL_IP_ADDRESS.xip.io