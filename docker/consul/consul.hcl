server     = true
node_name  = "consul-01"
datacenter = "dc1"
data_dir   = "/consul/data"

bind_addr        = "0.0.0.0"
client_addr      = "0.0.0.0"
advertise_addr   = "172.16.12.21"
bootstrap_expect = 1
retry_join       = ["172.16.12.21"]

ui_config = {
  enabled = true
}

log_level = "debug"