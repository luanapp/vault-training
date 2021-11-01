#!/bin/bash

set -ex

ulimit -c 0

if [ -n "$CONSUL_CONFIG" ]; then
  echo $CONSUL_CONFIG > /vault/consul.hcl
fi

if [ -n "$VAULT_CONFIG" ]; then
  echo $VAULT_CONFIG > /vault/config.hcl 
fi

if [ -z "$CONSUL_INTERFACE_IP" ]; then 
  CONSUL_INTERFACE_IP=eth0
fi

BIND_IP=$(ip addr show dev eth0 | egrep "inet " | awk '{print $2}' | awk -F "/" '{print $1}')


/usr/local/bin/consul agent -config-file=/vault/consul.hcl -client 127.0.0.1 -bind $BIND_IP &
/usr/local/bin/vault server -config=/vault/config.hcl
