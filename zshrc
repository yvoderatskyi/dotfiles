# User-local tools and the canonical mise/Homebrew package prefixes.
export PATH="$HOME/bin:$HOME/.local/bin:/opt/homebrew/bin:/home/linuxbrew/.linuxbrew/bin:/usr/local/bin:$PATH"

if command -v brew >/dev/null 2>&1; then
  eval "$(brew shellenv)"
fi

if command -v mise >/dev/null 2>&1; then
  eval "$(mise activate zsh)"
fi

if [[ -r "$HOME/.cargo/env" ]]; then
  source "$HOME/.cargo/env"
fi

export PATH="$HOME/.openfang/bin:$PATH"

if [[ -r "$HOME/.openclaw/completions/openclaw.zsh" ]]; then
  source "$HOME/.openclaw/completions/openclaw.zsh"
fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

if command -v brew >/dev/null 2>&1 && brew --prefix zplug >/dev/null 2>&1; then
  export ZPLUG_HOME="$(brew --prefix zplug)"
elif [[ -r /opt/homebrew/opt/zplug/init.zsh ]]; then
  export ZPLUG_HOME="/opt/homebrew/opt/zplug"
elif [[ -r /home/linuxbrew/.linuxbrew/opt/zplug/init.zsh ]]; then
  export ZPLUG_HOME="/home/linuxbrew/.linuxbrew/opt/zplug"
fi

if [[ -n "$ZPLUG_HOME" && -r "$ZPLUG_HOME/init.zsh" ]]; then
  source "$ZPLUG_HOME/init.zsh"
fi

if [[ -r "$ZSH/oh-my-zsh.sh" ]]; then
  source "$ZSH/oh-my-zsh.sh"
fi


if command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
fi

if command -v bat >/dev/null 2>&1; then
  alias cat="bat"
fi

if command -v thefuck >/dev/null 2>&1; then
  eval "$(thefuck --alias)"
fi

if command -v just >/dev/null 2>&1; then
  eval "$(just --completions zsh)"
fi

if command -v colima >/dev/null 2>&1; then
  export COLIMA_HOME="$HOME/.colima"
  export DOCKER_HOST="unix://${COLIMA_HOME}/default/docker.sock"
  eval "$(colima completion zsh)"
fi
