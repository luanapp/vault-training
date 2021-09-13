#!/usr/bin/env bash

# Install vault
apt install -y curl unzip
curl -fsSL https://releases.hashicorp.com/vault/1.8.2/vault_1.8.2_linux_amd64.zip > vault.zip
unzip vault.zip
mv vault /usr/local/bin
rm -rf vault.zip

# Copy configuration files
mkdir /etc/vault
cp config.hcl /etc/vault 

useradd -r vault
chown -Rv vault:vault /etc/vault
chown vault:vault /usr/local/bin/vault 

# Create service
cp vault.service /etc/systemd/system/
systemctl enable vault.service
systemctl start vault

vault -autocomplete-install
