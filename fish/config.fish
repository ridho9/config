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

set -g pure_color_git_branch (set_color brblue)

set -x EDITOR nvim
set -x BROWSER firefox
set -x N_PREFIX ~/n

set -x PATH ~/.yarn/bin ~/n/bin ~/.local/bin $PATH
