function dvim
    echo $argv
    alacritty -e nvim $argv &; disown
end