server     = true
node_name  = "consul-02"
datacenter = "dc1"
data_dir   = "/consul/data"

bind_addr        = "0.0.0.0"
client_addr      = "0.0.0.0"
advertise_addr   = "172.16.12.111"
bootstrap_expect = 2
retry_join       = ["172.16.12.21", "172.16.12.111"]

ui_config = {
  enabled = true
}

log_level = "debug"