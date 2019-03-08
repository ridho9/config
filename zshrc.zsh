# Load alias
export CONFIG_DIR=~/Project/config
[[ -r $CONFIG_DIR/alias.zsh ]] && source $CONFIG_DIR/alias.zsh || print "missing alias.zsh"

# Set options
setopt autocd
setopt cdablevars
setopt promptsubst

# History Setting
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Vi is great
bindkey -v

zstyle :compinstall filename '/home/rid9/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit

# Completion
zstyle ':completion:*' menu select

# Better history
# Credits to https://coderwall.com/p/jpj_6q/zsh-better-history-searching-with-arrow-keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

### Added by Zplugin's installer
source '/home/rid9/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk
	
export EDITOR=nvim
export BROWSER=firefox
export N_PREFIX=~/n
export PRJ=~/Project

bindkey  "^[[3~"   delete-char
bindkey  "^[[7~"   beginning-of-line
bindkey  "^[[8~"   end-of-line

typeset -U path
path+=~/.yarn/bin
path+=~/n/bin
