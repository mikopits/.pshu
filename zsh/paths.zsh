# Add ruby gems to $PATH
if [ -e /bin/ruby ]; then
    export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
fi

# Add rust cargo binaries to $PATH
export PATH=$PATH:$HOME/.cargo/bin

# Add go binaries to $PATH
export PATH=$PATH:/usr/local/go/bin

# Set go workspace directory
export GOPATH=$HOME/.go
