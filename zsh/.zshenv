# Environment variables
if [ -n "$__HM_SESS_VARS_SOURCED" ]; then return; fi
export __HM_SESS_VARS_SOURCED=1

export EDITOR="nvim"
export FLAKE="$HOME/.dotfiles"
export FZF_DEFAULT_OPTS="--color 16"
export GNUPGHOME="$HOME/.gnupg"
export LANG="en_US.UTF-8"
export VISUAL="nvim"
export _ZO_EXCLUDE_DIRS="$HOME/**/.private/**:$HOME/**/.private"
export PATH="$HOME/neovim/bin:/usr/local/go/bin:$HOME/.local/share/pnpm:$HOME/.cargo/bin:$HOME/.deno/bin:/usr/local/bin:$HOME/.local/bin:$HOME/bin${PATH:+:}$PATH"
export SHELL="zsh"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export NVM_DIR="$HOME/.nvm"

export ZDOTDIR=$HOME/.config/zsh

