#!/bin/bash

RESOLV_CONF="/etc/resolv.conf"

if [ ! -w "$RESOLV_CONF" ]; then
  echo "Error: Unable to access DNS configuration file. Please check the requir>
  exit 1
fi

echo "nameserver 178.22.122.100" > $RESOLV_CONF
echo "nameserver 185.51.200.2" >> $RESOLV_CONF

echo "DNS settings updated successfully"
