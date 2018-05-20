#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export GPG_TTY=$(tty)

# Bash completions
source /usr/share/git/completion/git-completion.bash

# Python virtualenvwrapper
#source virtualenvwrapper.sh

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

# Pandocker
function pandocker() {
  sudo docker run --rm -v $(pwd):/code luanguimaraesla/pandocker:0.3.0 $@
}
# TEP
function cmp() {
	CPP_FILE=$1
	BIN_FILE="prog"
	g++ $CPP_FILE -o $BIN_FILE -Wshadow -Wall -fsanitize=address -std=c++11
}

alias xclipsc='xclip -select c'
