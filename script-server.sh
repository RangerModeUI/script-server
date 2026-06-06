#!/bin/bash

PACKAGES=(
sudo
htop
mc
vim
btop
fail2ban
curl
git
openssh-client
ufw
)

sudo apt update && sudo apt upgrade -y
sudo apt install -y "${PACKAGES[@]}"
