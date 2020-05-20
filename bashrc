#
# ~/.bashrc
#

source /opt/asdf-vm/asdf.sh

export BROWSER=firefox
export EDITOR=code

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]]
then
	exec fish
fi

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
