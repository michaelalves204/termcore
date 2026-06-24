sudo apt update

echo "Install Dependencies"

sudo apt install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm-dev libdb-dev

echo "Add Plugin asdf"

asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git

asdf install ruby 4.0.5

asdf set -u ruby 4.0.5

echo 'export ASDF_DATA_DIR="$HOME/.asdf"' >> ~/.bashrc
echo 'export PATH="$ASDF_DATA_DIR/shims:$PATH"' >> ~/.bashrc

source ~/.bashrc

ruby --version
