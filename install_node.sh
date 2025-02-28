#!/bin/bash

# Update sistem
sudo apt update -y

# Instal dependensi yang diperlukan
sudo apt install -y curl

# Unduh dan instal Node Version Manager (nvm)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

# Muat nvm ke sesi shell saat ini
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Instal versi terbaru Node.js
nvm install node

# Verifikasi instalasi
echo "Node.js version: $(node -v)"
echo "npm version: $(npm -v)"


