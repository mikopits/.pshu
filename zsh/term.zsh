# Use 256 Colour xterm if term allows
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
else
    export TERM='xterm-color'
fi

# Prioritize tmux if term allows tmux
if [ -e /usr/share/terminfo/t/tmux-256color ]; then
    export TERM='tmux-256color'
else
    export TERM='tmux-color'
fi

# Configure base16 for shell
BASE16_SHELL=$HOME/.pshu/config/base16-shell
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# Choose a base16 theme
BASE16_THEME='oceanicnext'
source "$BASE16_SHELL/scripts/base16-$BASE16_THEME.sh"
