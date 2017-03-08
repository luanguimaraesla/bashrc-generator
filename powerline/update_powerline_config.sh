#! /bin/bash
configuration_path="/usr/share/powerline/config_files/config.json"
sudo cp config.json $configuration_path
sudo chown root:root $configuration_path
echo "Configuration updated."
source ~/.bashrc
