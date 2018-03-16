export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PATH="$HOME/.local/bin:/opt/llvm/bin:$PATH"

eval $(dircolors -b $HOME/.didrod-dotfile-packages/dircolors-solarized/dircolors.ansi-dark)
alias vim=nvim
