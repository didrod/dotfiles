export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH="$HOME/.local/bin:$PATH"

eval $(dircolors -b $HOME/.didrod-dotfile-packages/dircolors-solarized/dircolors.ansi-dark)
alias vim=nvim
