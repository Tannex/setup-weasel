#!/bin/bash
sudo apt update && sudo apt upgrade -y && sudo apt install ansible -y

# Setup homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

ansible-galaxy collection install community.general

ansible-pull -U https://github.com/Tannex/setup-weasel.git --ask-become-pass