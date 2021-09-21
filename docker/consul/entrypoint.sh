#!/bin/bash

set -ex

/usr/local/bin/consul agent -config-file=/consul/consul.json -pid-file=/consul/data/consul.pid
