#storage "file" {
#  path    = "/var/lib/vault/data"
#}

storage "consul" {
  address    = "127.0.0.1:8500"
}

listener "tcp" {
  address         = "0.0.0.0:8200"
  cluster_address = "172.16.12.12:8201"
  tls_disable     = 1
}

ui       = true
api_addr = "http:0.0.0.0:8200"

cluster_name  = "Giropops"
disable_mlock = true
disable_cache = true
pid_file      = "/vault/data/vault.pid"
