#!/usr/bin/env bash

set -e

if ! command -v ruby >/dev/null 2>&1; then
    bash setup/asdf/install.sh
    bash setup/ruby/install.sh
else
    echo "Ruby already installed $(ruby --version)"
fi

if ! command -v docker >/dev/null 2>&1; then
    bash setup/docker/install.sh
else
    echo "Docker already installed $(docker --version)"
fi

# Install gems
bundle install

# Add termcore commands
sudo ln -s "$(pwd)/bin/termcore" /usr/local/bin/termcore
