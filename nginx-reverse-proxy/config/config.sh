#!/bin/bash
# Using environment variables to set nginx configuration
# Settings for the blog
echo "START UPDATING DEFAULT CONF"
[ -z "${BETOOLS_PORT_3000_TCP_ADDR}" ] && echo "\$BETOOLS_PORT_3000_TCP_ADDR is not set" || sed -i "s/BETOOLS_IP/${BETOOLS_PORT_3000_TCP_ADDR}/" /etc/nginx/conf.d/default.conf
[ -z "${BETOOLS_PORT_3000_TCP_PORT}" ] && echo "\$BETOOLS_PORT_3000_TCP_PORT is not set" || sed -i "s/BETOOLS_PORT/${BETOOLS_PORT_3000_TCP_PORT}/" /etc/nginx/conf.d/default.conf
echo "CHANGED DEFAULT CONF"
cat /etc/nginx/conf.d/default.conf
echo "END UPDATING DEFAULT CONF"
