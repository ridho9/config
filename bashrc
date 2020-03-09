#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export BROWSER=firefox
export EDITOR=code

if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]]
then
	exec fish
fi

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
