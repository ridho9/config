# Load alias
export CONFIG_DIR=~/Project/config
[[ -r $CONFIG_DIR/alias.zsh ]] && source $CONFIG_DIR/alias.zsh || print "missing alias.zsh"

### Added by Zplugin's installer
source '/home/rid9/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk

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
promptinit

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
path+=~/.local/bin

# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=("fg=default")

# zplugin snippet https://raw.githubusercontent.com/jackharrisonsherlock/common/master/common.zsh-theme
zplugin ice pick"async.zsh" src"pure.zsh"
zplugin light sindresorhus/pure

zplugin ice blockf
zplugin light zsh-users/zsh-completions
zplugin light zsh-users/zsh-autosuggestions
zplugin light supercrabtree/k

zplugin light zdharma/fast-syntax-highlighting
zplugin light zsh-users/zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

compinit
