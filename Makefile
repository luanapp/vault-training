start-dev:
	vault server -dev -dev-listen-address=0.0.0.0:8200 -dev-root-token-id=giropops

enable-kv-secret:
	vault secrets enable -path $(path) -version=2 kv

kv-get:
	vault kv get $(path)

enable-userpass-auth:
	vault auth enable -path=$(path) userpass

write-policy:
	vault policy write $(name) $(policy)

create-user:
	vault write auth/linuxtips_users/users/$(user) password=teste policies=$(policies)

login-userpass:
	vault login -method=userpass -path=$(path) username=$(user) password=teste

