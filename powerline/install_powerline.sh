#! /bin/bash

sudo apt-get install powerline

wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf

# Not necessary in Debian 9
#wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

# Move symbol font to valid X font path
# You can run `xset q` to list all valid font paths
mv PowerlineSymbols.otf ~/.fonts/

# Update the font cache
fc-cache -vf ~/.fonts/

# Install the font config file
# Not necessary in Debian 9
#sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d

cat - >> ~/.bashrc << EOT
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh
EOT
