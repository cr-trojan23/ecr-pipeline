#!/bin/bash

yum install gcc openssl-devel bzip2-devel libffi-devel wget tar xz make cmake unzip gzip -y
wget https://www.python.org/ftp/python/3.9.13/Python-3.9.13.tar.xz
tar xf Python-3.9.13.tar.xz
cd Python-3.9.13
./configure --enable-optimizations
make altinstall
cd ..
echo "[INFO] Python 3.9 Installed Successfully"

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install 16
nvm use 16
echo "[INFO] Nodejs 16:latest Installed Successfully"

wget https://releases.hashicorp.com/terraform/1.2.3/terraform_1.2.3_linux_amd64.zip
unzip terraform_1.2.3_linux_amd64.zip
mv terraform /usr/local/bin/
echo "[INFO] Terraform 1.2.3 Installed Successfully"

wget https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip
unzip aws-sam-cli-linux-x86_64.zip -d sam-installation
./sam-installation/install
echo "[INFO] AWS SAM Installed Successfully"

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install
echo "[INFO] AWS CLI Installed Successfully"

rm terraform_1.2.3_linux_amd64.zip awscliv2.zip aws-sam-cli-linux-x86_64.zip 



