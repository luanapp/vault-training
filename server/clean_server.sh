#! /usr/bin/env bash

# Clean service files
rm -rf /var/lib/vault
rm -rf /var/log/vault
rm -rf /etc/vault

# Remove user and group
userdel vault
groupdel vault

# Remove service
systemctl disable vault.service
rm -rf /etc/systemd/system/vault.service
head -n $(expr $(cat ~/.bashrc | wc -l) - 1) ~/.bashrc > ~/.bashrc

