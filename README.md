.pshu
=====

Minimal and based on Vim and Zsh. For productivity, not laziness.

Dependencies
------------

* awk (to check tmux version)
* curl (to download tmux-256color terminfo)
* fasd
* zsh

Installation
------------

Back up the following files in your home directory if you don't want to lose
them: `.tmux.conf`, `.vimrc`, `.zshrc`

Use your favourite package manager to get fasd and zsh. Then, clone the
repository into your home directory recursively:

`git clone --recursive https://github.com/mikopits/.pshu ~/.pshu`

Edit `$HOME/.pshu/pshu.cfg` with your preferred settings before you proceed.

Next time you start a zsh the installation will begin.

Use `vimp` to edit your vim plugins, and `vimu` to install them.
If you remove a plugin using `vimp`, then you can use `vimc` to clean up
unused plugins.
