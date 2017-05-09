# Only init if installed.
fasd_cache="$HOME/.fasd-init-bash"
if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
    eval "$(fasd --init posix-alias zsh-hook zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install)" >| "$fasd_cache"
fi
source "$fasd_cache"
unset fasd_cache

# Jump to recently used items
alias fa='fasd -a'          # Any
alias fs='fasd -si'         # Show / search / select
alias fd='fasd -d'          # Directory
alias ff='fasd -f'          # File
alias z='fasd_cd -d'        # Change directory
alias zz='fasd_cd -d -i'    # Interactive change directory
