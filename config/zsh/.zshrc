typeset -U path cdpath fpath manpath

# Use viins keymap as the default.
bindkey -v

export ZPLUG_HOME="$HOME/.zplug"

source ~/.zplug/init.zsh

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "jeffreytse/zsh-vi-mode"
zplug "zdharma-continuum/fast-syntax-highlighting"

if ! zplug check; then
  zplug install
fi

zplug load

# History options should be set in .zshrc and after oh-my-zsh sourcing.
ZSH_AUTOSUGGEST_STRATEGY=("history" "completion")
HISTSIZE="1000000000"
SAVEHIST="1000000000"


# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi


alias -- bat='catbat'
alias -- cat='bat --color always --plain'
alias -- distro='cat /etc/*-release | awk -F'\''='\'' '\''/DISTRIB_ID/ {print $2}'\'''
alias -- docker_clean='docker builder prune -a --force'
alias -- docker_clean_images='docker rmi $(docker images -a --filter=dangling=true -q)'
alias -- docker_clean_ps='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'
alias -- du=dust
alias -- edot='cd /home/omareloui/.dotfiles && nvim .'
alias -- hb='nh home build'
alias -- hgen='home-manager generations'
alias -- hm=home-manager
alias -- hs='nh home switch'
alias -- l=eza
alias -- la='eza -l --no-time --icons --sort=type --no-quotes --git -a'
alias -- lg=lazygit
alias -- ll='eza -agl --icons --sort=type --no-quotes --git --links'
alias -- lla='eza -la'
alias -- lll='eza -aglo --icons --sort=type --no-quotes --git --git-repos-no-status --links'
alias -- ls='eza -l --no-time --icons --sort=type --no-quotes --git'
alias -- lt='eza --icons --sort=type --tree --level 5'
alias -- nb='nh os build'
alias -- ngc='nix-collect-garbage -d && sudo nix-collect-garbage -d'
alias -- ngen='sudo nix-env --list-generations --profile /nix/var/nix/profiles/system'
alias -- nix='noglob nix'
alias -- ns='nh os switch'
alias -- nu='cd /home/omareloui/.dotfiles && nix flake update'
alias -- pnpx='pnpm dlx'

# alias -- python3='python3.12'
# alias -- pip3='pip3.12'
alias -- pip='pip'
alias -- python='python3'
alias -- py='python3'
alias -- pva='source ./env/bin/activate'
alias -- pve='python3 -m venv ./env'

alias -- zj=zellij


. "$HOME/.cargo/env"
. "$NVM_DIR/nvm.sh"

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
eval "$(zellij setup --generate-auto-start zsh)"
eval "$(pyenv init - bash)"
eval "$(pyenv virtualenv-init -)"
