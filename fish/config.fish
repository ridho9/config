if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# read bashrc for export
for i in (cat ~/.bashrc | grep "^export" | sed -r 's/export (.*)=/set -x \1 /'); eval $i; end

abbr -a -U spm sudo pacman
abbr -a -U gc git commit
abbr -a -U ga git add
abbr -a -U gst git status
abbr -a -U gco git checkout
abbr -a -U nv nvim
abbr -a -U ! fuck
abbr -a -U pev pipenv

set -g pure_color_git_branch (set_color brblue)

set -x EDITOR code
set -x BROWSER firefox
set -x N_PREFIX ~/n

set -x CONFIG ~/Project/config
set -x PIPENV_VENV_IN_PROJECT 1

set -x PATH ~/.yarn/bin ~/n/bin ~/.local/bin $PATH

set -x PATH /home/rid9/perl5/bin $PATH ^/dev/null
set -q PERL5LIB; and set -x PERL5LIB /home/rid9/perl5/lib/perl5:$PERL5LIB
set -q PERL5LIB; or set -x PERL5LIB /home/rid9/perl5/lib/perl5
set -q PERL_LOCAL_LIB_ROOT; and set -x PERL_LOCAL_LIB_ROOT /home/rid9/perl5:$PERL_LOCAL_LIB_ROOT
set -q PERL_LOCAL_LIB_ROOT; or set -x PERL_LOCAL_LIB_ROOT /home/rid9/perl5
set -x PERL_MB_OPT '--install_base "/home/rid9/perl5"'
set -x PERL_MM_OPT INSTALL_BASE=/home/rid9/perl5

direnv hook fish | source

# opam configuration
source /home/rid9/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
