# Read from the terminal config
source $HOME/.pshu/config/term.cfg

if [ $term == "tmux-256color" ]; then
    # Use 256 Colour xterm if term allows
    if [ -e /usr/share/terminfo/t/tmux-256color ]; then
        export TERM='tmux-256color'
    else
        # Try to download the terminfo
        echo "Did not find tmux-256color. Need sudo to install..."
        sudo curl https://mikopits.github.io/public/tmux-256color -o /usr/share/terminfo/t/tmux-256color
        if [ -e /usr/share/terminfo/t/tmux-256color ]; then
            export TERM='tmux-256color'
        else
            # Failed to get the terminfo, fall back to xterm
            if [ -e /usr/share/terminfo/x/xterm-256color ]; then
                export TERM='xterm-256color'
            else
                export TERM='xterm-color'
            fi
        fi
    fi
else
    # Default to xterm
    if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
    else
        export TERM='xterm-color'
    fi
fi

# Prioritize tmux if term allows tmux
# Configure base16 for shell
BASE16_SHELL=$HOME/.pshu/config/base16-shell
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# Choose a base16 theme
BASE16_THEME='oceanicnext'
source "$BASE16_SHELL/scripts/base16-$BASE16_THEME.sh"
