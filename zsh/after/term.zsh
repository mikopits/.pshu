source $HOME/.pshu/pshu.cfg

if [[ ! -d /usr/share/terminfo/t ]]; then
    # Make the t directory if it does not exist
    sudo mkdir /usr/share/terminfo/t
fi

if [[ $term == "tmux-256color" ]]; then
    # Use 256 Colour xterm if term allows
    if [ -e /usr/share/terminfo/t/tmux-256color ]; then
        export TERM='tmux-256color'
    else
        # Try to download the terminfo
        echo -e "[\[33mpshu\e[0m] Require sudo to install tmux-256color terminfo"
        sudo curl https://mikopits.github.io/public/tmux-256color -o /usr/share/terminfo/t/tmux-256color
        sudo chmod 755 /usr/share/terminfo/t/tmux-256color
        if [ -e /usr/share/terminfo/t/tmux-256color ]; then
            export TERM='tmux-256color'
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

# Configure base16 for shell
source "$HOME/.pshu/zsh/base16-shell/base16-shell.plugin.zsh"

# Choose a base16 theme
source "$HOME/.pshu/zsh/base16-shell/scripts/base16-$base16_theme.sh"

if [[ $prompt == "pure" ]]; then
    # Add symlinks for pure in $fpath
    fpath=( "$HOME/.pshu/zsh" $fpath )
    ln -sfn $HOME/.pshu/zsh/pure/pure.zsh $HOME/.pshu/zsh/prompt_pure_setup
    ln -sfn $HOME/.pshu/zsh/pure/async.zsh $HOME/.pshu/zsh/async
fi

# Load a zsh prompt
autoload -U promptinit; promptinit
prompt $prompt

# Load zsh syntax highlighting. Load this last of all zsh plugins.
source $HOME/.pshu/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Automatically start tmux
[[ $- != *i* ]] && return
[[ $tmux_on_login -eq 1 ]] && [[ -z "$TMUX" ]] && exec tmux
