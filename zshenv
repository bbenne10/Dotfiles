# if you're here looking for $PATH, you're in the wrong spot. Check ~/.zprofile
# (long story short: Arch devs won't properly support ~/.zshenv)

export LANG=en_US.UTF-8
export EDITOR='emacsclient -t'

export _Z_DATA="$HOME/.config/z"

export HISTSIZE=2000
export SAVEHIST=$HISTSIZE

export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2

export FZF_DEFAULT_OPTS='--height 40% --reverse'

if [ -f ${HOME}/.termcap ]; then
  export TERMCAP=$(< ${HOME}/.termcap)
fi

export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# Colored man support
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;38;5;74m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[38;5;246m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[04;38;5;146m'

export PUSHOVER_USER_KEY='uC8SZXDa3BzBf29fqBdLvjgvZrXGpH'
export PUSHOVER_REMIND_KEY='aN1zELwYfHsSaDXx5u8B1tCDSnyFQD'
