fish_vi_key_bindings

set -x BAT_THEME 'ansi'  # 'Monokai Extended Origin'
set -x GPG_TTY (tty)

set fish_complete_path "$HOME/git/github.fish-pip-completion" $fish_complete_path

# pyenv init
if command -v pyenv 1>/dev/null 2>&1
    status is-login; and pyenv init --path | source
    pyenv init - | source
end

alias vi='nvim'
alias view='nvim -R'
alias vim='nvim'
alias vimdiff='nvim -d'

starship init fish | source
