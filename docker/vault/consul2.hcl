server     = false
node_name  = "consul-client-02"
datacenter = "dc1"

data_dir    = "/vault/data/consul/data"
bind_addr   = "172.16.12.126"
client_addr = "127.0.0.1"
retry_join  = ["172.16.12.21", "172.16.12.111", "172.16.12.115"]

log_level = "debug"
