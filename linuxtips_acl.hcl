path "linuxtips/data/treinamentos/+/plataforma" {
  capabilities = ["read", "update", "create", "delete"]
}

path "linuxtips/*" {
  capabilities = ["list"]
}
