if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# read bashrc for export
for i in (cat ~/.bashrc | grep "^export" | sed -r 's/export (.*)=/set -x \1 /'); eval $i; end

alias ls='exa'
alias tlmgr='/usr/share/texmf-dist/scripts/texlive/tlmgr.pl --usermode'


abbr -a -U spm sudo pacman

abbr -a -U gc git commit
abbr -a -U ga git add
abbr -a -U gst git status
abbr -a -U gco git checkout
abbr -a -U glo git log --oneline
abbr -a -U glog git log --oneline --graph
abbr -a -U gsh git stash

abbr -a -U nv nvim
abbr -a -U ! fuck
abbr -a -U pev pipenv
abbr -a -U srn sudo reboot n
abbr -a -U llh ls -lh

set -g pure_color_git_branch (set_color brblue)

# set -x EDITOR code
# set -x BROWSER firefox-developer-edition

set -x CONFIG ~/Project/config
set -x PIPENV_VENV_IN_PROJECT 1

set -x PATH ~/.local/bin $PATH

set -x PATH ~/Android/Sdk/platform-tools $PATH
# set -x PATH ~/.nimble/bin $PATH
# set -x PATH /home/rid9/rakudo/install/bin /home/rid9/rakudo/install/share/perl6/site/bin $PATH

set -x GOPATH ~/go

direnv hook fish | source
hub alias -s | source
source /opt/asdf-vm/asdf.fish

source $CONFIG/fish/secret.fish

set -x MANPATH /usr/share/man $MANPATH