[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

ba=~/.bash_aliases
if [ -f $ba ]; then
  . $ba
fi

if command -v brew > /dev/null 2>&1; then
  [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
else
  autojump_sh=/usr/share/autojump/autojump.sh
  if [ -f $autojump_sh ]; then
    . $autojump_sh
  fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
  export PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ]; then
  export PATH="$HOME/.local/bin:$PATH"
fi

# Brew's bins
if [ -d "/usr/local/sbin" ]; then
  export PATH="/usr/local/sbin:$PATH"
fi

type -P vex &>/dev/null && eval "$(vex --shell-config bash)"

# added by Pew
source $(pew shell_config)

liquid=~/git/github.liquidprompt/liquidprompt
if [ -f $liquid ]; then
  . $liquid
fi
