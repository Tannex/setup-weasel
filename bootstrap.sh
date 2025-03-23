#!/bin/bash
sudo apt update && sudo apt upgrade -y && sudo apt install ansible -y

ansible-pull -U https://github.com/Tannex/setup-weasel.git --ask-become-pass