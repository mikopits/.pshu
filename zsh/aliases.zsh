# Edit this file to contain any aliases you want.

# Shortcut to the dotfile root
pshu=$HOME/.pshu

# Edit and reload aliases
alias ae='vim $pshu/zsh/aliases.zsh'
alias ar='source $pshu/zsh/aliases.zsh'

# Show color-coded ls by default
alias ls='ls --color=auto'
alias la='ls -la'

# Return to last directory
alias cdb='cd $OLDPWD'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Override rm -i alias which makes rm prompt for every action
alias rm='nocorrect rm'

# Extra fasd aliases
alias v='fasd -f -e vim'    # Quick opening files with vim

# Install/Update/Clean Vim plugins
alias vimu='vim +PluginInstall +qall'
alias vimc='vim +PluginClean +qall'
alias vimp='vim $pshu/vim/vundles/plugins.vim'

# Rust Cargo shortcuts
alias crun='RUST_BACKTRACE=1 cargo run'
alias cbuild='RUST_BACKTRACE=1 cargo build'
alias ctest='RUST_BACKTRACE=1 cargo test'

# xsel shortcuts
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

# Vim-like exit
alias :q='exit'

# Attach a tmux session
alias ta='tmux attach -t'

# Open i3 config in vim
alias i3conf='vim ~/.config/i3/config'

# Shortcuts
alias ahagon='cd $HOME/repos/ahagon && RUST_LOG=debug RUST_BACKTRACE=1 cargo run'
