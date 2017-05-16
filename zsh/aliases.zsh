# Shortcut to the dotfile root
pshu=$HOME/.pshu

# Edit and reload aliases
alias ae='vim $pshu/zsh/aliases.zsh'
alias ar='source $pshu/zsh/aliases.zsh'

# Change directory to configuration files
alias conf='cd $pshu/conf'
alias rules='cd $pshu/rules'

# Show color-coded ls by default
alias ls='ls --color=auto'

# Return to last directory
alias cdb='cd $OLDPWD'
alias ...='cd ../..'
alias ....='cd ../../..'

# Extra fasd aliases
alias v='fasd -f -e vim'    # Quick opening files with vim

# Install/Update/Clean Vim plugins
alias vimu='vim +PluginInstall +qall'
alias vimc='vim +PluginClean +qall'
alias vimp='vim $pshu/vim/vundles/plugins.vundle'

# Rust Cargo shortcuts
alias crun='RUST_BACKTRACE=1 cargo run'
alias cbuild='RUST_BACKTRACE=1 cargo build'
alias ctest='RUST_BACKTRACE=1 cargo test'

# xsel shortcuts
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
