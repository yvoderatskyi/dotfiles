# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH


{{#if (is_executable "flox")}}
# flox - environment manager
flox activate -d ~/
{{/if}}

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

{{#if (is_executable "zplug")}}
# zplug - zsh plugin manager
export ZPLUG_HOME=$HOMEBREW_PREFIX/opt/zplug
source $ZPLUG_HOME/init.zsh
{{/if}}

# ohmyzsh
source $ZSH/oh-my-zsh.sh


{{#if dotter.packages.starship}}
# starship - shell prompt
eval "$(starship init zsh)"
{{/if}}


{{#if dotter.packages.homebrew}}
# homebrew - mac package manager
eval "$(/opt/homebrew/bin/brew shellenv)"
{{/if}}


{{#if (is_executable "bat")}}
# bat - better cat
alias cat="bat"
{{/if}}


{{#if (is_executable "thefuck")}}
# thefuck - corrects command line errors
eval $(thefuck --alias)
{{/if}}


{{#if (is_executable "just")}}
# just - better Makefile
eval $(just --completions zsh)
{{/if}}


{{#if (is_executable "colima")}}
# colima - docker for Mac
export COLIMA_HOME=~/.colima
export DOCKER_HOST="unix://${COLIMA_HOME}/default/docker.sock"
eval $(colima completion zsh)
{{/if}}
