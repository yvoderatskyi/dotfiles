# antigen - plugin manager

# [[file:zsh.org::*antigen - plugin manager][antigen - plugin manager:1]]
case "$OSTYPE" in
    linux*)
        source /usr/share/zsh/share/antigen.zsh
        ;;
    darwin*)
        source /usr/local/share/antigen/antigen.zsh
        ;;
esac
# antigen - plugin manager:1 ends here

# oh-my-zsh

# [[file:zsh.org::*oh-my-zsh][oh-my-zsh:1]]
export ZSH="${HOME}/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
antigen use oh-my-zsh
# oh-my-zsh:1 ends here

# customization

# [[file:zsh.org::*customization][customization:1]]
# Hide username
DEFAULT_USER=$USER

export LANG=en_US.UTF-8

export PATH="/usr/local/sbin:$PATH"
# customization:1 ends here

# Iterm2 integration                                               :mac_only:


# [[file:zsh.org::*Iterm2 integration][Iterm2 integration:1]]
[ -f ~/.iterm2_shell_integration ] && source ~/.iterm2_shell_integration.zsh
antigen bundle iterm2
# Iterm2 integration:1 ends here

# Google Cloud SDK                                                 :mac_only:


# [[file:zsh.org::*Google Cloud SDK][Google Cloud SDK:1]]
[ -f /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc ] &&  source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
[ -f /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc ] && source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
antigen bundle gcloud
# Google Cloud SDK:1 ends here

# fzf - fuzzy finder

# [[file:zsh.org::*fzf - fuzzy finder][fzf - fuzzy finder:1]]
case "$OSTYPE" in
    linux*)
        [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
        [ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
        [ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
        ;;
esac
# fzf - fuzzy finder:1 ends here

# autojump - fast navigation in filesystem

# [[file:zsh.org::*autojump - fast navigation in filesystem][autojump - fast navigation in filesystem:1]]
[ -f /usr/local/etc/profile.d/autojump.sh ] && source /usr/local/etc/profile.d/autojump.sh
[ -f /etc/profile.d/autojump.sh ] && source /etc/profile.d/autojump.sh
antigen bundle wting/autojump
# autojump - fast navigation in filesystem:1 ends here

# plugins for python

# [[file:zsh.org::*plugins for python][plugins for python:1]]
antigen bundle pip
antigen bundle django
antigen bundle virtualenvwrapper
# plugins for python:1 ends here

# plugins misc

# [[file:zsh.org::*plugins misc][plugins misc:1]]
antigen bundle git
antigen bundle vi-mode
antigen bundle chrissicool/zsh-256color
antigen bundle dotenv
antigen bundle docker
antigen bundle httpie
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zpm-zsh/colors
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle common-aliases
antigen bundle molovo/tipz
# plugins misc:1 ends here

# theme - [[https://draculatheme.com/zsh][dracula]]

# [[file:zsh.org::*theme - \[\[https:/draculatheme.com/zsh\]\[dracula\]\]][theme - [[https://draculatheme.com/zsh][dracula]]:1]]
antigen theme dracula/zsh
# theme - [[https://draculatheme.com/zsh][dracula]]:1 ends here

# antigen apply changes

# [[file:zsh.org::*antigen apply changes][antigen apply changes:1]]
antigen apply
# antigen apply changes:1 ends here
