# Paths
typeset -U path PATH
path=(
  "$HOME/bin"
  "$HOME/.local/bin"
  "$HOME/.openfang/bin"
  /opt/homebrew/bin
  /home/linuxbrew/.linuxbrew/bin
  /usr/local/bin
  $path
)
export PATH

if (( $+commands[brew] )); then
  eval "$(brew shellenv)"
fi

if (( $+commands[mise] )); then
  eval "$(mise activate zsh)"
fi

# Additional environments and completions
if [[ -r "$HOME/.cargo/env" ]]; then
  source "$HOME/.cargo/env"
fi

if [[ -r "$HOME/.openclaw/completions/openclaw.zsh" ]]; then
  source "$HOME/.openclaw/completions/openclaw.zsh"
fi

# Shell framework and plugins
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

if (( $+commands[brew] )); then
  ZPLUG_HOME="$(brew --prefix zplug 2>/dev/null)"
elif [[ -r /opt/homebrew/opt/zplug/init.zsh ]]; then
  ZPLUG_HOME=/opt/homebrew/opt/zplug
elif [[ -r /home/linuxbrew/.linuxbrew/opt/zplug/init.zsh ]]; then
  ZPLUG_HOME=/home/linuxbrew/.linuxbrew/opt/zplug
fi

if [[ -n ${ZPLUG_HOME:-} && -r "$ZPLUG_HOME/init.zsh" ]]; then
  export ZPLUG_HOME
  source "$ZPLUG_HOME/init.zsh"
fi

if [[ -r "$ZSH/oh-my-zsh.sh" ]]; then
  source "$ZSH/oh-my-zsh.sh"
fi

# Prompt and navigation
if (( $+commands[starship] )); then
  eval "$(starship init zsh)"
fi

if (( $+commands[zoxide] )); then
  eval "$(zoxide init zsh)"
fi

# Aliases and completions
if (( $+commands[bat] )); then
  alias cat="bat"
fi

if (( $+commands[thefuck] )); then
  eval "$(thefuck --alias)"
fi

if (( $+commands[just] )); then
  eval "$(just --completions zsh)"
fi

# Containers
if (( $+commands[colima] )); then
  export COLIMA_HOME="$HOME/.colima"
  export DOCKER_HOST="unix://${COLIMA_HOME}/default/docker.sock"
  eval "$(colima completion zsh)"
fi
