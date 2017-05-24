source $HOME/.pshu/pshu.cfg

# Start an xserver if startx_on_login is set to 1 in pshu.cfg
if [[ $startx_on_login -eq 1 ]]; then
    if ! xset q &>/dev/null; then
        exec startx -- vt1 &> /dev/null
    fi
fi
