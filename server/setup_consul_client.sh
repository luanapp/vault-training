
#!/usr/bin/env bash

# Install consul
apt update && apt install -y curl
culr -fsSL https://releases.hashicorp.com/consul/1.10.2/consul_1.10.2_linux_amd64.zip > consul.zip
unzip consul.zip
mv consul /usr/local/consul
rm -rf consul.zip

# Copy configuration files
mkdir /etc/consul
cp consul.json /etc/consul

useradd -r consul
chown -R consul:consul /etc/consul
chown consul:consul /usr/local/bin/consul

# Create service
cp consul.service /etc/systemd/system/
systemctl enable consul.service
systemctl start consul
