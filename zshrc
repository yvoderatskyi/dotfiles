# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

{{#if (is_executable "flox")}}
flox activate -d ~/
{{/if}}

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# ZPLUG
{{#if (is_executable "zplug")}}
export ZPLUG_HOME=$HOMEBREW_PREFIX/opt/zplug
source $ZPLUG_HOME/init.zsh
{{/if}}

# OH-MY-ZSH
source $ZSH/oh-my-zsh.sh

{{#if dotter.packages.starship}}
eval "$(starship init zsh)"
{{/if}}

{{#if dotter.packages.homebrew}}
eval "$(/opt/homebrew/bin/brew shellenv)"
{{/if}}
