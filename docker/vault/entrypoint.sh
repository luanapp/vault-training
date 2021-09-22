#!/bin/bash

set -ex

/usr/local/bin/consul agent -config-file=/vault/consul.hcl -pid-file=/vault/data/consul.pid &
/usr/local/bin/vault server -config=/vault/config.hcl