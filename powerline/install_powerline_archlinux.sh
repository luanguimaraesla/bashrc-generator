#! /bin/bash

sudo pacman -S powerline
sudo pacman -S powerline-fonts
cat - >> ~/.bashrc << EOT

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh
EOT

# Do it manually for Archlinux
#. ./update_powerline_config.sh
