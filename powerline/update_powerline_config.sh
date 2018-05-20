#! /bin/bash
configuration_path="$HOME/.config/powerline/"
configuration_file="config.json"
mkdir -p $configuration_path
cp $configuration_file $configuration_path
powerline-daemon --replace 
echo "Configuration updated."
