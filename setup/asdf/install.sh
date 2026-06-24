#!/usr/bin/env bash

set -euo pipefail

echo "Install curl and git"
sudo apt install -y curl git

echo "Install go"

curl -L https://go.dev/dl/go1.26.4.linux-amd64.tar.gz -o /tmp/go.tar.gz

sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf /tmp/go.tar.gz


export PATH=$PATH:/usr/local/go/bin

go version

echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc

echo "Install asdf"

go install github.com/asdf-vm/asdf/cmd/asdf@v0.19.0

export PATH=$PATH:$HOME/go/bin

echo 'export PATH=$PATH:$HOME/go/bin' >> ~/.bashrc

asdf
