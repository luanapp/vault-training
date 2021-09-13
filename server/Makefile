setup:
	./setup_server.sh

clean:
	./clean_server.sh

reload-service:
	systemctl enable vault.service
	systemctl start vault

operator-init:
	export VAULT_ADDR='http://127.0.0.1:8200'
	vault operator init
	#vault operator init --keyshares=4 --keythreshold=2

unseal:
	for i in 1 2 3; do \
  		vault operator unseal; \
	done

enable-aws:
	vault secrets enable aws
	vault write aws/config/root access_key=$(AWS_ACCESS_KEY) secret_key=$(AWS_SECRET_ACCESS_KEY) region=$(AWS_REGION)

add-aws-role:
	vault write aws/roles/my-role credential_type=iam_user policy_document=@ec2_policy_example_vault.json

read-aws-credential:
	vault read aws/creds/my-role

enable-ssh:
	vault secrets enable ssh # must install vault-ssh-helper in the host too

add-ssh-otp:
	vault write ssh/roles/otp_key_role key_type=otp default_user=ubuntu cidr_list=0.0.0.0/0

read-ssh-otp:
	vault read ssh/creds/otp_key_role
