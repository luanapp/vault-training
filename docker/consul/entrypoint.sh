#!/bin/bash

set -ex

/usr/local/bin/consul agent -config-file=/consul/consul.hcl -pid-file=/consul/data/consul.pid
