#!/bin/bash

PACKAGES=(
sudo
htop
mc
btop
fastfetch
fail2ban
curl
git
openssh-client
ufw
sshd-client
)

sudo apt update && sudo apt upgrade -y
sudo apt install -y "${PACKAGES[@]}"
